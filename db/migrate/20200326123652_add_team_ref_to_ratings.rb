class AddTeamRefToRatings < ActiveRecord::Migration[6.0]
  def change
    remove_column :ratings, :user_id
    remove_column :ratings, :film_id
    add_reference :ratings, :user, foreign_key: true
    add_reference :ratings, :film, foreign_key: true
  end
end
