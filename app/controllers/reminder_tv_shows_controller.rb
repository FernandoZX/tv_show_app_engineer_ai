# frozen_string_literal: true

class ReminderTvShowsController < ApplicationController
  def set_reminder
    puts 'marked test'
    tv_show = TvShow.find(params[:tv_show_id])
    TvShowReminder.create!(
      user_id: params[:user_id],
      tv_show_id: tv_show.id,
      timing_tv_show: tv_show.timing
    )
    puts 'created'
    redirect_to root_path
  end

  def unset_reminder
    puts 'unmarked test'
    unmark = TvShowReminder.where(user_id: params[:user_id], tv_show_id: params[:tv_show_id]).first
    unmark.destroy
    puts 'destroyed'
    redirect_to root_path
  end
end
