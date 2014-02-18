require 'spec_helper'

describe "quantidadeambientes/new" do
  before(:each) do
    assign(:quantidadeambiente, stub_model(Quantidadeambiente,
      :quantidade => "MyString",
      :imovel => nil,
      :ambiente => nil
    ).as_new_record)
  end

  it "renders new quantidadeambiente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", quantidadeambientes_path, "post" do
      assert_select "input#quantidadeambiente_quantidade[name=?]", "quantidadeambiente[quantidade]"
      assert_select "input#quantidadeambiente_imovel[name=?]", "quantidadeambiente[imovel]"
      assert_select "input#quantidadeambiente_ambiente[name=?]", "quantidadeambiente[ambiente]"
    end
  end
end
