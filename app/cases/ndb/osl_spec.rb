#encoding: utf-8
require File.expand_path 'app/cases/spec_helper'

describe 'osl page', :osl do 
	# include PageObject::PageFactory

	let(:osl_page) do 
		osl_page = $navi.goto_osl_page
	end

	it "first picture should be selected" do
		osl_page.first_picture_element.when_present.click
		osl_page.first_picture_class.should eql ("a-thumb selected")
	end

	it "second picture should be selected" do
		osl_page.right_arrow
		osl_page.second_picture_class.should eql ("a-thumb selected")
 	end
end
