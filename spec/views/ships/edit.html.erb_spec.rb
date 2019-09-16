require 'rails_helper'

RSpec.describe "ships/edit", type: :view do
  before(:each) do
    @ship = assign(:ship, Ship.create!(
      :origem => "MyString",
      :destino => "MyString",
      :peso => "MyString"
    ))
  end

  it "renders the edit ship form" do
    render

    assert_select "form[action=?][method=?]", ship_path(@ship), "post" do

      assert_select "input[name=?]", "ship[origem]"

      assert_select "input[name=?]", "ship[destino]"

      assert_select "input[name=?]", "ship[peso]"
    end
  end
end
