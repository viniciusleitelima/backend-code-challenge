require 'rails_helper'

RSpec.describe "ships/index", type: :view do
  before(:each) do
    assign(:ships, [
      Ship.create!(
        :origem => "Origem",
        :destino => "Destino",
        :peso => "Peso"
      ),
      Ship.create!(
        :origem => "Origem",
        :destino => "Destino",
        :peso => "Peso"
      )
    ])
  end

  it "renders a list of ships" do
    render
    assert_select "tr>td", :text => "Origem".to_s, :count => 2
    assert_select "tr>td", :text => "Destino".to_s, :count => 2
    assert_select "tr>td", :text => "Peso".to_s, :count => 2
  end
end
