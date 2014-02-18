require 'spec_helper'

describe "ambientes/edit" do
  before(:each) do
    @ambiente = assign(:ambiente, stub_model(Ambiente,
      :descricao => "MyString"
    ))
  end

  it "renders the edit ambiente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ambiente_path(@ambiente), "post" do
      assert_select "input#ambiente_descricao[name=?]", "ambiente[descricao]"
    end
  end
end
