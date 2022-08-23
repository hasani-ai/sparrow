# frozen_string_literal: true

require "rails_helper"

RSpec.describe "DELETE_post_path", type: :request do
  let(:post) { create(:post) }

  describe "removing post" do
    it "response to be redirected" do
      described_request(post)
      expect(response).to have_http_status(:redirect)
    end

    it "response to have correct flash success message" do
      described_request(post)
      expect(flash[:notice]).to eq("Post was successfully removed.")
    end
  end

  def described_request(post)
    delete post_path(post)
  end
end
