class PokemonController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def create
    pokemon = Pokemon.new
    pokemon.nickname = params[:nickname]
    pokemon.species = params[:species]
    pokemon.level = params[:level]
    pokemon.save
  end

end
