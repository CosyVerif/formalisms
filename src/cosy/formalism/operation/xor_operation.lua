--XOR Operation

return function (Layer, xor_operation, ref)

  local meta       =  Layer.key.meta
  local refines    =  Layer.key.refines
  local record     =  Layer.require "cosy/formalism/data.record"
  local collection =  Layer.require "cosy/formalism/data.collection"
  local logical_operation  = Layer.require "cosy/formalism/logical_operation"

  xor_operation = {
    [refines] = {logical_operation},
  }

  xor_operation[meta][collection].minimum = 2
  xor_operation[meta][collection].maximum = math.huge
  xor_operation[meta][collection].operator = "XOR"
  
  return xor_operation
end
