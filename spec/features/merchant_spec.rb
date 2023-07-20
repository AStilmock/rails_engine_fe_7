require 'rails_helper'

RSpec.describe "Merchants API calls" do
  describe "Merchants Api requests" do
    it "all merchants" do
      visit merchants_path

      expect(page).to have_content("All Merchants")
      expect(page).to have_link "Schroeder-Jerde"
    end
    
    it "merchant name links to show page" do
      visit merchants_path
      click_link "Schroeder-Jerde"
      expect(current_path).to eq merchant_path(1)
      expect(page).to have_content("Schroeder-Jerde's Homepage, See Current Items Below:")
      expect(page).to have_link "Item Rerum Est"
    end
  end
end

