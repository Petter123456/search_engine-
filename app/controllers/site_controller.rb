class SiteController < ApplicationController
  def search
    # @artist = Artist.where(name: params[:term]) #run through the database and find me the artist with the right name

      @artist = Artist.where("name LIKE ?", params[:term])  #run through the database and find me the artist with the right name no matter if its lower case
  end
end
