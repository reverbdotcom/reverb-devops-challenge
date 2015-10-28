require 'spec_helper'

# Make sure ruby is installed
describe command('which ruby') do
  its(:exit_status) { should eq 0 }
end

describe service('redis-server') do
  it { should be_enabled }
  it { should be_running }
end
