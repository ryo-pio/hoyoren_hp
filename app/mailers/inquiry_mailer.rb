class InquiryMailer < ApplicationMailer
  def send_mail(inquiry)
    @inquiry = inquiry
    mail(
      from: 'hoyoren.sgbdayo@gmail.com',
      to:   'ryosakoi21@icloud.com',
      subject: 'お問い合わせ通知'
    )
  end
end
