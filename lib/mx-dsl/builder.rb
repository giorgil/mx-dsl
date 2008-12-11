# molecule "id" do
#   atoms {
#      comment Symb id-num R/S x y z
#      C 1 0 0.234 0.345 0.456
#      C 2 -1 0.235 1.345 1.23            
#   }
#   bonds {
#      comment bond-type atoms
#      single [1,2]
#      poly [3,4,6,12]
#   }
#   properties {
#      ID50 0.0023
#      bp 2.34
#   }
#   descriptors {
#      elstate :weight=>'gast-mars'
#      autocorr :range=>[1,5.6], :weight=>'total-charge'
#      wiener :3d=>true    
#   }
# end
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