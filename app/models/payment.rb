class Payment < ApplicationRecord
  monetize :amount_cents, with_model_currency: :currency
end
