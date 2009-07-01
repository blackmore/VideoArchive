require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/videos/edit.html.erb" do
  include VideosHelper

  before(:each) do
    assigns[:video] = @video = stub_model(Video,
      :new_record? => false
    )
  end

  it "renders the edit video form" do
    render

    response.should have_tag("form[action=#{video_path(@video)}][method=post]") do
    end
  end
end
