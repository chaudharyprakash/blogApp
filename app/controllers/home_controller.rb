class HomeController < ApplicationController
  def show
  end

  def index
    @post_form = params[:post_form] if params[:post_form].present?
    @blogs = Blog.new
    @blogs_list = Blog.all
  end
end
