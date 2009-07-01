require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/customers/new.html.erb" do
  include CustomersHelper

  before(:each) do
    assigns[:customer] = stub_model(Customer,
      :new_record? => true
    )
  end

  it "renders new customer form" do
    render

    response.should have_tag("form[action=?][method=post]", customers_path) do
    end
  end
end
