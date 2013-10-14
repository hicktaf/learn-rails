class VisitorsController < ApplicationController

    def new
      # Model
      @owner = Owner.new
      # View
      # render 'visitors/new' inherited from ApplicationController
    end

end