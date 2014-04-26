class EnquiryMailer < ActionMailer::Base
  default from: "my-design.co.uk"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_mailer.customer_enquiry.subject
  #
  def customer_enquiry(user_name, user_email_address,user_meesage)
    @customer_name = user_name.titleize
    @user_message = user_meesage


    mail to: "kdcp999@gmail.com", subject: "Customer Enuiry for My-Design"
  end
end
