class NamesController < ApplicationController

  def create
    list_uid = params[:uid]
    name = params[:name]
    list_obj = List.find_by(uid: list_uid)
    # byebug
    Name.create(name: name, list_id: list_obj.id)
    render json: {message: 'Done!'}
  end

end
