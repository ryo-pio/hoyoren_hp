class InquiryMailer < ApplicationMailer

  def form_mail(inquiry)
    @inquiry = Inquiry.new
    InquiryMailer.send_mail(inquiry).deliver_now
  end


  def send_mail(inquiry)
    @inquiry = inquiry
    # attachments['sample.jpg'] = ..File.read('./tmp/sample.jpg')
    mail(
      from: 'hoyoren.hp2019@gmail.com',
      to:   'hoyoren.hp2019@gmail.com',
      subject: 'お問い合わせ通知'
    )
  end
end