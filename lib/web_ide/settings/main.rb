# frozen_string_literal: true

module WebIde
  module Settings
    class Main
      include Messages
      extend Gitlab::Fp::MessageSupport

      # @param [Hash] context
      # @return [Hash]
      # @raise [Gitlab::Fp::UnmatchedResultError]
      def self.get_settings(context)
        initial_result = Gitlab::Fp::Result.ok(context)

        # The order of the chain determines the precedence of settings. I.e., defaults are
        # overridden by subsequent steps, and any env vars override previous steps.
        result =
          initial_result
            .map(SettingsInitializer.method(:init))
            .map(ExtensionsGalleryMetadataGenerator.method(:generate))
            # NOTE: EnvVarOverrideProcessor is kept as last settings processing step, so it can always be used
            #       to easily overrideany settings for local or temporary testing, but still before all validators.
            .and_then(Gitlab::Fp::Settings::EnvVarOverrideProcessor.method(:process))
            .and_then(ExtensionsGalleryValidator.method(:validate))
            .and_then(ExtensionsGalleryMetadataValidator.method(:validate))
            .map(
              # As the final step, return the settings in a SettingsGetSuccessful message
              ->(context) do
                SettingsGetSuccessful.new(settings: context.fetch(:settings))
              end
            )
        # rubocop:disable Lint/DuplicateBranch -- Rubocop doesn't know the branches are different due to destructuring
        case result
        in { err: SettingsEnvironmentVariableOverrideFailed => message }
          generate_error_response_from_message(message: message, reason: :internal_server_error)
        in { err: SettingsVscodeExtensionsGalleryValidationFailed => message }
          generate_error_response_from_message(message: message, reason: :internal_server_error)
        in { err: SettingsVscodeExtensionsGalleryMetadataValidationFailed => message }
          generate_error_response_from_message(message: message, reason: :internal_server_error)
        in { ok: SettingsGetSuccessful => message }
          { settings: message.content.fetch(:settings), status: :success }
        else
          raise Gitlab::Fp::UnmatchedResultError.new(result: result)
        end
        # rubocop:enable Lint/DuplicateBranch
      end
    end
  end
end
