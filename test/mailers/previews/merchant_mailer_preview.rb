# Preview all emails at http://localhost:3000/rails/mailers/merchant_mailer
class MerchantMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/merchant_mailer/thank_you
  def thank_you
    merchant = Merchant.first
    MerchantMailer.with(merchant: merchant).thank_you
  end

  # Preview this email at http://localhost:3000/rails/mailers/merchant_mailer/request
  def request
    MerchantMailer.request
  end

end
