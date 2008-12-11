module Kernel
	def molecule(*args,&blk)
		m=Builder::Builder.new *args, &blk
		#register m in the object space?
		m
	end
	
	def comment(s); end
end