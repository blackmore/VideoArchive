require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/customers/show.html.erb" do
  include CustomersHelper
  before(:each) do
    assigns[:customer] = @customer = stub_model(Customer)
  end

  it "renders attributes in <p>" do
    render
  end
end
