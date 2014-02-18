require 'spec_helper'

describe "quantidadetipoambientes/show" do
  before(:each) do
    @quantidadetipoambiente = assign(:quantidadetipoambiente, stub_model(Quantidadetipoambiente,
      :quantidade => "Quantidade",
      :interessado => nil,
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
