require 'rails_helper'

RSpec.describe "GET root_path", type: :request do
  it "response to be ok" do
    described_request
    expect(response).to have_http_status(:ok)
  end

  def described_request
    get root_path
  end
end