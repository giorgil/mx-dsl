# classes Atom, Bond, Molecule are void for the testing purpose. (I.e., right now, they are not based on # the mx package.
# However, This module demonstrates how to extend kernel and how to handle bloks to make dsl.









class Atom
	attr_accessor :element
	def initialize(*args)
		raise ArgumentError unless args.size==7
		@element=args.first
		@name=args[1]
	end
end

class Bond
	attr_accessor :atoms
	attr_reader :bond_type
	def initialize(*args)
		#raise ArgumentError unless args.size==2
		@bond_type=args.first
		@atoms=args.slice(1..args.size)
	end
end

class Molecule
	attr_reader :atoms
	attr_reader :bonds
	attr_reader :name
	
	def initialize(name)
		@name=name
		@atoms=[]
		@bonds=[]
		@exp_props=[]
		#capture(&blk)
	end
	
	def atom(*args)
		@atoms<<Atom.new(*args)
	end
	
	def bond(*args)
		@bonds<<Bond.new(*args)
	end
	
	def method_missing(n,*args)
		nn=args.insert(0,n.to_s)		
		if [:single,:double,:triple,:poly].member? n
			#puts "#{n} as bond was missing"
			bond(*nn) 
		elsif
			atom(*nn)
			#puts "#{n} as atom was missing"
		else
			super
		end
		
		
	end
	
	def capture(&blk)
		instance_eval &blk
	end
end

class Dataset
	attr_reader :molecules
	attr_reader :name
	
	def initialize(name)
		@molecules=[]
		@name=name
		#capture(&blk)
	end
	def molecule(name,&blk)
		m=Molecule.new(name)
		m.capture(&blk)
		@molecules<<m
	end
	
	def capture(&blk)
		instance_eval &blk
	end
end

module Kernel
	def dataset(name,&blk)		
		d=Dataset.new(name)
		Object.const_set(name.capitalize,d)
		d.capture(&blk)
		d
	end
end

# as we see, the code below is pretty readable for a chemist not versed in programming.
# it is still a regular ruby code.
# therefore, this approach is suitable for making ruby-based textual files to manage chemical information
dataset "test1" do
	molecule "testmol1" do
 		H '1', 2,3,4,5,7
 		C '2', 2,3,4,5,7
 		single 1,2
 	end
 	molecule "testmol2" do
 		H '1', 2,3,4,5,7
 		C '2', 2,3,4,5,7
 		single 1,2
 		H '3', 2,3,4,5,7
 		C '4', 2,3,4,5,7
 		double 1,3
 		H '5', 2,3,4,5,7
 		C '6', 2,3,4,5,7
 		triple 1,2
 	end
end

puts "*"*43
puts "*"*21+"results:"+"*"*22
puts "*"*43
Test1.molecules.each do |m|
	puts "#{m.name} - name"
	m.bonds.each do |b|
		puts "#{b.atoms} - atoms of the bond of type #{b.bond_type}"
	end
	m.atoms.each do |a|
		puts "#{a.element} - element"
	end
	puts "*"*43
end
		
			
		