class Api::EducationsController < ApplicationController
  def index
    @educations = Education.all
    render  'index.json.jb'
  end

  def show
    @education = Education.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @education = Education.new
    @education.student_id = params[:student_id]
    @education.start_date = params[:start_date]
    @education.end_date = params[:end_date]
    @education.job_title = params[:job_title]
    @education.company_name = params[:company_name]
    @education.details = params[:details]
    if @education.save
      render 'show.json.jb'
    else
      render json: {errors: @education.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    @education = Education.find_by(id: params[:id])
    @education.student_id = params[:student_id] || @education.student_id
    @education.start_date = params[:start_date] || @education.start_date
    @education.end_date = params[:end_date] || @education.end_date
    @education.job_title = params[:job_title] || @education.job_title
    @education.company_name = params[:company_name] || @education.company_name
    @education.details = params[:details] || @education.details
    if @education.save
      render 'show.json.jb'
    else
      render json: {errors: @education.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    @education = Education.find_by(id: params[:id])
    if @education.destroy
      render json: {message: "Education Succesfully Deleted"}
    else
      render json: {errors: @education.errors.full_messages}, status: :unprocessible_entity
    end
  end
end
