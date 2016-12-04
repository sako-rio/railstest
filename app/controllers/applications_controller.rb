class ApplicationsController < ApplicationController
  def index
    require 'date'
    require 'rubygems'
    require 'active_support/time'
    @days = []
    today = Date.today
    1.upto(180) do |i|
      @days << (Date.parse(today.to_s) + i.day).to_s
    end
    @age = [*(18..60)]
    @height = [*(130..190)]
    @weight = [*(30..80)]
    @cup = [*('A'..'L')]
    @inquiry = Application.new
    @bust = [*('50'..'150')]
    @waist = [*('30'..'100')]
    @hip = @bust
    @time = [*('0'..'24')]
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
  end

  def application_params
    params[:application].permit(
      :name, :age, :height, :weight, :threesize, :cup, :address, :experience,
      :profession, :preferreddate, :question, :contact, :bust, :waist, :hip, :date, :time)
  end
end
