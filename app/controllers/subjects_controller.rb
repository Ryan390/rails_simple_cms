class SubjectsController < ApplicationController

  def index
    @subjects = Subject.sorted
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)

    if (@subject.save)
      flash[:notice] = "Subject '#{@subject.name}' created successfully"
      redirect_to(subjects_path)
    else
      render(new_subject_path)
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])

    if (@subject.update(subject_params))
      flash[:notice] = "Subject '#{@subject.name}' updated successfully"
      redirect_to(subjects_path)
    else
      render(new_subject_path)
    end
  end

  def delete
    @subject = Subject.find(params[:id])
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    flash[:notice] = "Subject '#{@subject.name}' destroyed successfully"
    redirect_to(subjects_path)
  end

  private
  def subject_params
    params.require(:subject).permit(:name, :position, :visible)
  end
end
