module MXdsl
	module Builder
		class Builder
			def capture(&blk)
				#safely eval blocks in the context
			end
			
			
			
			def method_missing(n,*a)
			end
		end
	end
end