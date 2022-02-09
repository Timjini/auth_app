class StaticController < ApplicationController
    def home 
        render json: {
            status: "Back end API"
        }
    end
end
