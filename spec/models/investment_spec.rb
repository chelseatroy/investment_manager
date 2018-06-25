require 'rails_helper'

RSpec.describe Investment, type: :model do
  describe "share_price" do
    it "returns the number of shares multiplied by the company's share price" do
      company = Company.create(share_price: 22.00)
      investment = Investment.create(number_of_shares: 10, company: company)

      expect(investment.value).to eq(22.00 * 10)
    end
  end
end
