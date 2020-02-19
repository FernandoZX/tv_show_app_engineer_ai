# frozen_string_literal: true

Rails.application.routes.draw do
  root 'tv_shows#index'
  devise_for :users

  resource :tv_shows

  get 'mark_favourite', to: 'favourites_tv_shows#mark_favourite'
  get 'unmark_favourite', to: 'favourites_tv_shows#unmark_favourite'

  get 'set_reminder', to: 'reminder_tv_shows#set_reminder'
  get 'unset_reminder', to: 'reminder_tv_shows#unset_reminder'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
