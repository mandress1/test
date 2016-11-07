class PokemonController < ApplicationController
  before_action :set_current_user

  def pokemon_params
    params.require(:pokemon).permit(:poke_id, :poke_name, :height, :generation,:weight,:base_experience)
  end

  def show
    id = params[:poke_id] # retrieve movie ID from URI route
    @pokemon = Pokemon.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  def index
    @pokemons = Pokemon.all
  end

  def new
    # default: render 'new' template
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
  def set_current_user
    @current_user ||=	session[:session_token] && (User.find_by session_token: session[:session_token])
  end

end