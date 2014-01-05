require 'spec_helper'

describe "food_items/show" do
  before(:each) do
    @food_item = assign(:food_item, stub_model(FoodItem,
      :title => "Title",
      :description => "MyText",
      :quantity => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
