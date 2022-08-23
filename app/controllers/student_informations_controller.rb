# frozen_string_literal: true

class StudentInformationsController < ApplicationController
  before_action :find_student, only: %i[show edit update destroy]

  def index
    @student = StudentInformation.all.order('id')
  end

  def new
    @student = StudentInformation.new
  end

  def create
    @student = StudentInformation.new(student_params)
    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  def show; end

  def edit; end

  def destroy
    redirect_to root_path if @student.destroy
  end

  def update
    if @student.update(student_params)
      redirect_to @student
    else
      render 'edit'
    end
  end

  private

  def student_params
    params.require(:student_information).permit(:name, :section, :roll_number)
  end

  def find_student
    @student = StudentInformation.find(params[:id])
  end
end
