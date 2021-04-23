class ControllersController < ApplicationController

    def index 
        @cocktails = Cocktail.all
    end

end
