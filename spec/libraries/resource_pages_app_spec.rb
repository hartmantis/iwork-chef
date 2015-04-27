# Encoding: UTF-8

require_relative '../spec_helper'
require_relative '../../libraries/resource_pages_app'

describe Chef::Resource::PagesApp do
  let(:name) { 'default' }
  let(:resource) { described_class.new(name, nil) }

  describe '#initialize' do
    it 'sets the correct resource name' do
      exp = :pages_app
      expect(resource.instance_variable_get(:@resource_name)).to eq(exp)
    end
  end

  describe '#app_name' do
    it 'uses the correct app name' do
      expect(resource.app_name).to eq('Pages')
    end
  end

  describe '#bundle_id' do
    it 'uses the correct bundle ID' do
      expect(resource.bundle_id).to eq('com.apple.pkg.Pages5')
    end
  end
end
