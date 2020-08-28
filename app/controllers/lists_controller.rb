require 'securerandom'

class ListsController < ApplicationController

  def index
    list_uid = params[:list_id]
    if !list_uid || list_uid.empty?
      new_uid = SecureRandom.hex(6) 
      while List.find_by(uid: new_uid) do
        new_uid = SecureRandom.hex(6)
      end
      list = List.create(uid: new_uid)
      render json: {list: list}
    
    else
      list = List.find_by(uid: list_uid)
      
      if !list
        render json: {error: "No such ID!"}
      else
        # lists = list.names
        render json: {curList: list}
      end
    
    end
  end

end
