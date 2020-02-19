# frozen_string_literal: true

class TvShowsController < ApplicationController
  def index
    @tv_shows = TvShow.includes(:tv_channel)
                      .order('tv_shows.created_at DESC')
  end
end
