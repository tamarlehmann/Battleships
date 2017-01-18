require 'spec_helper'

feature 'Personalised battle', :type => :feature do
  scenario 'Typed names appear on the screen' do
    visit '/'

    fill_in :name1, :with => 'Tamar'
    fill_in :name2, :with => 'Serjey'
    click_button 'submit'

    expect(page).to have_text 'Tamar vs. Serjey'
  end
end

feature 'si the first player winning?', :type => :feature do
  scenario 'Displays the 2nd player\'s health bar' do
    visit '/'

    fill_in :name1, :with => 'Tamar'
    fill_in :name2, :with => 'Serjey'
    click_button 'submit'

    expect(page).to have_content 'Serjey: 100HP'
  end
end
