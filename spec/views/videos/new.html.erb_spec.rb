require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/videos/new.html.erb" do
  include VideosHelper

  before(:each) do
    assigns[:video] = stub_model(Video,
      :new_record? => true
    )
  end

  it "renders new video form" do
    render

    response.should have_tag("form[action=?][method=post]", videos_path) do
    end
  end
end
