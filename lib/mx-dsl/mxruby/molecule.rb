#
#
#

module MXdsl
	module MXruby
		class Molecule < com.metamolecular.mx.model.DefaultMolecule
			def self.build(n,&blk)
				#
			end
			def atoms(&blk) 
			end
			def bonds(&blk)
			end
			def properties(&blk)
			end
			def descriptors(&blk)
			end
			def method_missing(m,*args)
			end
			
			# =========================
			def initialize(*n,&blk)
				super #@@ - 
			end
			
			# =========================
			
			def atom!(*a); end
			def bond!(*b); end
			
			
			
		end #class
	end #MXruby
end #MXdsl