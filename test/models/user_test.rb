require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:regularuser)
    @attr = {
      :email => "user@example.com",
      :password => "changeme",
      :password_confirmation => "changeme"
    }
  end

  def teardown
    @user = nil
  end

  def test_user_should_to_respond_to_email
    assert_respond_to @user, :email
  end

  def test_user_with_empty_email_should_be_invalid
    @user.email = ""
    refute @user.valid?
  end
  
  def test_should_require_email
    no_email_user = User.new(@attr.merge(:email => ""))
    refute no_email_user.valid?
  end

  def test_should_accept_valid_email_addresses
    addresses = %w[example@gmail.com SOME_EXAMPLE@google.mail.org some.one@google.jp]
    addresses.each do |address|
      valid_email_user = User.new(@attr.merge(:email => address))
      assert valid_email_user.valid?
    end
  end

  def test_should_reject_invalid_email
    addresses = %w[example@gmail,com example_at_gmail.com example@gmail]
    addresses.each do |address|
      invalid_email_user = User.new(@attr.merge(:email => address))
      refute invalid_email_user.valid?
    end
  end

  def test_should_reject_duplicate_email
    User.create!(@attr)
    user_with_duplicate_email = User.new(@attr)
    refute user_with_duplicate_email.valid?
  end

  def test_should_reject_email_duplicate_email_with_different_case
    upcased_email = @attr[:email].upcase
    User.create!(@attr.merge(:email => upcased_email))
    user_with_duplicate_email = User.new(@attr)
    refute user_with_duplicate_email.valid?
  end

  describe "passwords" do

    before(:each) do
      @user = User.new(@attr)
    end

    def test_should_have_password
      @user.must_respond_to :password
    end

    def test_should_have_password_confirmation
      @user.must_respond_to :encrypted_password
    end
  end

  describe "password validations" do

    def test_should_require_password
      refute User.new(@attr.merge(:password => "", :password_confirmation => "")).valid?
    end

    def test_should_require_matching_password
      refute User.new(@attr.merge(:password_confirmation => "invalid")).valid?
    end

    def test_should_reject_short_passwords
      short = "1234567"
      hash = @attr.merge(:password => short, :password_confirmation => short)
      refute User.new(hash).valid?
    end

  end

  describe "password encryption" do

    before(:each) do
      @user = users(:regularuser)
    end

    def test_should_have_encrypted_password
      @user.must_respond_to :encrypted_password
    end

    def test_should_set_encrypted_password
      refute  @user.encrypted_password.blank?
    end

  end
  
end
