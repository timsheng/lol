#encoding: utf-8
class OslPage < Lol::Page
	
	page_url "http://www.overseasstudentliving.com/uk-en/london-apartment-for-rent/nido-kings-cross"

	li :first_picture, :xpath => "//div[@class='strip']/ul/li"

	link :right_arrow, :class => "right"

	li :second_picture, :xpath => "//div[@class='strip']/ul/li[2]"

	def first_picture_class 
		first_picture_element.attribute_value(:class)
	end

	def second_picture_class
		second_picture_element.attribute_value(:class)
	end

end