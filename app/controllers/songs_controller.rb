class SongsController < ApplicationController 
	def index  
		@songs = Song.all 
  	end 
  	
  	def show
  		id = params[:id] # retrieve movie ID from URI route
  		@song = Song.find(id) # look up movie by unique ID
	end 

	def new
	  # default: render 'new' template
	end 

	def create 
		@song = Song.create!(songs_params) 
		redirect_to songs_path 
	end   

	def edit 
	    @song = Song.find(params[:id]) 
	end 

	def update 
	    @song = Song.find(params[:id]) 
	    if @song.update_attributes(songs_params) 
	      redirect_to(:action => 'index', :id => @song.id) 
	    else 
           render 'edit' 
	     end 
	 end 

	def destroy
        @song = Song.find(params[:id])
        @song.destroy
        redirect_to(:action => 'index')
    end
	
	private
	def songs_params 
		params.require(:song).permit(:title, :singer, :writer, :release_date, :genere, :length)
	end
end
