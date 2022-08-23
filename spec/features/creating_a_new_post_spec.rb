# frozen_string_literal: true

require "rails_helper"

RSpec.feature "Create Post", type: :feature, js: true do
  let(:post) { create(:post) }
  let(:author) { Faker::Book.author }
  let(:body) { Faker::Lorem.paragraphs(number: 3).join(" ") }

  scenario "with valid params" do
    visit "/"
    click_on("New post")

    sleep(0.5) 
    expect(page.body).to have_css("h1", text: "New Post")
    expect(page.body).to have_css("form input#post_author")
    expect(page.body).to have_css("form label[for=post_body]")
    expect(page.body).to have_css("form input[type=submit]")

    fill_in "Author", with: author
    fill_in_trix_editor "post_body_trix_input_post", with: body
    click_on("Create Post")

    sleep(0.3)
    expect(page.body).to have_css("h1", text: "Posts")
    expect(page.body).to have_css("#posts", text: author)
    expect(page.body).to have_css("#posts", text: body)
    expect(page.body).to have_link("New post")
  end
end
