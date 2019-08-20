class Api::StudentsController < ApplicationController

  def index
    @students = Student.all
    render 'index.json.jb'
  end

  def show
    @student = Student.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      bio: params[:bio],
      linkedin: params[:linkedin],
      twitter: params[:twitter],
      personal_url: params[:personal_url],
      resume_url: params[:resume_url],
      github_url: params[:github_url],
      photo: params[:photo])
    if @student.save
      render 'show.json.jb'
    else
      render json: {errors: @student.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    the_id = params[:id]
    @student = Student.find_by[id: the_id]
    @student.first_name = params[:first_name] || @student.first_name,
    @student.last_name = params[:last_name],
    @student.email = params[:email],
    @student.phone_number = params[:phone_number],
    @student.bio = params[:bio],
    @student.linkedin = params[:linkedin],
    @student.twitter = params[:twitter],
    @student.personal_url = params[:personal_url],
    @student.resume_url = params[:resume_url],
    @student.github_url = params[:github_url],
    @student.photo = params[:photo]
    if @student.save
      render 'show.json.jb'
    else
      render json: {errors: @student.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    the_id = params[:id]
    @student = Student.find_by(id: the_id)
    @student.destroy
    render 'destroy.json.jb'
  end
end
