require 'spec_helper'

describe "donos/edit" do
  before(:each) do
    @dono = assign(:dono, stub_model(Dono,
      :codigo => "MyString",
      :nome => "MyString",
      :login => "MyString",
      :senha => "MyString",
      :email => "MyString",
      :endereco => "MyString",
      :cpf => "MyString"
    ))
  end

  it "renders the edit dono form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", dono_path(@dono), "post" do
      assert_select "input#dono_codigo[name=?]", "dono[codigo]"
      assert_select "input#dono_nome[name=?]", "dono[nome]"
      assert_select "input#dono_login[name=?]", "dono[login]"
      assert_select "input#dono_senha[name=?]", "dono[senha]"
      assert_select "input#dono_email[name=?]", "dono[email]"
      assert_select "input#dono_endereco[name=?]", "dono[endereco]"
      assert_select "input#dono_cpf[name=?]", "dono[cpf]"
    end
  end
end
