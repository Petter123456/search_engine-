require 'rails_helper'

RSpec.feature "user can use search", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}" # Just a message
  describe "goes to homepage" do

  before do
    Artist.create(name: "drdre")
    Artist.create(name: "The Doors")

  end

    it "should have a search field" do
      visit '/'
      expect(page).to have_selector("input#term")
    end

  it "search field can be populated" do
    visit '/'
    fill_in 'term', with: "Petter"
    expect(find_field('term').value).to eq "Petter"
    end

  it "search button should work when provided a valid result" do
      visit '/'
      fill_in 'term', with: "The Doors"
      click_on 'search'
      expect(page).to_ have_content("The Doors")
      expect(page).to_not have_content(Artist.last.name)

    end

  it "should not have any result when first visited" do
      visit '/'
      expect(page).to_not have_selector("p.search-results")
    end
  end
end
