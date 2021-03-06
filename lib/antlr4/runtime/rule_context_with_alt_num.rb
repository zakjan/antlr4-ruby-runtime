module Antlr4::Runtime

  class RuleContextWithAltNum < ParserRuleContext
    attr_accessor :alt_num

    def initialize(parent = nil, invoking_state_number = nil)
      super(parent, invoking_state_number)
      @alt_num = ATN::INVALID_ALT_NUMBER
    end
  end
end