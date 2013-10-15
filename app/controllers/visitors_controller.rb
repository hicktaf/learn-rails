class VisitorsController < ApplicationController

    def new
      # Model
      @owner = Owner.new
      # View
      #flash.now[:notice] = 'Welcome!'
      #flash.now[:alert] = 'My birthday is soon.'
      # render 'visitors/new' inherited from ApplicationController
    end

end