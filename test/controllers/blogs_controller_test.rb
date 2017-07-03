require 'test_helper'

class BlogsControllerTest < ActionController::TestCase
  # test "should get index" do
  #   get blogs_url
  #   assert_response :success
  # end
describe User do
  it { should have_many(:blogs) }
end

describe Blog do
  it { should belong_to(:user) }
end
end
