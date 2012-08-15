require 'acceptance/acceptance_helper'

feature 'Posts', %q{
  In order to keep my blog up to date
  As a bloger
  I want create, show, update and delete posts
} do

  scenario 'Blank slate' do
    visit posts_path
    page.should have_content('No post is found.')
  end

end
