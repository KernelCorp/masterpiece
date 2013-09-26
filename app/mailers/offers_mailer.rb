#encoding: utf-8
class OffersMailer < ActionMailer::Base
  default from: 'maxim21214@gmail.com',
            to: 'maxim21214@gmail.com'
  def create(offer)
    @offer = offer
    mail subject: 'Новое сообщение'
  end
end
