if #setmetatable ({}, { __len = function () return 1 end }) ~= 1 then
  require "compat52"
end
--These lines are required to correctly run tests.
require "busted.runner" ()

local Layer = require "layeredata"

describe ("Formalism timed_automaton", function ()

  it ("can be loaded", function ()

    local _ = Layer.require "cosy/formalism/automaton/timed_automaton"
  
  end)

  describe ("with type information", function ()

    it ("parsing!!!!", function ()
      local timed_automaton = Layer.require "cosy/formalism/automaton/timed_automaton"
      local refines =  Layer.key.refines
      local layer = Layer.new {}
      layer [refines] = {timed_automaton}
  
      --layer.invariants={}
      layer.clocks.c1={value="x1"}
      print(layer.clocks.c1.value)
      local op=timed_automaton.parser("INF(ADD(layer.clocks.c1,2),1)",layer)
      --print(op.operands[1].operator)
      print(timed_automaton.printer(op))
      -- Layer.Proxy.check_all (layer)
      -- assert.is_nil (Layer.messages[layer])
    end)

  end)

end)
