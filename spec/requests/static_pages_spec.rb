# encoding: UTF-8
require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1',    text: 'โครงการ D.A.R.E ประเทศไทย') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| เริ่มต้น' }
  
  	describe "for signed-in users" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        FactoryGirl.create(:micropost, user: user, content: "Lorem ipsum")
        FactoryGirl.create(:micropost, user: user, content: "Dolor sit amet")
        sign_in user
        visit root_path
      end

      it "should render the user's feed" do
        user.feed.each do |item|
          page.should have_selector("li##{item.id}", text: item.content)
        end
      end
    end
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'ช่วยเหลือ') }
    it { should have_selector('title', text: full_title('ช่วยเหลือ')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'เกี่ยวกับเรา') }
    it { should have_selector('title', text: full_title('เกี่ยวกับเรา')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'ติดต่อ') }
    it { should have_selector('title', text: full_title('ติดต่อ')) }
  end
  
  describe "activity page" do
    before { visit activity_path }

    it { should have_selector('h1',    text: 'กิจกรรม') }
    it { should have_selector('title', text: full_title('กิจกรรม')) }
  end
  
  describe "Webboard page" do
    before { visit webboard_path }

    it { should have_selector('h1',    text: 'กระดานสนทนา') }
    it { should have_selector('title', text: full_title('กระดานสนทนา')) }
  end
  
  describe "Seat page" do
    before { visit seat_path }

    it { should have_selector('h1',    text: 'ทำเนียบ') }
    it { should have_selector('title', text: full_title('ทำเนียบ')) }
  end
  
  
end