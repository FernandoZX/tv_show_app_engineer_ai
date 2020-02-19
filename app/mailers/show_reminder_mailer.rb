# frozen_string_literal: true

class ShowReminderMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def show_reminder(user_id, tv_show_id)
    user = User.find(user_id)
    tv_show = TvShow.find(tv_show_id)
    @username = user.email
    @tv_show_name = tv_show.name
    @tv_show_timing = tv_show.timing.strftime('%d %m %I:%M %p')
    mail(to: user.email, subject: 'tv Show reminder')
  end
end
