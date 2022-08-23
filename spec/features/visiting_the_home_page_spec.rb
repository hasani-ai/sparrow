require "rails_helper"

RSpec.feature "Visit Home Page", type: :feature, js: true do
  let(:post) { create(:post) }

  scenario "visiting homepage with no posts" do
    visit "/"
    expect(page.body).to have_css("h1", text: "Posts")
    expect(page.body).to_not have_css("#posts", text: post.author)
    expect(page.body).to_not have_css("#posts", text: post.body)
    expect(page.body).to have_css("p", text: "No posts to display")
    expect(page.body).to have_link("New post", href: new_post_path)
  end
end
