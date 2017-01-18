require 'spec_helper'

feature 'Personalised battle', :type => :feature do
  scenario 'Typed names appear on the screen' do
    sign_in_and_play
    expect(page).to have_text 'Tamar vs. Serjey'
  end
end
