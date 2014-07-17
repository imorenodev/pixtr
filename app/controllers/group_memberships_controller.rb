class GroupMembershipsController < ApplicationController
  def create
    group = Group.find(params[:id])
    #group.users << current_user
    current_user.join(group)
    redirect_to group, notice: "Joined group successfully"
  end

  def destroy
    group = Group.find(params[:id])
    current_user.leave(group)
    redirect_to dashboard_path, notice: "You were removed from the group."
  end
end