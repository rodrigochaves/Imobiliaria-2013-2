require 'spec_helper'

describe "interessados/index" do
  before(:each) do
    assign(:interessados, [
      stub_model(Interessado,
        :nome => "Nome",
        :login => "Login",
        :senha => "Senha",
        :email => "Email"
      ),
      stub_model(Interessado,
        :nome => "Nome",
        :login => "Login",
        :senha => "Senha",
        :email => "Email"
      )
    ])
  end

  it "renders a list of interessados" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Login".to_s, :count => 2
    assert_select "tr>td", :text => "Senha".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
