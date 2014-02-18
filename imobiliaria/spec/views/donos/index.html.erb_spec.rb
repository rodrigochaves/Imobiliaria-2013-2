require 'spec_helper'

describe "donos/index" do
  before(:each) do
    assign(:donos, [
      stub_model(Dono,
        :codigo => "Codigo",
        :nome => "Nome",
        :login => "Login",
        :senha => "Senha",
        :email => "Email",
        :endereco => "Endereco",
        :cpf => "Cpf"
      ),
      stub_model(Dono,
        :codigo => "Codigo",
        :nome => "Nome",
        :login => "Login",
        :senha => "Senha",
        :email => "Email",
        :endereco => "Endereco",
        :cpf => "Cpf"
      )
    ])
  end

  it "renders a list of donos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Codigo".to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Login".to_s, :count => 2
    assert_select "tr>td", :text => "Senha".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
  end
end
