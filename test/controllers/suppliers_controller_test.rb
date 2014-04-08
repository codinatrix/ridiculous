require 'test_helper'

class SuppliersControllerTest < ActionController::TestCase
  include Devise::TestHelpers                          
  include Warden::Test::Helpers                        
  Warden.test_mode! 
  
  def setup
    @user = User.create(:email => 'steve@diamonds.com', :password => 'goldenapple')
    sign_in @user
  end
  
  
  test "should get index" do
    get :index
    assert_response :success
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end

end
