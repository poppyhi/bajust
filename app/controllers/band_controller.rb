class BandController < ApplicationController
  def top
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new
    @band.name = params[:name]
    @band.member = params[:member]
    @band.genre = params[:genre]
    @band.introduction = params[:introduction]
    @band.save
  end
end
