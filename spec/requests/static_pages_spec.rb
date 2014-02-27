require 'spec_helper'

describe "StaticPages" do

  describe "Home Page" do
    it "It should have the content Sample App" do
      visit '/static_pages/home'
      expect(page).to have_content('Home')
    end

    it "should have the right title" do
  	visit '/static_pages/home'
  	expect(page).to have_title("Ruby on Rails Tutorial | Home")
  	end
  end

  describe "Help Page" do
  	it "It should have the content Help" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end

  	it "should have the right title" do
  	visit '/static_pages/help'
  	expect(page).to have_title("Ruby on Rails Tutorial | Help")
  	end
  end

  describe "About Page" do
  	it "It should have the content About Us" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end

  	it "should have the right title" do
  	visit '/static_pages/about'
  	expect(page).to have_title("Ruby on Rails Tutorial | About Us")
  	end
  end

  describe "Contact Page" do
  	it "It should have the content Contact" do
  		visit '/static_pages/contact'
  		expect(page).to have_content('Contact')
  	end

  	it "should have the right title" do
  	visit '/static_pages/contact'
  	expect(page).to have_title("Ruby on Rails Tutorial | Contact")
  	end
  end
end