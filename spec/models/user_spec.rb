require 'rails_helper'

describe User do
  let(:blank_values) { [nil, ''] }
  it { should have_valid(:first_name).when('John', 'Sally') }
  it { should_not have_valid(:first_name).when(*blank_values) }

  it { should have_valid(:last_name).when('Smith', "O'Leary") }
  it { should_not have_valid(:last_name).when(*blank_values) }
end
