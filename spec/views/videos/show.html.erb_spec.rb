require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/videos/show.html.erb" do
  include VideosHelper
  before(:each) do
    assigns[:video] = @video = stub_model(Video)
  end

  it "renders attributes in <p>" do
    render
  end
end
