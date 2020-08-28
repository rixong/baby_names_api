class NamesController < ApplicationController

  def index
      list_uid = params[:uid]
      names = 
  end

  def create
    # list_uid = params[:uid]
    # name = params[:name]
    list_obj = List.find_by(uid: params[:uid])
    # byebug
    newName = Name.create(name: params[:name], active: true, list_id: list_obj.id)
    if !newName.valid?
      render json: {error: 'Name already exists!'}
    else
      render json: {message: 'Done!'}
    end
  end

  def update
    list_id = List.find_by('uid = ?', params[:uid]).id
    # byebug
    name = Name.find_by("list_id = ? AND id = ?", list_id, params[:name_id])
    status = !name.active
    name.update(active: status)
    render json: name
  end

end
