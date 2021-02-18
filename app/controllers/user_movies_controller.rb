class UserMoviesController < ApplicationController
    def create
        @movie_list = UserMovie.new(fetch_params)
        movie_list_validation
    end

    def destroy
        @movie_list = UserMovie.find(params[:id])
        @movie_list.destroy();
        render json: {message: "Successfully Removed"}
    end

    private

    def fetch_params
        params.require(:movie_list).permit(:user_id, :movie_id)
    end

    def movie_list_validation
        if @movie_list.valid?
            @movie_list.save
            render json: @movie_list
        else
            render json: {errors: @movie_list.errors.messages}
        end
    end
end
