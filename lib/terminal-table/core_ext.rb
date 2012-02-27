
class String
  def align position, length
    delta = 0
    if self.to_s != nil and length < self.length
        str = self.to_s.gsub(/\x1b(\[|\(|\))[;?0-9]*[0-9A-Za-z]/, '')
        str = str.gsub(/\x1b(\[|\(|\))[;?0-9]*[0-9A-Za-z]/, '')
        str = str.gsub(/[\x03|\x1a]/, '')
        delta = self.length - str.length
    end
    self.__send__ position, length + delta
  end
  alias_method :left, :ljust
  alias_method :right, :rjust
end
