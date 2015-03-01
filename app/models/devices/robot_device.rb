# == Schema Information
#
# Table name: robot_devices
#
#  id :integer          not null, primary key
#

class RobotDevice < ActiveRecord::Base

  inherit DeviceBase
  include XbeeDevice

  is_a :device

  def self.attr_accessible
    Device.attr_accessible
  end

  def self.small_icon()
    '16/cat.png'
  end

  def self.large_icon()
    '32/cat.png'
  end

  def message_received _message
    super
  end

  def current_state
  end

end
