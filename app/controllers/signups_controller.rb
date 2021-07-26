class SignupsController < ApplicationController
    def index
        signups = Signup.all
        render json: signups
    end

    def create
        signup = Signup.create(signup_params)
        render json: signup.activity
    end

    def signup_params
        params.require(:signup).permit(:camper_id, :activity_id, :time)
    end
end
