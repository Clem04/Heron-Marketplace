# Preview all emails at http://localhost:3000/rails/mailers/merchant_mailer
class MerchantMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/merchant_mailer/thank_you
  def thank_you
    merchant = Merchant.last
    MerchantMailer.thank_you(merchant)
  end

  # Preview this email at http://localhost:3000/rails/mailers/merchant_mailer/request
  def merchant_request
    post = Post.first
    MerchantMailer.merchant_request(post)
  end

end
