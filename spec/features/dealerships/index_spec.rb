require 'rails_helper'

describe 'Dealerships index page' do 
  it 'can see all dealership names' do 
    dealer1 = Dealership.create!(name: 'Dealer1', 
                                address: '4200 high st', 
                                open_weekends: true, 
                                years_open: 42
                              )

    dealer2 = Dealership.create!(name: 'Dealer2', 
                                address: '6925 ride st', 
                                open_weekends: false, 
                                years_open: 23
                              )
    
    visit '/dealerships'

    expect(page).to have_content(dealer1.name)
    expect(page).to have_content(dealer2.name)
  end 
    it 'can take the user to the home page' do 
      dealer1 = Dealership.create!(name: 'Dealer1', 
        address: '4200 high st', 
        open_weekends: true, 
        years_open: 42
      )

    dealer2 = Dealership.create!(name: 'Dealer2', 
          address: '6925 ride st', 
          open_weekends: false, 
          years_open: 23
        )

    visit '/dealerships'

    expect(current_path).to eq('/dealerships')
    
    click_link('Go to HomePage')
    expect(current_path).to eq('/')

    visit '/dealerships'

    click_link('Go to Cars')
    expect(current_path).to eq('/cars')
  end 
  
  it 'can dislpay newest to oldest' do 
    dealer1 = Dealership.create!(name: 'Dealer1', 
      address: '4200 high st', 
      open_weekends: true, 
      years_open: 22,
      created_at: 'Tue, 06 Jul 2021 23:41:08 UTC +00:00'
    )

    dealer2 = Dealership.create!(name: 'Dealer2', 
      address: '6925 ride st', 
      open_weekends: false, 
      years_open: 23,
      created_at: 'Wed, 07 Jul 2021 23:41:08 UTC +00:00'
    )

    dealer3 = Dealership.create!(name: 'Dealer2', 
      address: '6925 ride st', 
      open_weekends: false, 
      years_open: 41,
      created_at: 'Thu, 08 Jul 2021 18:41:08 UTC +00:00'
    )

    visit '/dealerships'

    within("#dealership-#{dealer3.id}") do 
      expect(page).to have_content(dealer3.name)
    end 

    within("#dealership-#{dealer2.id}") do 
      expect(page).to have_content(dealer2.name)
    end 

    within("#dealership-#{dealer1.id}") do 
      expect(page).to have_content(dealer1.name)
    end 
    
  end
end 
