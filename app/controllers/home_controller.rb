class HomeController < ApplicationController

  def index
    @post = Post.all
    render :layout => "blank"
  end

  def index2
    @post123 = Posttest.all
    render :layout => "patient"
  end

  def new
    render :layout => "blank"
  end

  def new2

    render :layout => "patient"
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
    render :layout => "blank"
  end

  def edit2
    @edit123 = Posttest.find(params[:id])
    render :layout => "patient"
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

  def blank
    render :layout => "blank"
  end

  def homepage
  end

  def medications
    @medication = medication.all
  end

  def patientlist

    @patients = Patient.all

    if patient_signed_in?
      redirect_to "/home/index2"
    else
      render :layout => "blank"
    end
  end

  def patient_detail
    @patient = Patient.find_by_id(params[:id])
    if user_signed_in?
      render :layout => "blank"
    else
      render :layout => "patient"
    end

  end

  def settings
    render :layout => "patient"
  end

  def docsettings
    render :layout => "blank"
  end

  def addmed
    medication = Medication.new
    medication.name = params[:name]
    medication.directions = params[:directions]
    medication.save
    redirect_to '/home/index'
  end



  def patient_detail
    @patient = Patient.find_by_id(params[:id])

  end

  def patient_comment
    comment = Detailcom.new
    comment.content = params[:putcomment]
    comment.patient_id = params[:patient_id]
    comment.save
    redirect_to :back
  end

  def book

  end
end
