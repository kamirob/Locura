class WelcomeController < ApplicationController
  before_action :get_loan, only: [:index, :show, :edit, :update, :destroy]

    def index
        get_loan
    end
    
    def new
        respond_to do |format|
            format.html
            format.js
        end
    end    

    private

    #Mostrar en index/welcome a loans
    def get_loan
        @loan = current_user.loans
    end    
    
end
