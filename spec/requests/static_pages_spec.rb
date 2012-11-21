require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Misfortune Cookies'" do
      visit '/static_pages/home'
      page.should have_content('Misfortune Cookies')
    end

    it "should have the title 'Misfortune Cookies'" do
    	visit '/static_pages/home'
    	page.should have_selector('title',
    		:text => "Misfortune Cookies")
    end
  end
end