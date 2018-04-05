require 'rails_helper'

RSpec.describe "songs/index", type: :view do
  before(:each) do
    assign(:songs, [
      Song.create!(
        :name => "Name",
        :artist => nil,
        :genre => nil,
        :date_released => "Date Released",
        :album => nil
      ),
      Song.create!(
        :name => "Name",
        :artist => nil,
        :genre => nil,
        :date_released => "Date Released",
        :album => nil
      )
    ])
  end

  it "renders a list of songs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Date Released".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
