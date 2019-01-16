require_relative '../lib/app'

describe "the login-twitter method" do
  it "should return client, and client is not nil" do
    expect(login_twitter).not_to be_nil
  end
end
