require 'spec_helper'

feature 'playing a game' do
  before do
    visit('/')
    fill_in :player_1_name, with: 'Chet'
    click_button "3 2 1 Draw!"
  end

  scenario 'options for the game' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
    expect(page).to have_button 'Lizard'
    expect(page).to have_button 'Spock'
  end

  scenario 'user can pick an option' do
    click_button 'Rock'
    expect(page).to have_content 'You selected Rock!'
  end

  scenario 'computer picks Spock' do
    click_button 'Spock'
    expect(page).to have_content 'Opponent selected Spock!'
  end
end