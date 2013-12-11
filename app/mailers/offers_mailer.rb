#encoding: utf-8
class OffersMailer < ActionMailer::Base
  default from: 'mfcshedevr@gmail.com',
            to: 'mfc-shedevr@mail.ru'
  def create(offer)
    @offer = offer
    mail subject: 'Новое сообщение на сайте'
  end
end
