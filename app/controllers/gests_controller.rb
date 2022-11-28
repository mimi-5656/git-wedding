class GestsController < ApplicationController
  def top
  end

  def new
		session.delete(:gest)
		@gest = Gest.new
	end

	def back
		@gest = Gest.new(session[:gest])
		session.delete(:gest)
		render :new
	end

	def confirm
		@gest = Gest.new(gest_params)
		session[:gest] = @gest
		if @gest.invalid? #バリデーションエラーの場合にtrue、エラーがあった場合には入力画面に戻る
			render :new
		end
	end

	def complete
		Gest.create!(session[:gest])
		session.delete(:gest)

  def create
    @gest = Gest.new(gest_params)
    @gest.user_id = current_user.id
    if @book.save
      redirect_to about_path
      flash[:notice] = "RSVP was successfully created."
      redirect_to gest_path(@gest.id)
      flash[:notice] = "You have created RSVP successfully."
    else
      @hosts = current_user
      @gests = Gest.all
      render :index
    end
  end

  def index
    @gests = Gest.all
    @gest = Gest.new
    @host = current_user
  end

  def show
    @gest = Gest.find(params[:id])
    @gestnew = Gest.new
    @gests = Gest.all
  end

  def edit
    @gest = Gest.find(params[:id])
    if @gest.user == current_user
      render "edit"
    else
      redirect_to about_path
    end
  end

  def update
    @gest = Gest.find(params[:id])
    if @gest.update(gest_params)
      flash[:notice] = "内容の変更に成功しました"
       redirect_to about_path(@gest.id)
    else
      @gests = Gest.all
      render :edit
    end
  end

  # ゲストデータのストロングパラメータ
  private

  def gests
    params.require(:gests).permit(:firstname, :lastname, :kana_firstname, :kana_lastname, :allergy, :message, :is_deleted)
  end
end
