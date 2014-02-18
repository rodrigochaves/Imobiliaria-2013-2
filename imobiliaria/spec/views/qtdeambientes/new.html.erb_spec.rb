require 'spec_helper'

describe "qtdeambientes/new" do
  before(:each) do
    assign(:qtdeambiente, stub_model(Qtdeambiente,
      :qtde => 1
    ).as_new_record)
  end

  it "renders new qtdeambiente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", qtdeambientes_path, "post" do
      assert_select "input#qtdeambiente_qtde[name=?]", "qtdeambiente[qtde]"
    end
  end
end
