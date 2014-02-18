require 'spec_helper'

describe "donos/show" do
  before(:each) do
    @dono = assign(:dono, stub_model(Dono,
      :codigo => "Codigo",
      :nome => "Nome",
      :login => "Login",
      :senha => "Senha",
      :email => "Email",
      :endereco => "Endereco",
      :cpf => "Cpf"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Codigo/)
    rendered.should match(/Nome/)
    rendered.should match(/Login/)
    rendered.should match(/Senha/)
    rendered.should match(/Email/)
    rendered.should match(/Endereco/)
    rendered.should match(/Cpf/)
  end
end
