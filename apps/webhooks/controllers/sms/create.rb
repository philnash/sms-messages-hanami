module Webhooks::Controllers::Sms
  class Create
    include Webhooks::Action

    def call(params)
      @twiml = Twilio::TwiML::MessagingResponse.new
      @twiml.message body: 'Hello from Hanami!'
      self.body = @twiml.to_s
    end
  end
end
