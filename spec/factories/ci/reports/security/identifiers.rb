# frozen_string_literal: true

FactoryBot.define do
  factory :ci_reports_security_identifier, class: '::Gitlab::Ci::Reports::Security::Identifier' do
    external_id { 'PREDICTABLE_RANDOM' }
    external_type { 'find_sec_bugs_type' }
    name { "#{external_type}-#{external_id}" }

    skip_create

    initialize_with do
      ::Gitlab::Ci::Reports::Security::Identifier.new(**attributes)
    end

    trait :cwe do
      external_id { '259' }
      external_type { 'cwe' }
      name { 'CWE-259' }
      url { 'https://cwe.mitre.org/data/definitions/259.html' }
    end
  end
end
