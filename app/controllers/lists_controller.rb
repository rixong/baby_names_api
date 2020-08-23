require 'securerandom'

class ListsController < ApplicationController

  def index
    list_uid = params[:list_id]
    if !list_uid || list_uid.empty?
      new_uid = SecureRandom.base64(9)
      List.create(uid: new_uid)
      render json: {uid: new_uid}
    else
      list = List.find_by(uid: list_uid)
      # byebug
      if !list
        render json: {error: "No such ID!"}
      else
        lists = list.names
        render json: {uid:list.uid, names: lists}
      end
    end
  end

end
