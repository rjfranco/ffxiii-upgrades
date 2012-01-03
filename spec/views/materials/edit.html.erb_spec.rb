require 'spec_helper'

describe "materials/edit.html.erb" do
  before(:each) do
    @material = assign(:material, stub_model(Material,
      :name => "MyString",
      :buy => 1,
      :sell => 1,
      :store => "MyString",
      :exp => 1,
      :multiplier => 1
    ))
  end

  it "renders the edit material form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => materials_path(@material), :method => "post" do
      assert_select "input#material_name", :name => "material[name]"
      assert_select "input#material_buy", :name => "material[buy]"
      assert_select "input#material_sell", :name => "material[sell]"
      assert_select "input#material_store", :name => "material[store]"
      assert_select "input#material_exp", :name => "material[exp]"
      assert_select "input#material_multiplier", :name => "material[multiplier]"
    end
  end
end
