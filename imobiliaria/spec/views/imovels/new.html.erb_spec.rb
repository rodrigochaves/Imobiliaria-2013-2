require 'spec_helper'

describe "imovels/new" do
  before(:each) do
    assign(:imovel, stub_model(Imovel,
      :codigo => "MyString",
      :modo => "MyString",
      :tipo => "MyString",
      :preco => "MyString",
      :endereco => "MyString",
      :dono => nil
    ).as_new_record)
  end

  it "renders new imovel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", imovels_path, "post" do
      assert_select "input#imovel_codigo[name=?]", "imovel[codigo]"
      assert_select "input#imovel_modo[name=?]", "imovel[modo]"
      assert_select "input#imovel_tipo[name=?]", "imovel[tipo]"
      assert_select "input#imovel_preco[name=?]", "imovel[preco]"
      assert_select "input#imovel_endereco[name=?]", "imovel[endereco]"
      assert_select "input#imovel_dono[name=?]", "imovel[dono]"
    end
  end
end
