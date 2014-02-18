require 'spec_helper'

describe "quantidadeambientes/index" do
  before(:each) do
    assign(:quantidadeambientes, [
      stub_model(Quantidadeambiente,
        :quantidade => "Quantidade",
        :imovel => nil,
        :ambiente => nil
      ),
      stub_model(Quantidadeambiente,
        :quantidade => "Quantidade",
        :imovel => nil,
        :ambiente => nil
      )
    ])
  end

  it "renders a list of quantidadeambientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Quantidade".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
