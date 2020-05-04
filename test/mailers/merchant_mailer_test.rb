require 'test_helper'

class MerchantMailerTest < ActionMailer::TestCase
  test "thank_you" do
    mail = MerchantMailer.thank_you
    assert_equal "Thank you", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "request" do
    mail = MerchantMailer.request
    assert_equal "Request", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
