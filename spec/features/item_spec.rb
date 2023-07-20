require 'rails_helper'

RSpec.describe "Items API calls" do
  describe "Items Api requests" do
    it "item name links to show page" do
      visit merchant_path(1)
      click_link "Item Rerum Est"
      expect(current_path).to eq item_path(15)
      expect(page).to have_content("Item Name: Item Rerum Est")
      expect(page).to have_content("Item Details")
      expect(page).to have_content("Item Description: Nemo voluptatem facere aut quo. Consequatur vel voluptas et. Consequuntur quibusdam ea consectetur accusamus sit optio qui.")
      expect(page).to have_content("Item Price: 426.29")
    end
  end
end