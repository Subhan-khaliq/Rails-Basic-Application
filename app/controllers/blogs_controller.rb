# frozen_string_literal: true

class BlogsController < ApplicationController
  before_action :find_blog, only: %i[show edit update destroy]

  def index
    @blog = Blog.all.order('id')
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save

      redirect_to @blog
    else
      render 'new'
    end
  end

  def edit; end

  def destroy
    @blog.destroy
    redirect_to root_path
  end

  def update
    if @blog.update(blog_params)
      redirect_to @blog
    else
      render 'edit'
    end
  end

  def show; end

  private

  def find_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:title, :body)
  end
end
