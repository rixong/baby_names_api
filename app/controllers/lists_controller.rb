class ListsController < ApplicationController

  def index
    list_uid = params[:list_id]
    if list_uid.empty?
      render json: {error: "Creat new ID"}
    end
    list_id = List.find_by(uid: list_uid)
    if !list_id
      render json: {error: "No such ID"}
    else
      lists = Name.where("uid = ?", list_uid)
      render json: {id:list_id, names: lists}
    end
  end

end
