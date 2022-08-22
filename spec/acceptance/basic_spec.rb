# frozen_string_literal: true

require 'spec_helper_acceptance'

describe 'foreman_envsync class' do
  include_examples 'the example', 'basic.pp'

  describe file('/bin/foreman_envsync') do
    it { is_expected.to be_file }
    it { is_expected.to be_owned_by 'root' }
    it { is_expected.to be_grouped_into 'root' }
    it { is_expected.to be_mode '755' } # serverspec does not like a leading 0
    its(:content) { is_expected.to match %r{lsstit/foreman_envsync:latest} }
  end
end
