class AssetsController < ApplicationController

  before_action :set_asset, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @asset = Asset.new(user_id: current_user.id)
  end

  def edit

  end


  def create
    
    @asset = Asset.new(asset_params)

    respond_to do |format|
      if @asset.save
        format.html { redirect_to @asset, notice: 'asset was successfully created.' }
        format.json { render :show, status: :created, location: @asset }
      else
        format.html { render :new }
        format.json { render json: @asset.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
 
    respond_to do |format|
      if @asset.update(asset_params)
        format.html { redirect_to @asset, notice: 'asset was successfully updated.' }
        format.json { render :show, status: :ok, location: @asset }
      else
        format.html { render :edit }
        format.json { render json: @asset.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @asset.destroy
    respond_to do |format|
      format.html { redirect_to assets_url, notice: 'asset was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
  
    def set_asset
      @asset = Asset.find(params[:id])
    end

    def asset_params
      params.require(:asset).permit(:name, :ticker)
    end
end
