module DumbCoder
  extend self

  def load(data)
    data || {}
  end

  def dump(data)
    data || {}
  end
end

class User < ApplicationRecord
  typed_store :settings, coder: JSON do |s|
    s.boolean :weekly_email, default: true
    s.boolean :monthly_newsletter, default: true
  end

  typed_store :preferences, coder: DumbCoder do |p|
    p.decimal :playback_rate, default: 1
  end
end
