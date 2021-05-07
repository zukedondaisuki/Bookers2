require 'test_helper'

class ThanksMailerTest < ActionMailer::TestCase
  test "send_when_signup" do
    mail = ThanksMailer.send_when_signup
    assert_equal "Send when signup", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
