require 'rails_helper'

RSpec.describe "songs/edit", type: :view do
  before(:each) do
    @song = assign(:song, Song.create!(
      :name => "MyString",
      :artist => nil,
      :genre => nil,
      :date_released => "MyString",
      :album => nil
    ))
  end

  it "renders the edit song form" do
    render

    assert_select "form[action=?][method=?]", song_path(@song), "post" do

      assert_select "input[name=?]", "song[name]"

      assert_select "input[name=?]", "song[artist_id]"

      assert_select "input[name=?]", "song[genre_id]"

      assert_select "input[name=?]", "song[date_released]"

      assert_select "input[name=?]", "song[album_id]"
    end
  end
end
