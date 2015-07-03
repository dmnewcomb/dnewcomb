class HomeController < ApplicationController
    def index
		
    end
    
    def switch
        query = params[:query].to_s
		imageName = query + ".png"
        fullPath = ActionController::Base.helpers.asset_path(imageName)
		render :text => fullPath
    end
end
