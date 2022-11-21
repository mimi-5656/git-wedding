class GestsController < ApplicationController
  def top
  end

  def new
  end

  def create
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  # ゲストデータのストロングパラメータ
  private

  def gests
    params.require(:gests).permit(:firstname, :lastname, :kana_firstname, :kana_lastname, :allergy, :message, :is_deleted)
  end
end
