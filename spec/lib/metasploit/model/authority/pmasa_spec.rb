require 'spec_helper'

describe Metasploit::Model::Authority::Pmasa do
  context 'designation_url' do
    subject(:designation_url) do
      described_class.designation_url(designation)
    end

    let(:designation) do
      FactoryGirl.generate :metasploit_model_reference_pmasa_designation
    end

    it 'should be under bid directory' do
      designation_url.should == "http://www.phpmyadmin.net/home_page/security/PMASA-#{designation}.php"
    end
  end
end