require 'rails_helper'

RSpec.describe "portfolios/show", type: :view do
  before(:each) do
    @portfolio = assign(:portfolio, Portfolio.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
