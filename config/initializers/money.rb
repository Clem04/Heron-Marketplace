Money.locale_backend = :currency

MoneyRails.configure do |config|
  config.default_currency = :cad  # or :gbp, :usd, etc.
  # [...]
end