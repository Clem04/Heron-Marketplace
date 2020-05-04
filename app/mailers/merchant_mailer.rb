class MerchantMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.merchant_mailer.thank_you.subject
  #
  def thank_you
    @merchant = params[:merchant]
    mail(to: @merchant.email, subject: 'Thank for your application to Heron Market')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.merchant_mailer.request.subject
  #
  def request
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
