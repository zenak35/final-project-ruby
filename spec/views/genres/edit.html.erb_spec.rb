require 'rails_helper'

RSpec.describe "genres/edit", type: :view do
  before(:each) do
    @genre = assign(:genre, Genre.create!(
      :name => "MyString",
      :song => nil
    ))
  end

  it "renders the edit genre form" do
    render

    assert_select "form[action=?][method=?]", genre_path(@genre), "post" do

      assert_select "input[name=?]", "genre[name]"

      assert_select "input[name=?]", "genre[song_id]"
    end
  end
end
