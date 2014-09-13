class UserAutocompleteController < ActionController::Base

 def autocomplete
    @users = User.order(:name).where("name ILIKE ?", "%#{params[:term]}%")
    render json: @users.map{ |u| { :label => u.name, :value => u.id } }
  end

end