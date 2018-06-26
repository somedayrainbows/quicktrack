require 'rails_helper'

# As a user
# When I visit the clients index
# And I click "New client"
# And I fill in the name and other details
# And I click "Create client"
# Then I should see the client name and date added on the page

RSpec.feature "User submits a new client" do
  scenario "user enters data to create a new client" do
    company_name = "ABC Industries Inc."
    phone = "5555555555"
    contact_first_name = "Jane"
    contact_last_name = "Doe"
    email = "jdoe@abcindustries.com"
    address_1 = "555 Smith Rd"
    address_2 = "Ste 500"
    city = "Denver"
    state = "CO"
    postal_code = "80222"

    visit '/clients'
    click_on "Add new client"
    fill_in "name", with: company_name
    fill_in "phone", with: phone
    fill_in "contact_first_name", with: contact_first_name
    fill_in "contact_last_name", with: contact_last_name
    fill_in "email", with: email
    fill_in "address_1", with: address_1
    fill_in "address_2", with: address_2
    fill_in "city", with: city
    fill_in "state", with: state
    fill_in "postal_code", with: postal_code
    click_on "Create client"

    expect(page).to have_content client_company_name
    expect(page).to have_content client_phone
    expect(page).to have_content client_email
    expect(page).to have_content client_contact_first_name
    expect(page).to have_content client_contact_last_name
  end
end
