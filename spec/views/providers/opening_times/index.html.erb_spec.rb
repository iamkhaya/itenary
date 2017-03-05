require 'rails_helper'

RSpec.describe "providers/opening_times/index", type: :view do
  before(:each) do
    assign(:providers_opening_times, [
      Providers::OpeningTime.create!(
        :opening_time => "Opening Time",
        :timestamp => "Timestamp",
        :day_of_week => "Day Of Week"
      ),
      Providers::OpeningTime.create!(
        :opening_time => "Opening Time",
        :timestamp => "Timestamp",
        :day_of_week => "Day Of Week"
      )
    ])
  end

  it "renders a list of providers/opening_times" do
    render
    assert_select "tr>td", :text => "Opening Time".to_s, :count => 2
    assert_select "tr>td", :text => "Timestamp".to_s, :count => 2
    assert_select "tr>td", :text => "Day Of Week".to_s, :count => 2
  end
end
