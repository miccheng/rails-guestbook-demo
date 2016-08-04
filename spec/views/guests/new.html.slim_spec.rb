require 'rails_helper'

RSpec.describe "guests/new", type: :view do
  before(:each) do
    assign(:guest, Guest.new(
      :name => "MyString",
      :email => "MyString",
      :comments => "MyText",
      :publish => false
    ))
  end

  it "renders new guest form" do
    render

    assert_select "form[action=?][method=?]", guests_path, "post" do

      assert_select "input#guest_name[name=?]", "guest[name]"

      assert_select "input#guest_email[name=?]", "guest[email]"

      assert_select "textarea#guest_comments[name=?]", "guest[comments]"

      assert_select "input#guest_publish[name=?]", "guest[publish]"
    end
  end
end
