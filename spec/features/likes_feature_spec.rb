require 'rails_helper'
require 'byebug'

feature 'liking photos' do

  let(:user) { create :user }

  before do
    sign_in(user)
    visit '/'
    click_link 'Upload an image'
    allow_any_instance_of(Paperclip::Attachment).to receive(:url).and_return("spec/test.png")
    # attach_file("image[upload]", "spec/test.png")
    fill_in 'Caption', with: 'Test Caption'
    click_button 'Create Image'
  end

  scenario 'a user can like an image', js: true  do
    visit '/'
    click_link 'Like!'
    expect(page).to have_content('1 like')
  end

  def sign_in(user)
    visit '/'
    click_link 'Sign in'
    fill_in 'Login', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
  end

end
