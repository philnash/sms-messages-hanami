# Messages

An example of a Hanami app to receive and respond to incoming SMS messages from [Twilio](https://www.twilio.com).

## Setup

You'll need a Twilio account, [sign up for a free account here](http://twilio.com/try-twilio), and a phone number that can receive SMS messages.

To tunnel internet traffic to your local development server [I recommend ngrok](https://www.twilio.com/blog/2015/09/6-awesome-reasons-to-use-ngrok-when-testing-webhooks.html).

### Getting started

Clone this repository and install the dependencies:

```bash
git clone https://github.com/philnash/sms-messages-hanami.git
cd sms-messages-hanami
bundle install
```

Run the tests:

```
bundle exec rake spec
```

Run the development server:

```
bundle exec hanami server
```

Run ngrok:

```
ngrok http 2300
```

Take the ngrok URL and add the path `/webhooks/sms`. Enter that URL as the messaging webhook for your [Twilio number](https://www.twilio.com/console/phone-numbers/incoming).

Send a message to your number and your application will respond with "Hello from Hanami!".


Explore Hanami [guides](http://hanamirb.org/guides/), [API docs](http://docs.hanamirb.org/docs/1.1.0/), or jump in [chat](http://chat.hanamirb.org) for help. Enjoy! 🌸
