# frozen_string_literal: true

class FavouritesTvShowsController < ApplicationController
  def mark_favourite
    puts 'marked test'
    FavouriteShow.create!(user_id: params[:user_id], tv_show_id: params[:tv_show_id])
    puts 'created'
    redirect_to root_path
  end

  def unmark_favourite
    puts 'unmarked test'
    unmark = FavouriteShow.where(user_id: params[:user_id], tv_show_id: params[:tv_show_id]).first
    unmark.destroy
    puts 'destroyed'
    redirect_to root_path
  end
end
