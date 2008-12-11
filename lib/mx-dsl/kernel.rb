module Kernel
	
	def dataset(*args,&blk);
		#
	end
	
	def molecule(*args,&blk)
		m=MXdsl::Builder::Builder.new *args, &blk
		#register m in the object space?
		m
	end
	
	def comment(s); end
	
	def mx(kls)
		#imports made easy
	end
end