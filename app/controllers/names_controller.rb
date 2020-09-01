class NamesController < ApplicationController

  def index
      list = List.find_by(id: params[:list_id])
      names = list.names
      render json: {names: names}
  end

  def create
    # list_obj = List.find_by(id: params[:id])
    # byebug
    name = Name.find_by("list_id = ? AND name = ?", params[:id], params[:name])
    # byebug
    if name
      render json: {error: 'Name already exists!'}
    else
      newName = Name.create(name: params[:name], active: true, list_id: params[:id])
      render json: {message: 'Done!'}
    end
  end

  def update
    # list_id = List.find_by('uid = ?', params[:id]).id
    # byebug
    name = Name.find_by("list_id = ? AND id = ?", params[:id], params[:name_id])
    status = !name.active
    name.update(active: status)
    render json: name
  end

  def destroy
    name = Name.find_by("list_id = ? AND id = ?", params[:id], params[:name_id])
    name.destroy();
    render json: {message: 'Done!'}
  end

end
