class MeetingsController < ApplicationController
  before_action :authorize, except: [:index, :show]

  def index
    @meetings = Meeting.all
  end

  def show
    @meeting = Meeting.find(params[:id])
  end

  def new
    @meeting = current_user.meetings.new
  end

  def create
    @meeting = current_user.meetings.new meetings_params
    @meeting.save
    redirect_to meeting_path @meeting.id
  end

  def edit
  end

  def update
  end

  def destroy
    @meeting = Meeting.find(params[:id])
    @meeting.destroy
    redirect_to "/"
  end

  private
  def meetings_params
    return params.require(:meeting).permit(:name, :address)
  end

end
