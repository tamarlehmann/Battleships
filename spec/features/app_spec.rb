require 'spec_helper'

feature 'Personalised battle', :type => :feature do
  scenario 'Typed names appear on the screen' do
    sign_in_and_play
    expect(page).to have_text 'Tamar vs. Serjey'
  end
end

feature 'is the first player winning?', :type => :feature do
  scenario 'Displays the 2nd player\'s health points' do
    sign_in_and_play
    expect(page).to have_content 'Serjey: 100HP'
  end
end

feature 'Winning the battle' do
  scenario 'Attacking' do
    sign_in_and_play
    click_button 'Attack!!!'
    expect(page).to have_content 'Tamar attacked Serjey'
  end
end
