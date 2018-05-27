class YuzasController < ApplicationController
  def show
    @yuza = Yuza.find(params[:id])
      @hons = @yuza.hons
      @hon = Hon.new
  end

  def edit
    @yuza = Yuza.find(params[:id])
      if @yuza != current_yuza
        redirect_to hons_path, notice:'＜error＞自分以外のマイページは編集することができません'      
      end
  end

  def update
    @yuza = Yuza.find(params[:id])
    if @yuza.update(yuza_params)
      redirect_to yuza_path(@yuza.id)
    else
      redirect_to yuza_path(@yuza.id), notice: '自己紹介は５０文字以内にしてください'
    end
  end

  private

  def yuza_params
    params.require(:yuza).permit(:name, :yuza_jikosyo, :yuza_gazou)
  end

end
