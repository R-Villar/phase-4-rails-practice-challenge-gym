class GymsController < ApplicationController

    def show
        render json: find_gym, status: :ok
    end

    def destroy
        gym = find_gym
        gym.destroy
        head :no_content 
    end

    private 

    def find_gym
        Gym.find(params[:id])
    end
end
