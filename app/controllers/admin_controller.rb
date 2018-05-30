class AdminController < ApplicationController
  before_action :authenticate_user!

  def index
    @requests = VisitRequest.where(approved: false).order(created_at: :desc)
    @recorridos = Visit.where('scheduled >= ?', DateTime.now.beginning_of_day).order(scheduled: :desc)
    @users = User.all
  end
end
