require 'test_helper'

class RushingTest < ActiveSupport::TestCase
  def setup
    @rushing = Rushing.new({player: "Joe Banyard",
      team: "JAX", pos: "RB", att: 2, att_g: 2,
      yds: 7, avg: 3.5, yds_g: 7, td: 0, lng: 7,
      first: 0, first_p: 0, twenty_p: 0, forty_p: 0, fum: 0})
  end

  test "rushing should not save with empty values" do
    rushing = Rushing.new
    assert_not rushing.save, "Saved rushing without any attributes"
  end

  test "rushing should not save without player" do
    @rushing.player = nil
    assert_not @rushing.save, "Saved rushing without player"
  end

  test "rushing should not save without team" do
    @rushing.team = nil
    assert_not @rushing.save, "Saved rushing without team"
  end

  test "rushing should not save without pos" do
    @rushing.pos = nil
    assert_not @rushing.save, "Saved rushing without pos"
  end

  test "rushing should not save without att" do
    @rushing.att = nil
    assert_not @rushing.save, "Saved rushing without att"
  end

  test "rushing should not save without att_g" do
    @rushing.att_g = nil
    assert_not @rushing.save, "Saved rushing without att_g"
  end

  test "rushing should not save without yds" do
    @rushing.yds = nil
    assert_not @rushing.save, "Saved rushing without yds"
  end

  test "rushing should not save without avg" do
    @rushing.avg = nil
    assert_not @rushing.save, "Saved rushing without avg"
  end

  test "rushing should not save without yds_g" do
    @rushing.yds_g = nil
    assert_not @rushing.save, "Saved rushing without yds_g"
  end

  test "rushing should not save without td" do
    @rushing.td = nil
    assert_not @rushing.save, "Saved rushing without td"
  end

  test "rushing should not save without lng" do
    @rushing.lng = nil
    assert_not @rushing.save, "Saved rushing without lng"
  end

  test "rushing should not save without first" do
    @rushing.first = nil
    assert_not @rushing.save, "Saved rushing without first"
  end

  test "rushing should not save without first_p" do
    @rushing.first_p = nil
    assert_not @rushing.save, "Saved rushing without first_p"
  end

  test "rushing should not save without twenty_p" do
    @rushing.twenty_p = nil
    assert_not @rushing.save, "Saved rushing without twenty_p"
  end

  test "rushing should not save without forty_p" do
    @rushing.forty_p = nil
    assert_not @rushing.save, "Saved rushing without forty_p"
  end

  test "rushing should not save without fum" do
    @rushing.fum = nil
    assert_not @rushing.save, "Saved rushing without fum"
  end
end
