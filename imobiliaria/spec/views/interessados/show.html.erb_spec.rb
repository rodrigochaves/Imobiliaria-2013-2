require 'spec_helper'

describe "interessados/show" do
  before(:each) do
    @interessado = assign(:interessado, stub_model(Interessado,
      :nome => "Nome",
      :login => "Login",
      :senha => "Senha",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Login/)
    rendered.should match(/Senha/)
    rendered.should match(/Email/)
  end
end
