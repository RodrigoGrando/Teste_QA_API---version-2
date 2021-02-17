require "httparty"
require "factory_bot"

require_relative "massas_de_teste/endereco"

require_relative "services/busca_cep"


Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

RSpec.configure do |config|

  config.expect_with :rspec do |expectations|

    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include FactoryBot::Syntax::Methods
end
