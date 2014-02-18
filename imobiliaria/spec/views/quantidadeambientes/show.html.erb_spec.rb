require 'spec_helper'

describe "quantidadeambientes/show" do
  before(:each) do
    @quantidadeambiente = assign(:quantidadeambiente, stub_model(Quantidadeambiente,
      :quantidade => "Quantidade",
      :imovel => nil,
      :ambiente => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Quantidade/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
