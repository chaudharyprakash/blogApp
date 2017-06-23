class BlogsController < ApplicationController

  before_filter :set_blogs, only: [:edit, :update, :destroy]

  def new
    @blogs = Blog.new
  end

  def create
    @blogs = current_user.blogs.create(blog_params)
    if @blogs.save
      flash[:sucess] = "Blog Successfully Created"
      redirect_to root_path
    else
      @post_form = true
      render 'new'
    end
  end

  def update
    if @blogs.update_attributes(blog_params)
      flash.keep[:notice] = "Blog Successfully Updated.."
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def edit
    @post_form = true
  end

  def destroy
    @blogs.destroy
    flash.keep[:notice] = "Blog Successfully Deleted.."
    redirect_to root_path
  end

  def set_blogs
    @blogs = Blog.find_by_id(params[:id])
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :description)
  end
end
