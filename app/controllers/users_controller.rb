class UsersController < ApplicationController
  def mail_send
    @mail = NoticeMailer.sendmail_confirm(application_params).deliver
    render :action => index
    # render :text => '<body style="font-size: 400%;
    #   background-color: #000000;
    #   color: #C0C0C0;
    #   height: 150px;
    #   font-family: "MS 明朝";">
    #   お問い合わせいただきありがとうございました。<br>
    #   改めて担当者よりご連絡いたします。
    #   <div align="center">
    #     <div class="footer">
    #       <table>
    #         <tr>
    #           <td><%= link_to 'TOP', items_path %></td>
    #         </tr>
    #       </table>
    #     </div>
    #   </body>'
  end

  def index
  end

  def application_params
    params.require(:application).permit(
      :name, :age, :height, :weight, :threesize, :cup, :address, :experience,
      :profession, :preferreddate, :question)
  end
end
