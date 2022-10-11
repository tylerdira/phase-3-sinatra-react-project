class Favorite < ActiveRecord::Base
    belongs_to :users

    def create_favorite(title, genre, rating, comments, user_id)
        Favorite.create(title: title, genre: genre, rating: rating, comments: comments, user_id: user_id)
    end

    def update_favorite_rating(favorite_id, new_rating)
        Favorite.update(favorite_id, rating: new_rating)
    end

    def delete_favorite()
        self.destroy()
    end
end