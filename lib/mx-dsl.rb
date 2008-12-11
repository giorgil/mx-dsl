$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

import com.metamolecular.mx
module MxDsl
  VERSION = '0.0.1'
end