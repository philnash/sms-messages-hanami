require 'spec_helper'

describe "Webhooks SMS response" do
  include Rack::Test::Methods

  def app
    Hanami.app
  end

  it "is successful" do
    post "/webhooks/sms"

    last_response.must_be :ok?
    twiml = Twilio::TwiML::MessagingResponse.new.message(body: 'Hello from Hanami!')
    last_response.body.must_equal twiml.to_s
    last_response.headers['Content-Type'].must_equal 'application/xml; charset=utf-8'
  end
end
