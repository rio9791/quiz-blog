require 'acceptance/acceptance_helper'

feature 'Posts' do

  scenario 'Blank slate' do
    visit posts_path
    page.should have_content('No post is found. Go create your first post!')
    page.should have_no_content('New Post')
  end

end
