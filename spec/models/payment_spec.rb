require "rails_helper"

describe Payment do
  it "interprets amount as cents in USD" do
    payment = Payment.new(amount: 100, currency: "USD")
    expect(payment.amount.cents).to eq(100)
  end

  it "interprets amount as cents in JPY" do
    payment = Payment.new(amount: 100, currency: "JPY")
    expect(payment.amount.cents).to eq(100)
  end
end
