class CurrentCompanyController < ApplicationController
    before_action :authenticate_company!
    def index
        render json: current_company, status: :ok
    end
end
