class ChangesController < ApplicationController
    def index
        @changes = Change.all 
        render json: @changes
    end
end
