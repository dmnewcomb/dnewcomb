class HomeController < ApplicationController
    def index

    end
    
    def switch
        query = params[:query].to_s
		resultHTML = query + ".png"
		render :text => resultHTML    
    end
end
