require 'spec_helper'

describe "imovels/edit" do
  before(:each) do
    @imovel = assign(:imovel, stub_model(Imovel,
      :codigo => "MyString",
      :modo => "MyString",
      :tipo => "MyString",
      :preco => "MyString",
      :endereco => "MyString",
      :dono => nil
    ))
  end

  it "renders the edit imovel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", imovel_path(@imovel), "post" do
      assert_select "input#imovel_codigo[name=?]", "imovel[codigo]"
      assert_select "input#imovel_modo[name=?]", "imovel[modo]"
      assert_select "input#imovel_tipo[name=?]", "imovel[tipo]"
      assert_select "input#imovel_preco[name=?]", "imovel[preco]"
      assert_select "input#imovel_endereco[name=?]", "imovel[endereco]"
      assert_select "input#imovel_dono[name=?]", "imovel[dono]"
    end
  end
end
