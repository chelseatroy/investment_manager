require 'rails_helper'

RSpec.describe Portfolio, type: :model do
  describe "share_price" do
    it "returns the number of shares multiplied by the company's share price" do
      company = Company.create(share_price: 5.00)
      investments = [Investment.create(number_of_shares: 10, company: company)]

      company = Company.create(share_price: 10.00)
      investments << Investment.create(number_of_shares: 5, company: company)

      company = Company.create(share_price: 2.00)
      investments << Investment.create(number_of_shares: 100, company: company)

      portfolio = Portfolio.create(investments: investments)

      expect(portfolio.value).to eq(300.00)
    end
  end
end