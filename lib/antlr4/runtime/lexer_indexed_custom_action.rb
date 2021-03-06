module Antlr4::Runtime

  class LexerIndexedCustomAction < LexerAction
    attr_reader :action
    attr_reader :offset

    def initialize(offset, action)
      @offset = offset
      @action = action
    end

    def action_type
      @action.action_type
    end

    def position_dependent?
      true
    end

    def execute(lexer) # assume the input stream position was properly set by the calling code
      @action.execute(lexer)
    end

    def hash
      return @_hash unless @_hash.nil?

      hash_code = RumourHash.calculate([offset, action])

      unless @_hash.nil?
        if hash_code == @_hash
          puts 'Same hash_code for LexerIndexedCustomAction'
        else
          puts 'Different hash_code for LexerIndexedCustomAction'
        end
      end
      @_hash = hash_code
    end

    def eql?(other)
      if other == self
        return true
      else
        return false unless other.is_a? LexerIndexedCustomAction
      end

      @offset == other.offset && @action == other.action
    end
  end
end
