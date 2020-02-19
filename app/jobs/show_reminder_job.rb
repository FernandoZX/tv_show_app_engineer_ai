# frozen_string_literal: true

class ShowReminderJob < ApplicationJob
  queue_as :default

  def perform(*_args)
    # Do something later
    reminders = TvShowReminder.all
    reminders.each do |reminder|
      if DateTime.now == (reminder.timing_tv_show - 30.minutes)
        show_reminder(reminder.user_id, reminder.tv_show_id).deliver_now
      end
    end
  end
end
