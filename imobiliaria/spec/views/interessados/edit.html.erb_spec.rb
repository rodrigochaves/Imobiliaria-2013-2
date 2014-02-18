require 'spec_helper'

describe "interessados/edit" do
  before(:each) do
    @interessado = assign(:interessado, stub_model(Interessado,
      :nome => "MyString",
      :login => "MyString",
      :senha => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit interessado form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", interessado_path(@interessado), "post" do
      assert_select "input#interessado_nome[name=?]", "interessado[nome]"
      assert_select "input#interessado_login[name=?]", "interessado[login]"
      assert_select "input#interessado_senha[name=?]", "interessado[senha]"
      assert_select "input#interessado_email[name=?]", "interessado[email]"
    end
  end
end
