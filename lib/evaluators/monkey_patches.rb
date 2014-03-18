class NilClass
	def try(name, *args)
    nil
  end
end

class Object
  def try(name, *args)
    send(name, *args)
  end
end

class String
  def capitalize
  	"#{send(:[], 0).upcase}#{send(:[], 1..-1)}"
  end
end