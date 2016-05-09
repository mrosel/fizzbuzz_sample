require 'rails_helper'

feature "visit home page" do
  scenario "successfully" do
    visit root_path
    expect(page).to have_css "h1", text: "FizzBuzz Example"
  end
  scenario "display values from 1 to 100 " do
    visit root_path
    page.should have_css(".table tr", :count=>100)
  end  

#Should allow viewing values up to 100,000,000,000
  scenario "display values up to 100,000,000,000 " do
    count=1_000
    visit root_path + "?max=#{count}&min=0&per_page=#{count}"
    page.should have_css(".table tr", :count=>count)
  end  

end