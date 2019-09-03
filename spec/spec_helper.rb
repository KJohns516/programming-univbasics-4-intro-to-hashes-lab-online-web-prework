require 'yaml'
rubies = YAML.load(File.read(File.join(__dir__, '..', '.travis.yml')))['rvm']
  latest_mri = rubies.select { |v| v =~ /\A\d+\.\d+.\d+\z/ }.max

RSpec.configure do |config|
 config.expect_with :rspec do |expectations|
  def __
    # raise "replace underscore with code"
  end

end
