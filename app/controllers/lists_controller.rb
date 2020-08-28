require 'securerandom'

class ListsController < ApplicationController

  def index
    list_uid = params[:list_id]
    if !list_uid || list_uid.empty?
      new_uid = SecureRandom.hex(6)
      List.create(uid: new_uid)
      render json: {uid: new_uid}
    
    else
      list = List.find_by(uid: list_uid)
      
      if !list
        render json: {error: "No such ID!"}
      else
        # lists = list.names
        render json: {list:list}
      end
    
    end
  end

end
