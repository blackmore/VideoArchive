require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/customers/edit.html.erb" do
  include CustomersHelper

  before(:each) do
    assigns[:customer] = @customer = stub_model(Customer,
      :new_record? => false
    )
  end

  it "renders the edit customer form" do
    render

    response.should have_tag("form[action=#{customer_path(@customer)}][method=post]") do
    end
  end
end
