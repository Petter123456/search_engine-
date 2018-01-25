require 'rails_helper'

RSpec.feature "user can use search", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}" # Just a message
  describe "goes to homepage" do
    it "should have a search field" do
      visit '/'
      expect(page).to have_selector("input")
    end
  end
end
