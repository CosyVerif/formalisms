-- Alphabet

return function (Layer, alphabet, ref)

  local meta          =  Layer.key.meta
  local refines       =  Layer.key.refines
  local record        =  Layer.require "cosy/formalism/data.record"
  local identifier    =  Layer.require "cosy/formalism/literal.identifier"

  alphabet = {
    [refines] = {
      identifier,
    },
  }


  return alphabet

end
