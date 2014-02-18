require 'spec_helper'

describe "qtdeambientes/index" do
  before(:each) do
    assign(:qtdeambientes, [
      stub_model(Qtdeambiente,
        :qtde => 1
      ),
      stub_model(Qtdeambiente,
        :qtde => 1
      )
    ])
  end

  it "renders a list of qtdeambientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
