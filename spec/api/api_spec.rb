require 'rails_helper'

feature "visit api path" do
  scenario "successfully" do
    visit api_v1_fizzbuzzapi_index_path
  end
end

