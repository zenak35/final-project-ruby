require 'rails_helper'

RSpec.describe "artists/edit", type: :view do
  before(:each) do
    @artist = assign(:artist, Artist.create!(
      :playlist => nil,
      :name => "MyString"
    ))
  end

  it "renders the edit artist form" do
    render

    assert_select "form[action=?][method=?]", artist_path(@artist), "post" do

      assert_select "input[name=?]", "artist[playlist_id]"

      assert_select "input[name=?]", "artist[name]"
    end
  end
end
