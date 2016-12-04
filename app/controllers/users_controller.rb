class UsersController < ApplicationController
  def mail_send
    @mail = NoticeMailer.sendmail_confirm(application_params).deliver
    render :action => index
  end

  def index
  end

  def application_params
    params.require(:application).permit(
      :name, :age, :height, :weight, :threesize, :cup, :address, :experience,
      :profession, :preferreddate, :question, :contact, :bust, :waist, :hip, :date, :time)
  end
end
