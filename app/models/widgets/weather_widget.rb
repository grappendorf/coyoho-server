# == Schema Information
#
# Table name: weather_widgets
#
#  id :integer          not null, primary key
#

class WeatherWidget < ActiveRecord::Base

  inherit WidgetBase

  is_a :widget

  before_validation :set_default_title

  def self.attr_accessible
    Widget.attr_accessible
  end

  private
  def set_default_title
    self.title = 'Weather' unless self.title.present?
  end

end
