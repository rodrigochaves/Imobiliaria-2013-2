require 'spec_helper'

describe "quantidadetipoambientes/new" do
  before(:each) do
    assign(:quantidadetipoambiente, stub_model(Quantidadetipoambiente,
      :quantidade => "MyString",
      :interessado => nil,
      :ambiente => nil
    ).as_new_record)
  end

  it "renders new quantidadetipoambiente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", quantidadetipoambientes_path, "post" do
      assert_select "input#quantidadetipoambiente_quantidade[name=?]", "quantidadetipoambiente[quantidade]"
      assert_select "input#quantidadetipoambiente_interessado[name=?]", "quantidadetipoambiente[interessado]"
      assert_select "input#quantidadetipoambiente_ambiente[name=?]", "quantidadetipoambiente[ambiente]"
    end
  end
end
