
#
# The Functon module provides python-like functions
# to ruby.
#

class Function
  
  # Supposed to quack like Proc here.
  # However, note how it uses instance_exec, which
  # sets the scope to the class instance.
  def call(*args)
    self.instance_exec(*args, &@block)
  end
  
  # Like Proc, you pass a block to new.
  def initialize(&block)
    @block = block
    super()
  end
  
  # This allows one to set new attributes so long as you
  # do so using '='.
  def method_missing(meth, *args, &block)
    if meth.to_s =~ /^.+=$/
      self.class.send(:attr_accessor,meth.to_s.gsub(/=/,'').to_sym)
      return self.send(meth, *args, &block)
    else
      super
    end
  end

  # Modified to agree with method_missing.
  def respond_to?(meth, include_private = false)
    meth.to_s =~ /^.+=$/ || super
  end
  
  alias_method :[], :call
    
end
