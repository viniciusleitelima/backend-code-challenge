require 'rails_helper'

RSpec.describe "ships/show", type: :view do
  before(:each) do
    @ship = assign(:ship, Ship.create!(
      :origem => "Origem",
      :destino => "Destino",
      :peso => "Peso"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Origem/)
    expect(rendered).to match(/Destino/)
    expect(rendered).to match(/Peso/)
  end
end
