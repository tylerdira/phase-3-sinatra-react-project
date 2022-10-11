class FavoritesController < ApplicationController 
    get '/favorites/:id' do
      user = User.find(params[:id])
      favorites = user.favorites
      favorites.to_json
    end
    post '/favorites' do
      new_post = Favorite.create(params)
      new_post.to_json
    end
    delete '/favorites/:id' do
      movie = Favorite.find(params[:id])
      movie.destroy
      movie.to_json
    end
    patch '/favorites/:id' do
      comment = Favorite.find(params[:id])
      comment.update(comments: params[:comments])
      comment.to_json
    end
end