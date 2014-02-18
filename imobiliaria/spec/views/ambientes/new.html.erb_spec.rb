require 'spec_helper'

describe "ambientes/new" do
  before(:each) do
    assign(:ambiente, stub_model(Ambiente,
      :descricao => "MyString"
    ).as_new_record)
  end

  it "renders new ambiente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ambientes_path, "post" do
      assert_select "input#ambiente_descricao[name=?]", "ambiente[descricao]"
    end
  end
end
