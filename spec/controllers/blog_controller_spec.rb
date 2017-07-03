require "rails_helper"

RSpec.describe BlogsController do
  describe "create Blog" do
      describe "with valid params" do
        it "creates a new Blog" do
          blog = create(:blog, user: create(:user))
        end
      end
   end

  before(:each) do
    @blog = create(:blog, user: create(:user))
  end  

  describe "PUT 'update/:id'" do
    it "allows an blog to be updated" do
      puts "============update======="
      put :update, :id => @blog.id, :blog => @blog.attributes = { :title => "new title", :description => "new content" }
    end
  end

  describe "PUT 'delete/:id'" do
    it "allows an blog to be deletes" do
      puts "========delete=========="
      get :destroy, :id => @blog.id
    end
  end
end