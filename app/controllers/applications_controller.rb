class ApplicationsController < ApplicationController
  def index
    @inquiry = Application.new
    render action: 'index'
  end

  def confirm
    @application = Application.new(application_params)
    if @application.valid?
      # OK
      render action: 'confirm'
    else
      # NG
      render action: 'index'
    end
  end

  def thanks
    # User = Struct.new(:name, :email)
    @application = Application.new(application_params)
    user = User.new("name", "kazusako1818@gmail.com")

    respond_to do |format|
      if @application.save
        # 擬似的なUser構造体を作成する
        # user = Application.new("name", "<送信したいメールアドレス>")
        # deliverメソッドを使って、メールを送信する
        PostMailer.post_email(user, @application).deliver
        format.html { redirect_to @application, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @application }
        else
        format.html { render :new }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end


    # ApplicationMailer.received_email(@application).deliver
    # render action: 'thanks'
  end

  def application_params
    params[:application].permit(
      :name, :age, :height, :weight, :threesize, :cup, :address, :experience,
      :profession, :preferreddate, :question)
  end
end
