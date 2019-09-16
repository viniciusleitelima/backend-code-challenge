require 'rails_helper'

RSpec.describe "ships/new", type: :view do
  before(:each) do
    assign(:ship, Ship.new(
      :origem => "MyString",
      :destino => "MyString",
      :peso => "MyString"
    ))
  end

  it "renders new ship form" do
    render

    assert_select "form[action=?][method=?]", ships_path, "post" do

      assert_select "input[name=?]", "ship[origem]"

      assert_select "input[name=?]", "ship[destino]"

      assert_select "input[name=?]", "ship[peso]"
    end
  end
end
