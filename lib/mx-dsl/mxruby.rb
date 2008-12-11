# Let us start with making a semantic adaptation of mx, without dsl suger:
# Molecule.build "id" do |m|
#    m.atoms { |atoms_collection|
#        atoms_collection.add_atom "C", 1, 0, 0.2345, 0.3456, 1.23
#        atoms_collection.add_atom "C", 2, -1, 1.2456, 1.4543, 2.345
#        # ...
#    }
#    m.bonds { |bonds_collection|
#        bonds_collection.add_bond "single", [1,2]
#        bonds_collection.add_bond "poly", [3,4,5,6,7,8]
#        # ...
#    }
#    m.descriptors { |descroptors_collection|
#        descroptors_collection.add_descr "randic"
#        descroptors_collection.add_desc "autocorr", :range=>[1,6.5], :weight=>"sigma"
#        # ...
#    }
#    m.properties { |props_collection|
#        props_collection.add_prop "bp", 23.56
#        # ...
#    }
#end
#
#