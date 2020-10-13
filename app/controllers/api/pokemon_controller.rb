class Api::PokemonController < ActionController::Base
    def index
        @pokemon = Pokemon.all
        render json: @pokemon
    end

    def show
        @pokemon = Pokemon.find(params[:id])
        render json: @pokemon
    end

    private

    def pokemon_params
        params.require(:pokemon).permit(:image_url, :attack, :defense, :name, :poke_type, moves: [])
    end
end