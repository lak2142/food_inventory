class FoodItem < ActiveRecord::Base
	validates_presence_of :title, null: false
	validates_presence_of :description, null: false
	validates_presence_of :quantity, null: false
end
