class UsersController < ApplicationController

    def index
        @users= User.all
        render json: @users.as_json(include: {movies:{}, user_movies:{}})
    end

    def show
        @users= User.find(params[:id])
        render json: @users.to_json(include: {movies:{}})
    end

    def create
        @user = User.new(username: params[:username])
        user_validation
    end

    # def update
    #     user = User.find(params[:id])
    #     user.update(user_params)
    #     render json: user
    # end

    def destroy
        @user=User.find(params[:id])
        UserMovie.destroy_by(user_id: @user.id)
        @user.delete
    end

    private

    def user_validation
        if @user.valid?
            @user = User.find_or_create_by(username: @user.username)
            render json: @user.as_json(include: {movies: {}, user_movies:{}})
        else
            render json: {errors: @user.errors.messages}
        end
    end

    # def user_params
    #     params.require(:user).permit()
    # end
end
