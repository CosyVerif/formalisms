-- identifier

return function (Layer, identifier)

  local checks    =  Layer.key.checks
  local meta    =  Layer.key.meta
  local refines =  Layer.key.refines
  
  local record  =  Layer.require "cosy/formalism/data.record"
  local literal =  Layer.require "cosy/formalism/literal"
  local prefix  =  Layer.require "cosy/formalism/literal.identifier"


 
  identifier [refines] = {
    literal, 
  }
  
  identifier [meta] = {
    [record] = {
     value = { value_type = false },
    },
  }
  return identifier
end
