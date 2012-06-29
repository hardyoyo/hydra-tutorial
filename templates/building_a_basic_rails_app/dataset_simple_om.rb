class Dataset < ActiveFedora::Base
  include OM::XML::Document

  set_terminology do |t|
    t.root :path => 'root', :xmlns => nil
    t.title
    t.author
    t.url
    t.description
  end

  def self.xml_template
    Nokogiri::XML::Builder.new do |xml|
      xml.root do
        xml.title
        xml.author
        xml.url
        xml.description
      end
    end.doc
  end
end
