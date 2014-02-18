require 'spec_helper'

describe "quantidadetipoambientes/index" do
  before(:each) do
    assign(:quantidadetipoambientes, [
      stub_model(Quantidadetipoambiente,
        :quantidade => "Quantidade",
        :interessado => nil,
        :ambiente => nil
      ),
      stub_model(Quantidadetipoambiente,
        :quantidade => "Quantidade",
        :interessado => nil,
        :ambiente => nil
      )
    ])
  end

  it "renders a list of quantidadetipoambientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Quantidade".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
