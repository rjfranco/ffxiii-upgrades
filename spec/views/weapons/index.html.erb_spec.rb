require 'spec_helper'

describe "weapons/index.html.erb" do
  before(:each) do
    assign(:weapons, [
      stub_model(Weapon,
        :name => "Name",
        :min_level => 1,
        :max_level => 1,
        :max_strength => 1,
        :max_magic => 1,
        :bonus => "Bonus",
        :base_exp => 1,
        :increment => 1,
        :buy => 1,
        :sell => 1
      ),
      stub_model(Weapon,
        :name => "Name",
        :min_level => 1,
        :max_level => 1,
        :max_strength => 1,
        :max_magic => 1,
        :bonus => "Bonus",
        :base_exp => 1,
        :increment => 1,
        :buy => 1,
        :sell => 1
      )
    ])
  end

  it "renders a list of weapons" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Bonus".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
