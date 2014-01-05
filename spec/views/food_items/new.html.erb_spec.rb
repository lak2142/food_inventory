require 'spec_helper'

describe "food_items/new" do
  before(:each) do
    assign(:food_item, stub_model(FoodItem,
      :title => "MyString",
      :description => "MyText",
      :quantity => 1
    ).as_new_record)
  end

  it "renders new food_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", food_items_path, "post" do
      assert_select "input#food_item_title[name=?]", "food_item[title]"
      assert_select "textarea#food_item_description[name=?]", "food_item[description]"
      assert_select "input#food_item_quantity[name=?]", "food_item[quantity]"
    end
  end
end
