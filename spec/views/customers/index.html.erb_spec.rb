require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/customers/index.html.erb" do
  include CustomersHelper

  before(:each) do
    assigns[:customers] = [
      stub_model(Customer),
      stub_model(Customer)
    ]
  end

  it "renders a list of customers" do
    render
  end
end
