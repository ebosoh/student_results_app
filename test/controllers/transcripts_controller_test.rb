require 'test_helper'

class TranscriptsControllerTest < ActionController::TestCase
  test "should get print" do
    get :print
    assert_response :success
  end

end
