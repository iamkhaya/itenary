require 'rails_helper'

RSpec.describe "providers/opening_times/show", type: :view do
  before(:each) do
    @providers_opening_time = assign(:providers_opening_time, Providers::OpeningTime.create!(
      :opening_time => "Opening Time",
      :timestamp => "Timestamp",
      :day_of_week => "Day Of Week"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Opening Time/)
    expect(rendered).to match(/Timestamp/)
    expect(rendered).to match(/Day Of Week/)
  end
end
