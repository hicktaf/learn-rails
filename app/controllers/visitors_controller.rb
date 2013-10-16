class VisitorsController < ApplicationController

    def new
      # Model
      @visitor = Visitor.new
      # View
      #flash.now[:notice] = 'Welcome!'
      #flash.now[:alert] = 'My birthday is soon.'
      # render 'visitors/new' inherited from ApplicationController
    end

    def create
      @visitor = Visitor.new(secure_params)
      if @visitor.valid?
        @visitor.subscribe
        flash[:notice] = "Signed up #{@visitor.email}."
        redirect_to root_path
      else
        render :new
      end
    end

    private

    def secure_params
      params.require(:visitor).permit(:email)
    end

end