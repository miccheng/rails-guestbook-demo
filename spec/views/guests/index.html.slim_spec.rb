require 'rails_helper'

RSpec.describe "guests/index", type: :view do
  before(:each) do
    assign(:guests, [
      Guest.create!(
        :name => "Name",
        :email => "Email",
        :comments => "MyText",
        :publish => false
      ),
      Guest.create!(
        :name => "Name",
        :email => "Email",
        :comments => "MyText",
        :publish => false
      )
    ])
  end

  it "renders a list of guests" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
