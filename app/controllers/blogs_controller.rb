class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def edit
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to root_url

    else
      render :new

    end
  end

  def update
  end

  def destroy
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :body)
  end
end
