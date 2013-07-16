class ActorsMovies < ActiveRecord::Migration
  def change
	  create_table 'actors_movies', :id => false do |t|
	    t.column :movie_id, :integer
	    t.column :actor_id, :integer
	  end
	end
end
