# frozen_string_literal: true

every 1.hour do
  ShowReminderJob.perform_later
end
