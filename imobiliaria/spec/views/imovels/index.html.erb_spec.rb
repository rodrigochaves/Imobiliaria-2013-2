require 'spec_helper'

describe "imovels/index" do
  before(:each) do
    assign(:imovels, [
      stub_model(Imovel,
        :codigo => "Codigo",
        :modo => "Modo",
        :tipo => "Tipo",
        :preco => "Preco",
        :endereco => "Endereco",
        :dono => nil
      ),
      stub_model(Imovel,
        :codigo => "Codigo",
        :modo => "Modo",
        :tipo => "Tipo",
        :preco => "Preco",
        :endereco => "Endereco",
        :dono => nil
      )
    ])
  end

  it "renders a list of imovels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Codigo".to_s, :count => 2
    assert_select "tr>td", :text => "Modo".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => "Preco".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
