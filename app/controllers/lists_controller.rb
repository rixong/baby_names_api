class ListsController < ApplicationController

  def index
    list_uid = params[:list_id]
    list_id = List.find_by(uid: list_uid).id
    lists = Name.where("uid = ?", list_uid)
    render json: lists
  end

end
