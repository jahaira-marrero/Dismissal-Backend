class TransportationsController < ApplicationController

    def index
        @transportations = Transportation.all
        render json: @transportations
    end
end
