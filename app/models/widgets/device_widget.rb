# == Schema Information
#
# Table name: device_widgets
#
#  id          :integer          not null, primary key
#  device_id   :integer
#  device_type :string
#

require 'models/widget_base'

class DeviceWidget < ActiveRecord::Base
  inherit WidgetBase
  acts_as :widget
  inject :device_manager

  belongs_to :device, polymorphic: true

  before_save :assign_device_if_only_device_id_is_set

  def type
    "#{device.class.name}Widget"
  end

  def title
    acting_as.title.present? ? acting_as.title : device.name
  end

  def self.attr_accessible
    Widget.attr_accessible + [:device_id]
  end

  private

  def assign_device_if_only_device_id_is_set
    self.device = Device.find(device_id).specific if device_type.nil?
  end
end
