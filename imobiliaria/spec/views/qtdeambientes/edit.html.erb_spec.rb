require 'spec_helper'

describe "qtdeambientes/edit" do
  before(:each) do
    @qtdeambiente = assign(:qtdeambiente, stub_model(Qtdeambiente,
      :qtde => 1
    ))
  end

  it "renders the edit qtdeambiente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", qtdeambiente_path(@qtdeambiente), "post" do
      assert_select "input#qtdeambiente_qtde[name=?]", "qtdeambiente[qtde]"
    end
  end
end
