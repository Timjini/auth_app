class ApplicationController < ActionController::Base
    skip_forgery_protection :verify_authenticity_token
    
end
