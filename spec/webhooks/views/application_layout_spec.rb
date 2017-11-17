require "spec_helper"

describe Webhooks::Views::ApplicationLayout do
  let(:layout)   { Webhooks::Views::ApplicationLayout.new(template, {}) }
  let(:rendered) { layout.render }
  let(:template) { Hanami::View::Template.new('apps/webhooks/templates/application.html.erb') }

  it 'contains application name' do
    rendered.must_include('Webhooks')
  end
end
