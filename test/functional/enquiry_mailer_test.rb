require 'test_helper'

class EnquiryMailerTest < ActionMailer::TestCase
  test "customer_enquiry" do
    mail = EnquiryMailer.customer_enquiry
    assert_equal "Customer enquiry", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
