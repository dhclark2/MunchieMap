class PagesController < ApplicationController
  def listing
  end

  def landing
  # @latest_stores = Store.order(created_at: :desc).limit(5)
    @latest_stores = Store.all
  end
end
