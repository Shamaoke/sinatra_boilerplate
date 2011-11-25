# encoding: utf-8

require 'spec_helper'

# views
describe 'index' do
  before { get '/' }

  subject { last_response.body }

  it { should have_selector('div[id="result"]', text: 'ok!') }
end
