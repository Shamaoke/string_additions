# encoding: utf-8

module StringAdditions
  def lcolstrip(indent_size = 0)
    gsub(/\A *\n|\n *\z|^ {#{set_spaces(indent_size)}}/, '')
  end

  private
    def get_min_spaces
      scan(/^( *)[[:alnum:]]+/).flatten.min.length
    end

    def set_spaces(indent_size)
      get_min_spaces <= indent_size ? get_min_spaces
                                    : get_min_spaces - indent_size
    end
end
