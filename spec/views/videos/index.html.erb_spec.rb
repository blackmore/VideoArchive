require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/videos/index.html.erb" do
  include VideosHelper

  before(:each) do
    assigns[:videos] = [
      stub_model(Video),
      stub_model(Video)
    ]
  end

  it "renders a list of videos" do
    render
  end
end
