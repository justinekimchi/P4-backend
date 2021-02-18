class UserMoviesController < ApplicationController
    def index
        user_movies = UserMovie.all
        render json: user_movies.as_json
    end

    def create
        @movie_list = UserMovie.new(fetch_params)
        movie_list_validation
    end

    def update
        user_movie = UserMovie.find(params[:id])
        user_movie.update(fetch_params)
        render json: user_movie
    end

    def destroy
        @movie_list = UserMovie.find(params[:id])
        @movie_list.destroy();
        render json: {message: "Successfully Removed"}
    end

    private

    def fetch_params
        params.require(:user_movie).permit(:user_id, :movie_id, :user_scream_rating)
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
