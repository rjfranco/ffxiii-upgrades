require 'spec_helper'

describe "weapons/edit.html.erb" do
  before(:each) do
    @weapon = assign(:weapon, stub_model(Weapon,
      :name => "MyString",
      :min_level => 1,
      :max_level => 1,
      :max_strength => 1,
      :max_magic => 1,
      :bonus => "MyString",
      :base_exp => 1,
      :increment => 1,
      :buy => 1,
      :sell => 1
    ))
  end

  it "renders the edit weapon form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => weapons_path(@weapon), :method => "post" do
      assert_select "input#weapon_name", :name => "weapon[name]"
      assert_select "input#weapon_min_level", :name => "weapon[min_level]"
      assert_select "input#weapon_max_level", :name => "weapon[max_level]"
      assert_select "input#weapon_max_strength", :name => "weapon[max_strength]"
      assert_select "input#weapon_max_magic", :name => "weapon[max_magic]"
      assert_select "input#weapon_bonus", :name => "weapon[bonus]"
      assert_select "input#weapon_base_exp", :name => "weapon[base_exp]"
      assert_select "input#weapon_increment", :name => "weapon[increment]"
      assert_select "input#weapon_buy", :name => "weapon[buy]"
      assert_select "input#weapon_sell", :name => "weapon[sell]"
    end
  end
end
