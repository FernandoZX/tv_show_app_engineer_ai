# frozen_string_literal: true

module TvShowsHelper
  def favourite_helper(user, tv_show)
    FavouriteShow.where(
      user_id: user.id,
      tv_show_id: tv_show.id
    ).first
  end

  def reminder_helper(user, tv_show)
    TvShowReminder.where(
      user_id: user.id,
      tv_show_id: tv_show.id
    ).first
  end
end
