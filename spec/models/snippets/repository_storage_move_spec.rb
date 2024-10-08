# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Snippets::RepositoryStorageMove, type: :model, feature_category: :source_code_management do
  it_behaves_like 'handles repository moves' do
    let_it_be_with_refind(:container) { create(:project_snippet) }

    let(:repository_storage_factory_key) { :snippet_repository_storage_move }
    let(:error_key) { :snippet }
    let(:repository_storage_worker) { Snippets::UpdateRepositoryStorageWorker }
  end
end
