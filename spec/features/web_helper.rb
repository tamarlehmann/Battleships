def sign_in_and_play
  visit '/'

  fill_in :name1, :with => 'Tamar'
  fill_in :name2, :with => 'Serjey'
  click_button 'submit'
end
