class BandController < ApplicationController
  def top
    @band = Band.all
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)
    @band.save
    redirect_to band_top_path, notice: 'バンドを登録しました'
  end

  private

  def band_params
      params.require(:band).permit(:name, :member, :genre, :introduction)
  end
end
