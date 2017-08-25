class HomeController < ApplicationController
  def index
    @post = Post.all
  end

  def index2
    @post123 = Posttest.all
  end

  def new

  end

  def new2

  end

  def write2
    post = Posttest.new
    post.title2 = params[:title2]
    post.content2 = params[:content2]
    post.save
    redirect_to '/home/index2'
  end

  def write
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    post.save
    redirect_to '/home/index'
  end

  def destroy
    delete = Post.find(params[:id])
    delete.delete
    redirect_to '/home/index'
  end

  def destroy2
    delete = Posttest.find(params[:id])
    delete.delete
    redirect_to '/home/index2'
  end

  def edit
    @edit = Post.find(params[:id])
  end

  def edit2
    @edit123 = Posttest.find(params[:id])
  end

  def update
    update = Post.find(params[:id])
    update.title = params[:title]
    update.content = params[:content]
    update.save

    redirect_to '/home/index'
  end

  def update2
    update = Posttest.find(params[:id])
    update.title2 = params[:title2]
    update.content2 = params[:content2]
    update.save

    redirect_to '/home/index2'
  end

  def dcomment
    dcomment = Dcomment.new
    dcomment.content = params[:content]
    dcomment.post_id = params[:id]
    dcomment.save

    redirect_to '/home/index'
  end


end
