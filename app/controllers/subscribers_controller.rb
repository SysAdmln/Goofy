class SubscribersController < ApplicationController
    def index
      @subscribers = Subscriber.all
    end
  
    def create
      @subscriber = Subscriber.new(subscriber_params)
      if @subscriber.save
        redirect_to splash_path, notice: "Ура!"
      else
        redirect_to splash_path, notice: "Не ура("
      end
    end
  
    private
  
      def subscriber_params
        params.require(:subscriber).permit(:email)
      end
  end