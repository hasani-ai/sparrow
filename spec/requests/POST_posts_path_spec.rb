# frozen_string_literal: true

require "rails_helper"

RSpec.describe "POST_posts_path", type: :request do
  let(:post_params) { FactoryBot.attributes_for(:post) }

  describe "creating post" do
    it "creates a post" do
      expect { described_request(post_params) }.to change { Post.count }.by(1)
    end

    it "response to be redirected" do
      described_request(post_params)
      expect(response).to have_http_status(:redirect)
    end

    it "response to have correct flash success message" do
      described_request(post_params)
      expect(flash[:success]).to eq("New Post Added")
    end
  end
  

  def described_request(post_params)
    post posts_path, params: { post: post_params }
  end
end
