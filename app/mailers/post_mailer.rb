class PostMailer < ActionMailer::Base
  default from: "sako@rio.ne.jp"

  def post_email(user, post)
    @title = post.title
    mail to: 'kazusako1818@gmail.com', subject: "記事を投稿しました"
  end
end
