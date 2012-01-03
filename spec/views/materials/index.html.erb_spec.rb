require 'spec_helper'

describe "materials/index.html.erb" do
  before(:each) do
    assign(:materials, [
      stub_model(Material,
        :name => "Name",
        :buy => 1,
        :sell => 1,
        :store => "Store",
        :exp => 1,
        :multiplier => 1
      ),
      stub_model(Material,
        :name => "Name",
        :buy => 1,
        :sell => 1,
        :store => "Store",
        :exp => 1,
        :multiplier => 1
      )
    ])
  end

  it "renders a list of materials" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Store".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
