require 'rails_helper'

RSpec.describe "albums/edit", type: :view do
  before(:each) do
    @album = assign(:album, Album.create!(
      :name => "MyString",
      :artist => nil,
      :date_released => "MyString"
    ))
  end

  it "renders the edit album form" do
    render

    assert_select "form[action=?][method=?]", album_path(@album), "post" do

      assert_select "input[name=?]", "album[name]"

      assert_select "input[name=?]", "album[artist_id]"

      assert_select "input[name=?]", "album[date_released]"
    end
  end
end
