#encoding: utf-8
class OffersMailer < ActionMailer::Base
  default from: 'mfc-shedevr@mail.ru',
            to: 'mfc-shedevr@mail.ru'
  def create(offer)
    @offer = offer
    mail subject: 'Новое сообщение на сайте'
  end
end
