require 'rails_helper'

RSpec.describe "songs/show", type: :view do
  before(:each) do
    @song = assign(:song, Song.create!(
      :name => "Name",
      :artist => nil,
      :genre => nil,
      :date_released => "Date Released",
      :album => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Date Released/)
    expect(rendered).to match(//)
  end
end
