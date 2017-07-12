require "rails_helper"

describe Payment do
  shared_examples_for "cents-based currency converter" do
    it "interprets amount as cents in USD" do
      payment = Payment.new(amount: 100, currency: "USD")
      expect(payment.amount.cents).to eq(100)
    end

    it "interprets amount as cents in JPY" do
      payment = Payment.new(amount: 100, currency: "JPY")
      expect(payment.amount.cents).to eq(100)
    end
  end

  context "default currency is JPY" do
    before do
      Money.default_currency = "JPY"
    end
    it_behaves_like "cents-based currency converter"
  end

  context "default currency is USD" do
    before do
      Money.default_currency = "USD"
    end
    it_behaves_like "cents-based currency converter"
  end
end
