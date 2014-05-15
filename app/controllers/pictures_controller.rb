class PicturesController < ApplicationController
  def new

  end

  def create
    @picture = Picture.new
    @picture.caption = params[:caption]
    @picture.source = params[:source]
    @picture.save

    redirect_to("/all_pictures")
  end

  def index
    @all_pictures = Picture.all
  end


  def show
    @picture = Picture.find(params[:id])
    @source = @picture.source
    @caption = @picture.caption
  end

  def edit

  end

  def update
    @picture = Picture.find(params[:id])
    @picture.caption = params[:caption]
    @picture.source = params[:source]
    @picture.save

    redirect_to("/picture_details/#{@picture.id}")

  end

  def destroy
    @picture = Picture.find(params[:id]).destroy

    redirect_to("/all_pictures")
  end
end
