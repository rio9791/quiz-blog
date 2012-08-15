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

  scenario 'Post slug' do
    my_title = 'Hello, world!'
    my_content = 'Just another post content here and there.'

    visit new_post_path
    fill_in 'Title', :with => my_title
    fill_in 'Content', :with => my_content
    click_button 'Create Post'

    visit '/posts/hello-world'
    page.should have_content(my_content)
  end

end
