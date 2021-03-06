require 'rails_helper'

RSpec.describe "albums/index", type: :view do
  before(:each) do
    assign(:albums, [
      Album.create!(
        :name => "Name",
        :artist => nil,
        :date_released => "Date Released"
      ),
      Album.create!(
        :name => "Name",
        :artist => nil,
        :date_released => "Date Released"
      )
    ])
  end

  it "renders a list of albums" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Date Released".to_s, :count => 2
  end
end
