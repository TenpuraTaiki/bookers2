class HonsController < ApplicationController
  def index
    @hons = Hon.all
    @hon = Hon.new
  end

  def show
    @hon = Hon.find(params[:id])
  end

  def create
    hon = Hon.new(hon_params)
    if hon.save
      redirect_to hons_path, notice:'投稿成功！こんぐらちゅれーしょん！'
    else
      redirect_to hons_path, notice:'投稿できませんでした。タイトルと感想は空白にできません'
    end
  end

  def edit
    @hon = Hon.find(params[:id])
  end

  def update
    hon = Hon.find(params[:id])
    if hon.update(hon_params)
      redirect_to hon_path(hon), notice:'編集成功っす'
    else
      redirect_to hon_path(hon), notice:'編集できませんでした。タイトルと感想は空白にできません'
    end

  end

  def destroy
    hon =Hon.find(params[:id])
    hon.destroy
    redirect_to hons_path
  end

  private
    def hon_params
      params.require(:hon).permit(:title, :kansou)
    end
end
