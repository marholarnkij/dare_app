require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1',    text: 'Dare App') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'About') }
    it { should have_selector('title', text: full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }
  end
  
  describe "activity page" do
    before { visit activity_path }

    it { should have_selector('h1',    text: 'Activity') }
    it { should have_selector('title', text: full_title('Activity')) }
  end
  
  describe "Webboard page" do
    before { visit webboard_path }

    it { should have_selector('h1',    text: 'Webboard') }
    it { should have_selector('title', text: full_title('Webboard')) }
  end
  
  describe "Seat page" do
    before { visit seat_path }

    it { should have_selector('h1',    text: 'Seat') }
    it { should have_selector('title', text: full_title('Seat')) }
  end
end