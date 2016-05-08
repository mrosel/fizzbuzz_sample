require 'rails_helper'

feature "visit api path" do
  scenario "successfully" do
    visit api_fizzbuzz_index_path
  end
end


