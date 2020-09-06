class NamesController < ApplicationController

  def index
      list = List.find_by(id: params[:list_id])
      if list
        names = list.names
        render json: {names: names, status: 'ok'}
      else
        render json: {message: 'Names not found', status: 'error'}
      end
  end

  def create
    name = Name.find_by("list_id = ? AND name = ?", params[:id], params[:name])
    if name
      render json: {error: 'Name already exists!', status: 'error'}
    else
      newName = Name.create(name: params[:name], active: true, list_id: params[:id])
      render json: {name: newName, message: 'Done!', status: 'ok'}
    end
  end

  def update
    # byebug
    name = Name.find_by(id: params[:id])
    if name
      status = !name.active
      name.update(active: status)
      render json: {name: name, message: 'Done!', status: 'ok'}
    else
      render json: {message: 'Name not found', status: 'error'}
    end
  end

  def destroy
    # byebug
    name = Name.find_by(id: params[:id])
    if name
      temp_name = name
      name.destroy();
      render json: {name: temp_name, message: 'Done!', status: 'ok'}
    else
      render json: {message: 'Name not found', status: 'error'}
    end
  end

end
