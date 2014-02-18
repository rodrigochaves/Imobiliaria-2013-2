require 'spec_helper'

describe "imovels/show" do
  before(:each) do
    @imovel = assign(:imovel, stub_model(Imovel,
      :codigo => "Codigo",
      :modo => "Modo",
      :tipo => "Tipo",
      :preco => "Preco",
      :endereco => "Endereco",
      :dono => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Codigo/)
    rendered.should match(/Modo/)
    rendered.should match(/Tipo/)
    rendered.should match(/Preco/)
    rendered.should match(/Endereco/)
    rendered.should match(//)
  end
end
