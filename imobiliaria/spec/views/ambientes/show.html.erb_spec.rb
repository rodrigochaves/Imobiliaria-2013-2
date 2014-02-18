require 'spec_helper'

describe "ambientes/show" do
  before(:each) do
    @ambiente = assign(:ambiente, stub_model(Ambiente,
      :descricao => "Descricao"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
  end
end
