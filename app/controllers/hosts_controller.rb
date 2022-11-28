class HostsController < ApplicationController
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

  # ホストデータのストロングパラメータ
  private

  def gests
    params.require(:hosts).permit( :encrypted_password)
  end
end
