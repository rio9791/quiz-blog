require 'acceptance/acceptance_helper'

feature 'Posts' do

  scenario 'Blank slate' do
    visit posts_path
    page.should have_content('No post is found. Go create your first post!')
    page.should have_no_content('New Post')
  end

  scenario 'Post validation' do
    visit new_post_path
    click_button 'Create Post'
    page.should have_content('Title can\'t be blank');
    page.should have_content('Content can\'t be blank');
  end

end
