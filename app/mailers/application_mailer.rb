class ApplicationMailer < ActionMailer::Base
  # デフォルトでの送信元のアドレス
  default from: "kazusako1818@gmail.com"

  def hello(name)
    @name = name
    mail(
      to:      'kazusako1818@gmail.com',
      subject: 'Mail from Message',
    ) do |format|
      format.html
    end
  end
end
