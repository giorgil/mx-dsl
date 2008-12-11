module MXdsl
	module Builder
		class Builder
			def capture(&blk)
				#safely eval blocks in the context
			end
			def atom!(*args,&blk)
			end
			def any_atom(*args,&blk)
			end
			def H(*args); end
			def C(*args); end
			def Cl(*args); end
			
			def method_missing(n,*a)
			end
		end
	end
end