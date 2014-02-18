require 'spec_helper'

describe "interessados/new" do
  before(:each) do
    assign(:interessado, stub_model(Interessado,
      :nome => "MyString",
      :login => "MyString",
      :senha => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new interessado form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", interessados_path, "post" do
      assert_select "input#interessado_nome[name=?]", "interessado[nome]"
      assert_select "input#interessado_login[name=?]", "interessado[login]"
      assert_select "input#interessado_senha[name=?]", "interessado[senha]"
      assert_select "input#interessado_email[name=?]", "interessado[email]"
    end
  end
end
