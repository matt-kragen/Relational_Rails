require 'rails_helper'

RSpec.describe 'Create New Grocery page' do
  it 'lists fields' do
    store1 = GroceryStore.create!(
      name: 'Albertsons', 
      address: '1234 Fake Street', 
      open_24_hours: false
    )
    visit "/grocery_stores/#{store1.id}/groceries/new"

    expect(page).to have_content('Grocery name:')
    expect(page).to have_content('Grocery price:')
    expect(page).to have_content('In stock?:')
  end

  it 'creates new grocery with given attributes' do
    store1 = GroceryStore.create!(
      name: 'Albertsons', 
      address: '1234 Fake Street', 
      open_24_hours: false
    )
    visit "/grocery_stores/#{store1.id}/groceries/new"
    
    fill_in :name, with: "Example Name"
    fill_in :price, with: "1.05"
    fill_in :in_stock, with: "true"
    click_button('Create Grocery')

    expect(current_path).to eq("/grocery_stores/#{store1.id}/groceries")
    expect(page).to have_content("Example Name")
    expect(page).to have_content("1.05")
    expect(page).to have_content("true")
  end
end