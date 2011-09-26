# encoding: utf-8

module StringAdditions
  def lcolstrip
    gsub(/\A\n|\n\Z|^ {#{get_min_spaces}}/, '')
  end

  private
    def get_min_spaces
      rstrip.scan(%r{^ +}).min.length
    end
end
