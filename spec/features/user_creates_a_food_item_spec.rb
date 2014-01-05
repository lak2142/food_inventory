require 'spec_helper'

feature "User creates a food item", %q{
	As a food service employee
	I want to receive inventory
	So that it can be recorded that we have food items
} do

	# Acceptance Criteria:
	# * I must specify a title, description, and quantity of the food item
	# * If I do not specify the required information, I am prompted to fix errors and to resubmit
	# * If I specify the required information, my inventory entry is recorded.

	context "with valid attributes" do

		it "creates a food item with valid attributes" do
			visit '/food_items/new'

			fill_in "Title", with: "Beans"
			fill_in "Description", with: "Bush's Boston baked"
			fill_in "Quantity", with: 3
			click_on "Create Food item"

			expect(page).to have_content "Food item was successfully created"
		end

	end

	context "with invalid attributes" do

		it "sees errors for invalid attributes" do
			visit '/food_items/new'

			click_on "Create Food item"

			expect(page).to have_content "Title can't be blank"
			expect(page).to have_content "Description can't be blank"
			expect(page).to have_content "Quantity can't be blank"
		end
	end
end