class CreateSongs < ActiveRecord::Migration
	def up
	    create_table :songs do |t|
	      t.string 'title'
	      t.string 'singer'
	      t.string 'writer'
	      t.string 'release_date'
	      t.string 'genere'
	      t.string 'length'
	      t.timestamps null: false
	    end
	  end
	  def down
	    drop_table 'songs'
	  end

end
