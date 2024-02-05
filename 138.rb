=begin

Question: Storing Codes

Description:
  Create a class called Code that allows to store arbitrary "named code" as in the example below:
    Code.green = '00FF00'
    Code.red = 0xFF0000

    Code.green # => known code, return exactly as spcified: '00FF00'
    Code.red   # => known code, return exactly as spcified: 0xFF0000
    Code.blue  # => unknown code, raise exception

  Basically, it starts from a blank slate. If you try to call any method on it, it raises an exception.

  Then, whenever somebody specifies a new code by calling Code.<name-of-the-code> = <something>, it
  remembers that, and the next time somebody calls the <name-of-the-code> method, it returns the stored
  value (<something>). Note that this value can be anything - a string, a number, any object, including nil.

  If a method is called for an unknown code, an exception should still be raised.

=end

class Code
  @store = {}

  def self.method_missing(method_name, *args, &block)
    m = method_name.to_s
    n = m.chomp('=')
    return @store[n].first if @store[n]

    if m.include?('=')
      @store[n] = args
    else
      raise 'Error'
    end
  end

end

=begin

Others' solutions:

class Code
  @vars = {}
  def self.method_missing(sym, *args)
    sym_s = sym.to_s
    if sym_s =~ /=$/
      @vars[sym_s.chop] = args.first
    else
      @vars.fetch(sym_s) { fail 'unknown name' }
    end
  end
end

# 这个不错
class Code
  def self.method_missing(method, *args, &block)
    if method =~ /(.+)=/
      define_singleton_method($1) { args.first }
    else
      super
    end
  end
end

class Code
  class << self
    def create_method(name, value)
      self.class.instance_eval do
        define_method(name) {value}
      end
    end
  end

  def self.method_missing(m, *args, &block)
    if m[-1] == '='
      Code.create_method(m[0...-1], args[0])
    else
      throw "Failed"
    end
  end
end

class Code
  @codes = { }

  def self.method_missing(method, *args, &block)
    m = method.to_s

    if method =~ /=$/
      @codes[m.chop] = args.first
    else
      @codes.fetch(m)
    end
  end
end

=end