class BlogsController < ApplicationController

  before_filter :set_blog, only: [:edit, :update, :destroy]

  def new
    @blogs = Blog.new
  end

  def create
    @blogs = current_user.blogs.new(blog_params)
    if @blogs.save
      flash[:sucess] = "Blog Successfully Created"
      redirect_to root_path
    else
      @post_form = true
      render 'new'
    end
  end

  def update
    if @blog.update_attributes(blog_params)
      flash.keep[:notice] = "Blog Successfully Updated.."
      redirect_to root_path
    else
      @post_form = true
      render 'edit'
    end
  end

  def edit
    @post_form = true
  end

  def destroy
    @blog.destroy
    flash.keep[:notice] = "Blog Successfully Deleted.."
    redirect_to root_path
  end

  def set_blog
    @blog = Blog.find_by_id(params[:id])
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :description)
  end
end
