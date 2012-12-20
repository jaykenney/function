class Function
  def method_missing(meth, *args, &block)
    if meth.to_s =~ /^.+=$/
      self.class.send(:attr_accessor,meth.to_s.gsub(/=/,'').to_sym)
      return self.send(meth, *args, &block)
    else
      super
    end
  end

  def initialize(&block)
    @block = block
    super()
  end

  def call(*args)
    self.instance_exec(*args, &@block)
  end

  alias_method :[], :call

end
