class NoticeMailer < ApplicationMailer
  #デフォルトのヘッダ情報
  default from: "testksako@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_confirm.subject
  #
  def sendmail_confirm(application_params)
    # raise "#{application_params}"
    @greeting = application_params

    mail to: "testksako@gmail.com", subject: "ActionMailer test"
  end
end
