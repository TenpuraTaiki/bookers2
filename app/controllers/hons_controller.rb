class HonsController < ApplicationController
  def index
    @hons = Hon.all
    @hon = Hon.new
    @yuza = current_yuza
  end

  def show
    @hon = Hon.find(params[:id])
  end

  def create
    @hons = Hon.all
    @yuza = current_yuza
    @hon = Hon.new(hon_params)
    @hon.yuza_id = current_yuza.id
    if @hon.save
      redirect_to hons_path, notice:'投稿成功！こんぐらちゅれーしょん！'
    else
      render :index
    end
  end

  def edit
    @hon = Hon.find(params[:id])
    if @hon.yuza != current_yuza
      redirect_to hons_path, notice:'＜error＞投稿者以外は編集することができません'      
    end
  end

  def update
    hon = Hon.find(params[:id])
    if hon.update(hon_params)
      redirect_to hon_path(hon), notice:'編集成功っす'
    else
      redirect_to hon_path(hon), notice:'編集できませんでした。タイトルと感想は空白にできません。感想は２００文字までです'
    end

  end

  def destroy
    hon =Hon.find(params[:id])
    hon.destroy
    redirect_to hons_path, notice:'削除しました'
  end

  def about
  end

  def yuzas
    @yuzas = Yuza.all
    @yuza = current_yuza
  end

  def kansougun
    @hons = Hon.all
    @yuza = current_yuza
  end

  private
    def hon_params
      params.require(:hon).permit(:title, :kansou)
    end
end
