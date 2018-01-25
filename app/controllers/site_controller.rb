class SiteController < ApplicationController
  def search
    @artist = Artist.all
  end
end
