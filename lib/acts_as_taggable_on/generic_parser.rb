class MyParser < ActsAsTaggableOn::GenericParser
  def parse
    ActsAsTaggableOn::TagList.new.tap do |tag_list|
      tag_list.add @tag_list.split(',').map(&:strip).reject(&:empty?)
    end
  end
end
