require 'rails_helper'

RSpec.describe "portfolios/edit", type: :view do
  before(:each) do
    @portfolio = assign(:portfolio, Portfolio.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit portfolio form" do
    render

    assert_select "form[action=?][method=?]", portfolio_path(@portfolio), "post" do

      assert_select "input[name=?]", "portfolio[name]"
    end
  end
end
