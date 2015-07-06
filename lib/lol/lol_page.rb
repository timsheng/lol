require 'lol/errors'
module Lol
  class Page
    include PageObject

    def turn_to dtp
      raise InvalidLolPageError unless dtp < Lol::Page
      dtp.new(@browser)
    end

    #def data_driven hash, &blk
    #  raise ArgumentError unless hash.is_a?(Hash)
    #  hash.each do |mtd, data|
    #    m_with_eql = (mtd.to_s + '=').to_sym
    #    if respond_to?(m_with_eql)
    #      #self.send(m_with_eql, data)
    #      eval "self.#{m_with_eql.to_s}(data)"
    #    elsif respond_to?(mtd.to_sym)
    #      self.send(mtd.to_sym).send(data.to_sym)
    #    end #if
    #  end #each
    #  class_eval &blk if block_given?
    #end

    def method_missing(m, *args, &blk)
      if @browser.respond_to? m
        @browser.send(m, *args, &blk)
      else
        super
      end #if
    end

  end #Page

end #Lol
