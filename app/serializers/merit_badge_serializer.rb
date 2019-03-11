# frozen_string_literal: true

class MeritBadgeSerializer < ActiveModel::Serializer
  attributes :id, :name, :completed, :notes
  has_one :user
end
