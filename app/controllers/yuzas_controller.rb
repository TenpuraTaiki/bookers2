class YuzasController < ApplicationController
  def show
    @yuza = Yuza.find(params[:id])
      @hons = @yuza.hons
      @hon = Hon.new
  end

  def edit
    @yuza = Yuza.find(params[:id])
  end

  def update
    @yuza = Yuza.find(params[:id])
    @yuza.update(yuza_params)
    redirect_to yuza_path(@yuza.id)
  end

  private

  def yuza_params
    params.require(:yuza).permit(:name, :yuza_jikosyo, :yuza_gazou)
  end

end
