require 'spec_helper'

describe "food_items/index" do
  before(:each) do
    assign(:food_items, [
      stub_model(FoodItem,
        :title => "Title",
        :description => "MyText",
        :quantity => 1
      ),
      stub_model(FoodItem,
        :title => "Title",
        :description => "MyText",
        :quantity => 1
      )
    ])
  end

  it "renders a list of food_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
