require 'spec_helper'

describe "characters/edit.html.erb" do
  before(:each) do
    @character = assign(:character, stub_model(Character,
      :name => "MyString"
    ))
  end

  it "renders the edit character form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => characters_path(@character), :method => "post" do
      assert_select "input#character_name", :name => "character[name]"
    end
  end
end
