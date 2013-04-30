require 'spec_helper'

describe "StaticPages" do
 describe "Homepage" do
  it "should have the content 'SampleApp'" do
    visit '/static_pages/home'
      page.should have_content('Sample App')
   end
   
it "should have the right title 'Home'" do
    visit '/static_pages/home'
    page.should have_selector('title',
		:text => "Ruby on rails tutorial Sample App|Home")
   end
  end
describe "Helppage" do
  it "should have the content 'Help'" do
    visit '/static_pages/help'
      page.should have_content('Help')
   end
  end
describe "About page" do
  it "should have the content 'About'" do
    visit '/static_pages/about'
      page.should have_content('About')
   end
  end

end

