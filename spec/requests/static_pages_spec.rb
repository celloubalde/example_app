require 'spec_helper'
describe "Static pages" do
  describe "Home page" do
    it "should have the h1 'Example App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Example App')
    end
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
          :text => "Ruby on Rails Tutorial Example App")
    end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end
describe "Help page" do
  it "should have the content 'Help'" do
    visit '/static_pages/help'
    page.should have_content('Help')
  end
end
describe "About page" do
  it "should have the content 'A propos'" do
	visit '/static_pages/about'
	page.should have_content('A propos')
   end
end
end
