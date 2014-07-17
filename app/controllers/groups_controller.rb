class GroupsController < ApplicationController
  before_action :require_login, except: [:index, :show] #users not logged in can still see index and show

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.create(group_params)

    GroupMembership.create(user_id: current_user.id, group_id: @group.id)

    redirect_to groups_path, notice: "Group created successfully!"
  end

  def show
    @group = Group.find(params[:id])
  end

  private

  def group_params
    params.require(:group).permit(:name, :description)
  end
end