RSpec.configure do |config|
  # Allow only the new expect syntax
  config.expect_with :rspec do |specs|
    specs.syntax = :expect
    specs.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  # Config rspec-mocks to only stub methods that exist in the original object
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  # Use only the recommended sytanx
  config.disable_monkey_patching!

  # Allow more verbose output when running an individual spec file
  if config.files_to_run.one?
    config.default_formatter = "doc"
  end

  # Print the 10 slowest examples and example groups
  config.profile_examples = 10

  # Run specs in random order to surface order dependencies
  config.order = :random
end
