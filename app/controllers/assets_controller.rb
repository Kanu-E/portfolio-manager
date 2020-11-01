class AssetsController < ApplicationController

  before_action :set_asset, only: [:show, :edit, :update]

  def show
  end

  def new
    @asset = Asset.new(user_id: current_user.id)
  end

  def edit

  end


  def create 
    @asset = Asset.new(asset_params)
      if @asset.save
        redirect_to @asset, notice: 'asset was successfully created.' 
      else
         render :new 
      end
  end

  def update 
    raise params.inspect

      if @asset.update(asset_params)
        redirect_to @asset, notice: 'asset was successfully updated.' 
      else
       render :edit 
      end
  end

  private
  
    def set_asset
      @asset = Asset.find(params[:id])
    end

    def asset_params
      params.require(:asset).permit(:name, :ticker, current_value)
    end
end
