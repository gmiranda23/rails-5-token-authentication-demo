require "rails_helper"

describe "The JSON API access policy", type: :request do

  before(:each) do
    allow(STDOUT).to receive(:puts) # silence puts.
  end

  let(:headers) {{ 'CONTENT_TYPE' => 'application/json' }}

  it "allows access to '/'" do
    get root_url, headers: headers
    expect(response).to have_http_status(:ok)
  end

  it "denies access to '/restricted_index'" do
    get restricted_index_url, headers: headers
    expect(response).to have_http_status(:unauthorized)
  end

  context 'with valid user credentials passed as request params' do

    let(:user) { FactoryGirl.create(:user) }

    let(:params) {{
      user_email: user.email,
      user_token: user.authentication_token
    }}

    it "allows access to '/' and signs in the corresponding user" do
      get root_url, params: params, headers: headers
      expect(response).to have_http_status(:ok)
      expect(controller.current_user).to eq user
    end

    it "allows access to '/restricted_index'" do
      get restricted_index_url, params: params, headers: headers
      expect(response).to have_http_status(:ok)
      expect(controller.current_user).to eq user
    end
  end

  context 'with valid user credentials passed as HTTP headers' do

    let(:user) { FactoryGirl.create(:user) }
    let(:user_credentials) {{
      'X-User-Email' => user.email,
      'X-User-Token' => user.authentication_token
    }}
    let(:headers_with_credentials) { headers.merge(user_credentials) }

    it "allows access to '/' and signs in the corresponding user" do
      get root_url, headers: headers_with_credentials
      expect(response).to have_http_status(:ok)
      expect(controller.current_user).to eq user
    end

    it "allows access to '/restricted_index'" do
      get restricted_index_url, headers: headers_with_credentials
      expect(response).to have_http_status(:ok)
      expect(controller.current_user).to eq user
    end
  end
end
