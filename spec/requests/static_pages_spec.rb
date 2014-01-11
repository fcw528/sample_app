require 'spec_helper'

#describe "StaticPages" do
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get index_path
#      response.status.should be(200)
#    end
#  end
#end


describe "Static pages" do
  subject { page }
  let(:base_title) { full_title('') }
  describe "Home page" do
    before { visit root_path }
    it { should have_content('Sample App') }
    #it { should have_title("#{base_title} | Home") }
    it { should have_title(full_title('')) }
    it { should have_title(full_title('Home')) }

    #it "should not have a custom page title" do
    #  visit '/static_pages/home'
    #  expect(page).not_to have_title('| Home')
    #end
  end

  describe "Help page" do
    before { visit help_path }
    it { should have_content('Help') }
    #it { should have_title("#{base_title} | Help") }
    it { should have_title(full_title('')) }
    it { should have_title(full_title('Help')) }

    #it "should not have a custom page title" do
    #  visit '/static_pages/home'
    #  expect(page).not_to have_title('| Help')
    #end

  end

  describe "About page" do
    before { visit about_path }
    it { should have_content('About Us') }
    #it { should have_title("#{base_title} | About Us") }
    it { should have_title(full_title('')) }
    it { should have_title(full_title('About Us')) }

    #it "should not have a custom page title" do
    #  visit '/static_pages/home'
    #  expect(page).not_to have_title('| About Us')
    #end
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_content('Contact') }
    it { should have_title(full_title('')) }
    it { should have_title(full_title('Contact')) }

    #it "should not have a custom page title" do
    #  visit '/static_pages/home'
    #  expect(page).not_to have_title('| Contact')
    #end

  end
end