class Rushing
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActionView::Helpers::NumberHelper

  field :player, type: String
  field :team, type: String
  field :pos, type: String
  field :att, type: Integer
  field :att_g, type: Float
  field :yds, type: Integer
  field :avg, type: Float
  field :yds_g, type: Float
  field :td, type: Integer
  field :lng, type: Integer
  field :lng_t, type: Boolean, default: false
  field :first, type: Integer
  field :first_p, type: Float
  field :twenty_p, type: Integer
  field :forty_p, type: Integer
  field :fum, type: Integer

  index({ yds: 1 })
  index({ lng: 1 })
  index({ td: 1 })

  validates :player, :team, :pos, :att, :att_g,
    :yds, :yds_g, :td, :lng, :first, :first_p, :avg,
    :twenty_p, :forty_p, :fum, presence: true, allow_blank: false

  def ful_lng
    lng_t ? "#{lng}T" : "#{lng}"
  end

  def viewable_yds
    number_with_delimiter(yds)
  end

  def self.from_json
    JSON.parse(File.read(Rails.root.join('public', 'rushing.json')))
  end
end
