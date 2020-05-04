class MerchantMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.merchant_mailer.thank_you.subject
  #
  def thank_you(merchant)
    @merchant = merchant
    mail(to: @merchant.email, subject: 'Thank you for your application to Heron Market')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.merchant_mailer.request.subject
  #
  def merchant_request(post)
    @post = post
    mail(to: 'iphona.paiement@gmail.com', subject: 'Merchant New Request')
  end
end
