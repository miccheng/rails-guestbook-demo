require 'rails_helper'

RSpec.describe "guests/show", type: :view do
  before(:each) do
    @guest = assign(:guest, Guest.create!(
      :name => "Name",
      :email => "Email",
      :comments => "MyText",
      :publish => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
