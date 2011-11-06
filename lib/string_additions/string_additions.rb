# encoding: utf-8

module StringAdditions
  def lcolstrip(indent = 0)
    gsub(/\A *\n|\n *\z|^ {#{get_min_spaces - indent}}/, '')
  end

  private
    def get_min_spaces
      scan(/^( *)[[:alnum:]]+/).flatten.min.length
    end
end
