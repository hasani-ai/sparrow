require 'rails_helper'

RSpec.describe "GET new_post_path", type: :request do
  it "response to be ok" do
    described_request
    expect(response).to have_http_status(:ok)
  end

  def described_request
    get new_post_path
  end
end