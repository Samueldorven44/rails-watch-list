class RemoveMovieAndListFromBookmarks < ActiveRecord::Migration[7.1]
  def change
    remove_reference :bookmarks, :movies, null: false, foreign_key: true
    remove_reference :bookmarks, :lists, null: false, foreign_key: true
  end
end
