class NamesController < ApplicationController

  def create
    list_uid = params[:uid]
    name = params[:name]
    list_obj = List.find_by(uid: list_uid)
    # byebug
    newName = Name.create(name: name, list_id: list_obj.id)
    if !newName.valid?
      render json: {error: 'Name already exists!'}
    else
      render json: {message: 'Done!'}
    end
  end

end
