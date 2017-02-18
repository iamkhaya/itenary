require 'rails_helper'

RSpec.describe "providers/opening_times/edit", type: :view do
  before(:each) do
    @providers_opening_time = assign(:providers_opening_time, Providers::OpeningTime.create!(
      :opening_time => "MyString",
      :timestamp => "MyString",
      :day_of_week => "MyString"
    ))
  end

  it "renders the edit providers_opening_time form" do
    render

    assert_select "form[action=?][method=?]", providers_opening_time_path(@providers_opening_time), "post" do

      assert_select "input#providers_opening_time_opening_time[name=?]", "providers_opening_time[opening_time]"

      assert_select "input#providers_opening_time_timestamp[name=?]", "providers_opening_time[timestamp]"

      assert_select "input#providers_opening_time_day_of_week[name=?]", "providers_opening_time[day_of_week]"
    end
  end
end
