#!/usr/bin/env ruby
#
# lib/Entity.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: lib/Entity.g
# Generated at: 2013-12-04 16:23:08
#

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$LOAD_PATH.unshift( this_directory ) unless $LOAD_PATH.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!

Failed to load the ANTLR3 runtime library (version 1.10.0):

Ensure the library has been installed on your system and is available
on the load path. If rubygems is available on your system, this can
be done with the command:

  gem install antlr3

Current load path:
#{ load_path }

  END
end

defined?( ANTLR3 ) or begin

  # 1: try to load the ruby antlr3 runtime library from the system path
  require 'antlr3'

rescue LoadError

  # 2: try to load rubygems if it isn't already loaded
  defined?( Gem ) or begin
    require 'rubygems'
  rescue LoadError
    antlr_load_failed.call
  end

  # 3: try to activate the antlr3 gem
  begin
    defined?( gem ) and gem( 'antlr3', '~> 1.10.0' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end

  require 'antlr3'

end
# <~~~ end load path setup

module Entity
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :EOF => -1, :T__23 => 23, :T__24 => 24, :T__25 => 25, 
                   :T__26 => 26, :T__27 => 27, :T__28 => 28, :T__29 => 29, 
                   :T__30 => 30, :T__31 => 31, :T__32 => 32, :T__33 => 33, 
                   :T__34 => 34, :T__35 => 35, :T__36 => 36, :T__37 => 37, 
                   :T__38 => 38, :T__39 => 39, :T__40 => 40, :T__41 => 41, 
                   :BOOLEAN => 4, :CHAR => 5, :CLOSE => 6, :COMMENT => 7, 
                   :COMPONENT => 8, :ELSE => 9, :ENTITY => 10, :ENUM => 11, 
                   :FLOAT => 12, :IDENT => 13, :IF => 14, :INTEGER => 15, 
                   :MULTILINE_COMMENT => 16, :NL => 17, :OPEN => 18, :RETURN => 19, 
                   :STRING => 20, :SYSTEM => 21, :WS => 22 )


    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "BOOLEAN", "CHAR", "CLOSE", "COMMENT", "COMPONENT", 
                    "ELSE", "ENTITY", "ENUM", "FLOAT", "IDENT", "IF", "INTEGER", 
                    "MULTILINE_COMMENT", "NL", "OPEN", "RETURN", "STRING", 
                    "SYSTEM", "WS", "'!'", "'%'", "'&&'", "'('", "')'", 
                    "'*'", "'+'", "','", "'-'", "'.'", "'/'", "'/='", "'::'", 
                    "'<'", "'<='", "'='", "'>'", "'>='", "'||'" )


  end


  class Parser < ANTLR3::Parser
    @grammar_home = Entity

    RULE_METHODS = [ :file, :definition, :entity, :class_body, :component_reference, 
                     :function_definition, :statement, :if_statement, :return_statement, 
                     :variable_assignment_statement, :function_call_statement, 
                     :variable_path, :component, :system, :enum, :term, 
                     :negation, :unary, :mult, :add, :relation, :expression ].freeze

    include TokenData

    begin
      generated_using( "lib/Entity.g", "3.5", "1.10.0" )
    rescue NoMethodError => error
      # ignore
    end

    def initialize( input, options = {} )
      super( input, options )
    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    #
    # parser rule file
    #
    # (in lib/Entity.g)
    # 5:1: file returns [value] : a= function_definition ;
    #
    def file
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      value = nil


      a = nil


      begin
      # at line 7:3: a= function_definition
      @state.following.push( TOKENS_FOLLOWING_function_definition_IN_file_32 )
      a = function_definition
      @state.following.pop

      # --> action
       value = a
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 1 )


      end

      return value
    end



    #
    # parser rule definition
    #
    # (in lib/Entity.g)
    # 10:1: definition : ( entity | component | system | enum ) ( NL )? ;
    #
    def definition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      begin
      # at line 11:5: ( entity | component | system | enum ) ( NL )?
      # at line 11:5: ( entity | component | system | enum )
      alt_1 = 4
      case look_1 = @input.peek( 1 )
      when ENTITY then alt_1 = 1
      when COMPONENT then alt_1 = 2
      when SYSTEM then alt_1 = 3
      when ENUM then alt_1 = 4
      else
        raise NoViableAlternative( "", 1, 0 )

      end
      case alt_1
      when 1
        # at line 11:7: entity
        @state.following.push( TOKENS_FOLLOWING_entity_IN_definition_49 )
        entity
        @state.following.pop

      when 2
        # at line 12:5: component
        @state.following.push( TOKENS_FOLLOWING_component_IN_definition_55 )
        component
        @state.following.pop

      when 3
        # at line 13:5: system
        @state.following.push( TOKENS_FOLLOWING_system_IN_definition_61 )
        system
        @state.following.pop

      when 4
        # at line 14:5: enum
        @state.following.push( TOKENS_FOLLOWING_enum_IN_definition_67 )
        enum
        @state.following.pop

      end
      # at line 15:5: ( NL )?
      alt_2 = 2
      look_2_0 = @input.peek( 1 )

      if ( look_2_0 == NL )
        alt_2 = 1
      end
      case alt_2
      when 1
        # at line 15:5: NL
        match( NL, TOKENS_FOLLOWING_NL_IN_definition_73 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 2 )


      end

      return 
    end



    #
    # parser rule entity
    #
    # (in lib/Entity.g)
    # 18:1: entity : ENTITY IDENT ( CLOSE | NL ( class_body )* CLOSE ) ;
    #
    def entity
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      begin
      # at line 19:5: ENTITY IDENT ( CLOSE | NL ( class_body )* CLOSE )
      match( ENTITY, TOKENS_FOLLOWING_ENTITY_IN_entity_87 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_entity_89 )
      # at line 20:3: ( CLOSE | NL ( class_body )* CLOSE )
      alt_4 = 2
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == CLOSE )
        alt_4 = 1
      elsif ( look_4_0 == NL )
        alt_4 = 2
      else
        raise NoViableAlternative( "", 4, 0 )

      end
      case alt_4
      when 1
        # at line 20:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_entity_95 )

      when 2
        # at line 20:13: NL ( class_body )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_entity_99 )
        # at line 20:16: ( class_body )*
        while true # decision 3
          alt_3 = 2
          look_3_0 = @input.peek( 1 )

          if ( look_3_0 == OPEN || look_3_0 == T__31 )
            alt_3 = 1

          end
          case alt_3
          when 1
            # at line 20:16: class_body
            @state.following.push( TOKENS_FOLLOWING_class_body_IN_entity_101 )
            class_body
            @state.following.pop

          else
            break # out of loop for decision 3
          end
        end # loop for decision 3

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_entity_104 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 3 )


      end

      return 
    end



    #
    # parser rule class_body
    #
    # (in lib/Entity.g)
    # 23:1: class_body : ( function_definition | component_reference ) ( NL )? ;
    #
    def class_body
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      begin
      # at line 24:5: ( function_definition | component_reference ) ( NL )?
      # at line 24:5: ( function_definition | component_reference )
      alt_5 = 2
      look_5_0 = @input.peek( 1 )

      if ( look_5_0 == OPEN )
        alt_5 = 1
      elsif ( look_5_0 == T__31 )
        alt_5 = 2
      else
        raise NoViableAlternative( "", 5, 0 )

      end
      case alt_5
      when 1
        # at line 24:7: function_definition
        @state.following.push( TOKENS_FOLLOWING_function_definition_IN_class_body_121 )
        function_definition
        @state.following.pop

      when 2
        # at line 25:5: component_reference
        @state.following.push( TOKENS_FOLLOWING_component_reference_IN_class_body_127 )
        component_reference
        @state.following.pop

      end
      # at line 26:5: ( NL )?
      alt_6 = 2
      look_6_0 = @input.peek( 1 )

      if ( look_6_0 == NL )
        alt_6 = 1
      end
      case alt_6
      when 1
        # at line 26:5: NL
        match( NL, TOKENS_FOLLOWING_NL_IN_class_body_133 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 4 )


      end

      return 
    end



    #
    # parser rule component_reference
    #
    # (in lib/Entity.g)
    # 29:1: component_reference : '-' IDENT NL ;
    #
    def component_reference
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      begin
      # at line 30:5: '-' IDENT NL
      match( T__31, TOKENS_FOLLOWING_T__31_IN_component_reference_147 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_component_reference_149 )
      match( NL, TOKENS_FOLLOWING_NL_IN_component_reference_151 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 5 )


      end

      return 
    end



    #
    # parser rule function_definition
    #
    # (in lib/Entity.g)
    # 33:1: function_definition returns [value] : OPEN name= IDENT ( CLOSE | NL (a= statement )* CLOSE ) ;
    #
    def function_definition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      value = nil


      name = nil
      a = nil


      begin
      # at line 34:5: OPEN name= IDENT ( CLOSE | NL (a= statement )* CLOSE )
      match( OPEN, TOKENS_FOLLOWING_OPEN_IN_function_definition_167 )
      name = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_function_definition_171 )

      # --> action
       value = FunctionDefinitionEval.new(name) 
      # <-- action

      # at line 35:3: ( CLOSE | NL (a= statement )* CLOSE )
      alt_8 = 2
      look_8_0 = @input.peek( 1 )

      if ( look_8_0 == CLOSE )
        alt_8 = 1
      elsif ( look_8_0 == NL )
        alt_8 = 2
      else
        raise NoViableAlternative( "", 8, 0 )

      end
      case alt_8
      when 1
        # at line 35:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_function_definition_179 )

      when 2
        # at line 35:13: NL (a= statement )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_function_definition_183 )
        # at line 35:16: (a= statement )*
        while true # decision 7
          alt_7 = 2
          look_7_0 = @input.peek( 1 )

          if ( look_7_0.between?( IDENT, IF ) || look_7_0 == RETURN )
            alt_7 = 1

          end
          case alt_7
          when 1
            # at line 35:17: a= statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_function_definition_188 )
            a = statement
            @state.following.pop

            # --> action
             value.add_statement(a) 
            # <-- action


          else
            break # out of loop for decision 7
          end
        end # loop for decision 7

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_function_definition_195 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 6 )


      end

      return value
    end



    #
    # parser rule statement
    #
    # (in lib/Entity.g)
    # 38:1: statement returns [value] : a= ( if_statement | return_statement | variable_assignment_statement | function_call_statement ) ( NL )? ;
    #
    def statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      value = nil


      a = nil


      begin
      # at line 39:5: a= ( if_statement | return_statement | variable_assignment_statement | function_call_statement ) ( NL )?
      # at line 39:7: ( if_statement | return_statement | variable_assignment_statement | function_call_statement )
      alt_9 = 4
      alt_9 = @dfa9.predict( @input )
      case alt_9
      when 1
        # at line 39:9: if_statement
        @state.following.push( TOKENS_FOLLOWING_if_statement_IN_statement_217 )
        a = if_statement
        @state.following.pop

      when 2
        # at line 40:5: return_statement
        @state.following.push( TOKENS_FOLLOWING_return_statement_IN_statement_223 )
        return_statement
        @state.following.pop

      when 3
        # at line 41:5: variable_assignment_statement
        @state.following.push( TOKENS_FOLLOWING_variable_assignment_statement_IN_statement_229 )
        a = variable_assignment_statement
        @state.following.pop

      when 4
        # at line 42:5: function_call_statement
        @state.following.push( TOKENS_FOLLOWING_function_call_statement_IN_statement_235 )
        a = function_call_statement
        @state.following.pop

      end
      # at line 43:5: ( NL )?
      alt_10 = 2
      look_10_0 = @input.peek( 1 )

      if ( look_10_0 == NL )
        alt_10 = 1
      end
      case alt_10
      when 1
        # at line 43:5: NL
        match( NL, TOKENS_FOLLOWING_NL_IN_statement_241 )

      end

      # --> action
       value = a 
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 7 )


      end

      return value
    end



    #
    # parser rule if_statement
    #
    # (in lib/Entity.g)
    # 47:1: if_statement returns [value] : IF a= expression ( CLOSE | NL (b= statement )* CLOSE ) ;
    #
    def if_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      value = nil


      a = nil
      b = nil


      begin
      # at line 48:5: IF a= expression ( CLOSE | NL (b= statement )* CLOSE )
      match( IF, TOKENS_FOLLOWING_IF_IN_if_statement_262 )
      @state.following.push( TOKENS_FOLLOWING_expression_IN_if_statement_266 )
      a = expression
      @state.following.pop

      # --> action
       value = IfStatementEval.new(a) 
      # <-- action

      # at line 49:3: ( CLOSE | NL (b= statement )* CLOSE )
      alt_12 = 2
      look_12_0 = @input.peek( 1 )

      if ( look_12_0 == CLOSE )
        alt_12 = 1
      elsif ( look_12_0 == NL )
        alt_12 = 2
      else
        raise NoViableAlternative( "", 12, 0 )

      end
      case alt_12
      when 1
        # at line 49:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_if_statement_274 )

      when 2
        # at line 49:13: NL (b= statement )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_if_statement_278 )
        # at line 49:16: (b= statement )*
        while true # decision 11
          alt_11 = 2
          look_11_0 = @input.peek( 1 )

          if ( look_11_0.between?( IDENT, IF ) || look_11_0 == RETURN )
            alt_11 = 1

          end
          case alt_11
          when 1
            # at line 49:17: b= statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_if_statement_283 )
            b = statement
            @state.following.pop

            # --> action
             value.add_statement(b) 
            # <-- action


          else
            break # out of loop for decision 11
          end
        end # loop for decision 11

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_if_statement_290 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 8 )


      end

      return value
    end



    #
    # parser rule return_statement
    #
    # (in lib/Entity.g)
    # 52:1: return_statement : RETURN expression ;
    #
    def return_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      begin
      # at line 53:5: RETURN expression
      match( RETURN, TOKENS_FOLLOWING_RETURN_IN_return_statement_305 )
      @state.following.push( TOKENS_FOLLOWING_expression_IN_return_statement_307 )
      expression
      @state.following.pop

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 9 )


      end

      return 
    end



    #
    # parser rule variable_assignment_statement
    #
    # (in lib/Entity.g)
    # 56:1: variable_assignment_statement returns [value] : a= variable_path '=' b= expression ;
    #
    def variable_assignment_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      value = nil


      a = nil
      b = nil


      begin
      # at line 57:5: a= variable_path '=' b= expression
      @state.following.push( TOKENS_FOLLOWING_variable_path_IN_variable_assignment_statement_325 )
      a = variable_path
      @state.following.pop
      match( T__38, TOKENS_FOLLOWING_T__38_IN_variable_assignment_statement_327 )
      @state.following.push( TOKENS_FOLLOWING_expression_IN_variable_assignment_statement_331 )
      b = expression
      @state.following.pop

      # --> action
       value = VariableAssignmentStatementEval.new(a, b) 
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 10 )


      end

      return value
    end



    #
    # parser rule function_call_statement
    #
    # (in lib/Entity.g)
    # 60:1: function_call_statement returns [value] : a= variable_path '(' (b= expression ( ',' b= expression )* )? ')' ;
    #
    def function_call_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      value = nil


      a = nil
      b = nil


      begin
      # at line 61:5: a= variable_path '(' (b= expression ( ',' b= expression )* )? ')'
      @state.following.push( TOKENS_FOLLOWING_variable_path_IN_function_call_statement_351 )
      a = variable_path
      @state.following.pop
      match( T__26, TOKENS_FOLLOWING_T__26_IN_function_call_statement_353 )

      # --> action
       value = FunctionCallStatementEval.new(a) 
      # <-- action

      # at line 62:3: (b= expression ( ',' b= expression )* )?
      alt_14 = 2
      look_14_0 = @input.peek( 1 )

      if ( look_14_0.between?( BOOLEAN, CHAR ) || look_14_0.between?( FLOAT, IDENT ) || look_14_0 == INTEGER || look_14_0 == STRING || look_14_0 == T__23 || look_14_0 == T__26 || look_14_0 == T__29 || look_14_0 == T__31 )
        alt_14 = 1
      end
      case alt_14
      when 1
        # at line 62:5: b= expression ( ',' b= expression )*
        @state.following.push( TOKENS_FOLLOWING_expression_IN_function_call_statement_364 )
        b = expression
        @state.following.pop

        # --> action
         value.add_argument(b) 
        # <-- action

        # at line 63:5: ( ',' b= expression )*
        while true # decision 13
          alt_13 = 2
          look_13_0 = @input.peek( 1 )

          if ( look_13_0 == T__30 )
            alt_13 = 1

          end
          case alt_13
          when 1
            # at line 63:8: ',' b= expression
            match( T__30, TOKENS_FOLLOWING_T__30_IN_function_call_statement_375 )
            @state.following.push( TOKENS_FOLLOWING_expression_IN_function_call_statement_379 )
            b = expression
            @state.following.pop

            # --> action
             value.add_argument(b) 
            # <-- action


          else
            break # out of loop for decision 13
          end
        end # loop for decision 13


      end
      match( T__27, TOKENS_FOLLOWING_T__27_IN_function_call_statement_395 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 11 )


      end

      return value
    end



    #
    # parser rule variable_path
    #
    # (in lib/Entity.g)
    # 68:1: variable_path returns [value] : base= IDENT (path1= ( '.' | '::' ) path2= IDENT )* ;
    #
    def variable_path
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      value = nil


      base = nil
      path1 = nil
      path2 = nil


      begin
      # at line 69:5: base= IDENT (path1= ( '.' | '::' ) path2= IDENT )*
      base = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_variable_path_413 )

      # --> action
       value = VariablePathEval.new(base.text) 
      # <-- action

      # at line 70:3: (path1= ( '.' | '::' ) path2= IDENT )*
      while true # decision 15
        alt_15 = 2
        look_15_0 = @input.peek( 1 )

        if ( look_15_0 == T__32 || look_15_0 == T__35 )
          alt_15 = 1

        end
        case alt_15
        when 1
          # at line 70:4: path1= ( '.' | '::' ) path2= IDENT
          path1 = @input.look

          if @input.peek(1) == T__32 || @input.peek(1) == T__35
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          path2 = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_variable_path_432 )

          # --> action
           value.add_path(path1.text + path2.text) 
          # <-- action


        else
          break # out of loop for decision 15
        end
      end # loop for decision 15


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 12 )


      end

      return value
    end



    #
    # parser rule component
    #
    # (in lib/Entity.g)
    # 73:1: component : COMPONENT IDENT ( CLOSE | NL ( class_body )* CLOSE ) ;
    #
    def component
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      begin
      # at line 74:5: COMPONENT IDENT ( CLOSE | NL ( class_body )* CLOSE )
      match( COMPONENT, TOKENS_FOLLOWING_COMPONENT_IN_component_450 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_component_452 )
      # at line 75:3: ( CLOSE | NL ( class_body )* CLOSE )
      alt_17 = 2
      look_17_0 = @input.peek( 1 )

      if ( look_17_0 == CLOSE )
        alt_17 = 1
      elsif ( look_17_0 == NL )
        alt_17 = 2
      else
        raise NoViableAlternative( "", 17, 0 )

      end
      case alt_17
      when 1
        # at line 75:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_component_458 )

      when 2
        # at line 75:13: NL ( class_body )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_component_462 )
        # at line 75:16: ( class_body )*
        while true # decision 16
          alt_16 = 2
          look_16_0 = @input.peek( 1 )

          if ( look_16_0 == OPEN || look_16_0 == T__31 )
            alt_16 = 1

          end
          case alt_16
          when 1
            # at line 75:16: class_body
            @state.following.push( TOKENS_FOLLOWING_class_body_IN_component_464 )
            class_body
            @state.following.pop

          else
            break # out of loop for decision 16
          end
        end # loop for decision 16

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_component_467 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 13 )


      end

      return 
    end



    #
    # parser rule system
    #
    # (in lib/Entity.g)
    # 78:1: system : SYSTEM IDENT ( CLOSE | NL ( class_body )* CLOSE ) ;
    #
    def system
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      begin
      # at line 79:5: SYSTEM IDENT ( CLOSE | NL ( class_body )* CLOSE )
      match( SYSTEM, TOKENS_FOLLOWING_SYSTEM_IN_system_482 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_system_484 )
      # at line 80:3: ( CLOSE | NL ( class_body )* CLOSE )
      alt_19 = 2
      look_19_0 = @input.peek( 1 )

      if ( look_19_0 == CLOSE )
        alt_19 = 1
      elsif ( look_19_0 == NL )
        alt_19 = 2
      else
        raise NoViableAlternative( "", 19, 0 )

      end
      case alt_19
      when 1
        # at line 80:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_system_490 )

      when 2
        # at line 80:13: NL ( class_body )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_system_494 )
        # at line 80:16: ( class_body )*
        while true # decision 18
          alt_18 = 2
          look_18_0 = @input.peek( 1 )

          if ( look_18_0 == OPEN || look_18_0 == T__31 )
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 80:16: class_body
            @state.following.push( TOKENS_FOLLOWING_class_body_IN_system_496 )
            class_body
            @state.following.pop

          else
            break # out of loop for decision 18
          end
        end # loop for decision 18

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_system_499 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 14 )


      end

      return 
    end



    #
    # parser rule enum
    #
    # (in lib/Entity.g)
    # 83:1: enum : ENUM IDENT ( CLOSE | NL ( class_body )* CLOSE ) ;
    #
    def enum
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      begin
      # at line 84:5: ENUM IDENT ( CLOSE | NL ( class_body )* CLOSE )
      match( ENUM, TOKENS_FOLLOWING_ENUM_IN_enum_514 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_enum_516 )
      # at line 85:3: ( CLOSE | NL ( class_body )* CLOSE )
      alt_21 = 2
      look_21_0 = @input.peek( 1 )

      if ( look_21_0 == CLOSE )
        alt_21 = 1
      elsif ( look_21_0 == NL )
        alt_21 = 2
      else
        raise NoViableAlternative( "", 21, 0 )

      end
      case alt_21
      when 1
        # at line 85:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_enum_522 )

      when 2
        # at line 85:13: NL ( class_body )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_enum_526 )
        # at line 85:16: ( class_body )*
        while true # decision 20
          alt_20 = 2
          look_20_0 = @input.peek( 1 )

          if ( look_20_0 == OPEN || look_20_0 == T__31 )
            alt_20 = 1

          end
          case alt_20
          when 1
            # at line 85:16: class_body
            @state.following.push( TOKENS_FOLLOWING_class_body_IN_enum_528 )
            class_body
            @state.following.pop

          else
            break # out of loop for decision 20
          end
        end # loop for decision 20

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_enum_531 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 15 )


      end

      return 
    end



    #
    # parser rule term
    #
    # (in lib/Entity.g)
    # 88:1: term returns [value] : ( variable_path | function_call_statement | '(' expression ')' |a= INTEGER |a= FLOAT |a= BOOLEAN |a= STRING |a= CHAR );
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      value = nil


      a = nil


      begin
      # at line 89:3: ( variable_path | function_call_statement | '(' expression ')' |a= INTEGER |a= FLOAT |a= BOOLEAN |a= STRING |a= CHAR )
      alt_22 = 8
      alt_22 = @dfa22.predict( @input )
      case alt_22
      when 1
        # at line 89:5: variable_path
        @state.following.push( TOKENS_FOLLOWING_variable_path_IN_term_549 )
        variable_path
        @state.following.pop

      when 2
        # at line 90:5: function_call_statement
        @state.following.push( TOKENS_FOLLOWING_function_call_statement_IN_term_555 )
        function_call_statement
        @state.following.pop

      when 3
        # at line 91:5: '(' expression ')'
        match( T__26, TOKENS_FOLLOWING_T__26_IN_term_561 )
        @state.following.push( TOKENS_FOLLOWING_expression_IN_term_563 )
        expression
        @state.following.pop
        match( T__27, TOKENS_FOLLOWING_T__27_IN_term_565 )

      when 4
        # at line 92:5: a= INTEGER
        a = match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_term_573 )

        # --> action
         value = LiteralEval.new(:int, a.text) 
        # <-- action


      when 5
        # at line 93:5: a= FLOAT
        a = match( FLOAT, TOKENS_FOLLOWING_FLOAT_IN_term_583 )

        # --> action
         value = LiteralEval.new(:float, a.text) 
        # <-- action


      when 6
        # at line 94:5: a= BOOLEAN
        a = match( BOOLEAN, TOKENS_FOLLOWING_BOOLEAN_IN_term_595 )

        # --> action
         value = LiteralEval.new(:bool, a.text) 
        # <-- action


      when 7
        # at line 95:5: a= STRING
        a = match( STRING, TOKENS_FOLLOWING_STRING_IN_term_605 )

        # --> action
         value = LiteralEval.new(:string, a.text) 
        # <-- action


      when 8
        # at line 96:5: a= CHAR
        a = match( CHAR, TOKENS_FOLLOWING_CHAR_IN_term_616 )

        # --> action
         value = LiteralEval.new(:char, a.text) 
        # <-- action


      end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 16 )


      end

      return value
    end



    #
    # parser rule negation
    #
    # (in lib/Entity.g)
    # 99:1: negation returns [value] : ( '!' a= negation |a= term );
    #
    def negation
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      value = nil


      a = nil


      begin
      # at line 100:3: ( '!' a= negation |a= term )
      alt_23 = 2
      look_23_0 = @input.peek( 1 )

      if ( look_23_0 == T__23 )
        alt_23 = 1
      elsif ( look_23_0.between?( BOOLEAN, CHAR ) || look_23_0.between?( FLOAT, IDENT ) || look_23_0 == INTEGER || look_23_0 == STRING || look_23_0 == T__26 )
        alt_23 = 2
      else
        raise NoViableAlternative( "", 23, 0 )

      end
      case alt_23
      when 1
        # at line 100:5: '!' a= negation
        match( T__23, TOKENS_FOLLOWING_T__23_IN_negation_639 )
        @state.following.push( TOKENS_FOLLOWING_negation_IN_negation_643 )
        a = negation
        @state.following.pop

        # --> action
         value = SingleOperandExpressionEval.new('!', a) 
        # <-- action


      when 2
        # at line 101:5: a= term
        @state.following.push( TOKENS_FOLLOWING_term_IN_negation_653 )
        a = term
        @state.following.pop

        # --> action
         value=a 
        # <-- action


      end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 17 )


      end

      return value
    end



    #
    # parser rule unary
    #
    # (in lib/Entity.g)
    # 104:1: unary returns [value] : (type= ( '+' | '-' ) a= unary |a= negation );
    #
    def unary
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      value = nil


      type = nil
      a = nil


      begin
      # at line 105:3: (type= ( '+' | '-' ) a= unary |a= negation )
      alt_24 = 2
      look_24_0 = @input.peek( 1 )

      if ( look_24_0 == T__29 || look_24_0 == T__31 )
        alt_24 = 1
      elsif ( look_24_0.between?( BOOLEAN, CHAR ) || look_24_0.between?( FLOAT, IDENT ) || look_24_0 == INTEGER || look_24_0 == STRING || look_24_0 == T__23 || look_24_0 == T__26 )
        alt_24 = 2
      else
        raise NoViableAlternative( "", 24, 0 )

      end
      case alt_24
      when 1
        # at line 105:5: type= ( '+' | '-' ) a= unary
        type = @input.look

        if @input.peek(1) == T__29 || @input.peek(1) == T__31
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_unary_IN_unary_685 )
        a = unary
        @state.following.pop

        # --> action
         value = SingleOperandExpressionEval.new(type.text, a) 
        # <-- action


      when 2
        # at line 106:5: a= negation
        @state.following.push( TOKENS_FOLLOWING_negation_IN_unary_695 )
        a = negation
        @state.following.pop

        # --> action
         value=a 
        # <-- action


      end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 18 )


      end

      return value
    end



    #
    # parser rule mult
    #
    # (in lib/Entity.g)
    # 109:1: mult returns [value] : a= unary (type= ( '*' | '/' | '%' ) b= mult )? ;
    #
    def mult
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      value = nil


      type = nil
      a = nil
      b = nil


      begin
      # at line 110:5: a= unary (type= ( '*' | '/' | '%' ) b= mult )?
      @state.following.push( TOKENS_FOLLOWING_unary_IN_mult_715 )
      a = unary
      @state.following.pop

      # --> action
       value = a 
      # <-- action

      # at line 111:3: (type= ( '*' | '/' | '%' ) b= mult )?
      alt_25 = 2
      look_25_0 = @input.peek( 1 )

      if ( look_25_0 == T__24 || look_25_0 == T__28 || look_25_0 == T__33 )
        alt_25 = 1
      end
      case alt_25
      when 1
        # at line 111:5: type= ( '*' | '/' | '%' ) b= mult
        type = @input.look

        if @input.peek(1) == T__24 || @input.peek(1) == T__28 || @input.peek(1) == T__33
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_mult_IN_mult_739 )
        b = mult
        @state.following.pop

        # --> action
         value = DoubleOperandExpressionEval.new(type.text, a, b) 
        # <-- action


      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 19 )


      end

      return value
    end



    #
    # parser rule add
    #
    # (in lib/Entity.g)
    # 114:1: add returns [value] : a= mult (type= ( '+' | '-' ) b= add )? ;
    #
    def add
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      value = nil


      type = nil
      a = nil
      b = nil


      begin
      # at line 115:5: a= mult (type= ( '+' | '-' ) b= add )?
      @state.following.push( TOKENS_FOLLOWING_mult_IN_add_765 )
      a = mult
      @state.following.pop

      # --> action
       value = a 
      # <-- action

      # at line 116:3: (type= ( '+' | '-' ) b= add )?
      alt_26 = 2
      look_26_0 = @input.peek( 1 )

      if ( look_26_0 == T__29 || look_26_0 == T__31 )
        alt_26 = 1
      end
      case alt_26
      when 1
        # at line 116:6: type= ( '+' | '-' ) b= add
        type = @input.look

        if @input.peek(1) == T__29 || @input.peek(1) == T__31
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_add_IN_add_786 )
        b = add
        @state.following.pop

        # --> action
         value = DoubleOperandExpressionEval.new(type.text, a, b) 
        # <-- action


      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 20 )


      end

      return value
    end



    #
    # parser rule relation
    #
    # (in lib/Entity.g)
    # 121:1: relation returns [value] : a= add (type= ( '=' | '/=' | '<' | '<=' | '>=' | '>' ) b= relation )? ;
    #
    def relation
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      value = nil


      type = nil
      a = nil
      b = nil


      begin
      # at line 122:5: a= add (type= ( '=' | '/=' | '<' | '<=' | '>=' | '>' ) b= relation )?
      @state.following.push( TOKENS_FOLLOWING_add_IN_relation_816 )
      a = add
      @state.following.pop

      # --> action
       value = a 
      # <-- action

      # at line 123:3: (type= ( '=' | '/=' | '<' | '<=' | '>=' | '>' ) b= relation )?
      alt_27 = 2
      look_27_0 = @input.peek( 1 )

      if ( look_27_0 == T__34 || look_27_0.between?( T__36, T__40 ) )
        alt_27 = 1
      end
      case alt_27
      when 1
        # at line 123:6: type= ( '=' | '/=' | '<' | '<=' | '>=' | '>' ) b= relation
        type = @input.look

        if @input.peek(1) == T__34 || @input.peek( 1 ).between?( T__36, T__40 )
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_relation_IN_relation_853 )
        b = relation
        @state.following.pop

        # --> action
         value = DoubleOperandExpressionEval.new(type.text, a, b) 
        # <-- action


      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 21 )


      end

      return value
    end



    #
    # parser rule expression
    #
    # (in lib/Entity.g)
    # 128:1: expression returns [value] : a= relation (type= ( '&&' | '||' ) b= expression )? ;
    #
    def expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      value = nil


      type = nil
      a = nil
      b = nil


      begin
      # at line 129:5: a= relation (type= ( '&&' | '||' ) b= expression )?
      @state.following.push( TOKENS_FOLLOWING_relation_IN_expression_885 )
      a = relation
      @state.following.pop

      # --> action
       value = a 
      # <-- action

      # at line 130:3: (type= ( '&&' | '||' ) b= expression )?
      alt_28 = 2
      look_28_0 = @input.peek( 1 )

      if ( look_28_0 == T__25 || look_28_0 == T__41 )
        alt_28 = 1
      end
      case alt_28
      when 1
        # at line 130:6: type= ( '&&' | '||' ) b= expression
        type = @input.look

        if @input.peek(1) == T__25 || @input.peek(1) == T__41
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_906 )
        b = expression
        @state.following.pop

        # --> action
         value = DoubleOperandExpressionEval.new(type.text, a, b) 
        # <-- action


      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 22 )


      end

      return value
    end



    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA9 < ANTLR3::DFA
      EOT = unpack( 8, -1 )
      EOF = unpack( 8, -1 )
      MIN = unpack( 1, 13, 2, -1, 1, 26, 1, 13, 2, -1, 1, 26 )
      MAX = unpack( 1, 19, 2, -1, 1, 38, 1, 13, 2, -1, 1, 38 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, 2, 2, -1, 1, 3, 1, 4, 1, -1 )
      SPECIAL = unpack( 8, -1 )
      TRANSITION = [
        unpack( 1, 3, 1, 1, 4, -1, 1, 2 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 6, 5, -1, 1, 4, 2, -1, 1, 4, 2, -1, 1, 5 ),
        unpack( 1, 7 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 6, 5, -1, 1, 4, 2, -1, 1, 4, 2, -1, 1, 5 )
      ].freeze

      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end

      @decision = 9


      def description
        <<-'__dfa_description__'.strip!
          39:7: ( if_statement | return_statement | variable_assignment_statement | function_call_statement )
        __dfa_description__
      end

    end
    class DFA22 < ANTLR3::DFA
      EOT = unpack( 12, -1 )
      EOF = unpack( 12, -1 )
      MIN = unpack( 1, 4, 1, 6, 6, -1, 1, 13, 2, -1, 1, 6 )
      MAX = unpack( 1, 26, 1, 41, 6, -1, 1, 13, 2, -1, 1, 41 )
      ACCEPT = unpack( 2, -1, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 1, 8, 1, -1, 
                       1, 1, 1, 2, 1, -1 )
      SPECIAL = unpack( 12, -1 )
      TRANSITION = [
        unpack( 1, 5, 1, 7, 6, -1, 1, 4, 1, 1, 1, -1, 1, 3, 4, -1, 1, 6, 
                5, -1, 1, 2 ),
        unpack( 1, 9, 6, -1, 2, 9, 2, -1, 1, 9, 1, -1, 1, 9, 4, -1, 2, 
                 9, 1, 10, 5, 9, 1, 8, 2, 9, 1, 8, 6, 9 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 11 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 9, 6, -1, 2, 9, 2, -1, 1, 9, 1, -1, 1, 9, 4, -1, 2, 
                 9, 1, 10, 5, 9, 1, 8, 2, 9, 1, 8, 6, 9 )
      ].freeze

      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end

      @decision = 22


      def description
        <<-'__dfa_description__'.strip!
          88:1: term returns [value] : ( variable_path | function_call_statement | '(' expression ')' |a= INTEGER |a= FLOAT |a= BOOLEAN |a= STRING |a= CHAR );
        __dfa_description__
      end

    end


    private

    def initialize_dfas
      super rescue nil
      @dfa9 = DFA9.new( self, 9 )


      @dfa22 = DFA22.new( self, 22 )


    end

    TOKENS_FOLLOWING_function_definition_IN_file_32 = Set[ 1 ]
    TOKENS_FOLLOWING_entity_IN_definition_49 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_component_IN_definition_55 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_system_IN_definition_61 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_enum_IN_definition_67 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_NL_IN_definition_73 = Set[ 1 ]
    TOKENS_FOLLOWING_ENTITY_IN_entity_87 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_entity_89 = Set[ 6, 17 ]
    TOKENS_FOLLOWING_CLOSE_IN_entity_95 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_entity_99 = Set[ 6, 18, 31 ]
    TOKENS_FOLLOWING_class_body_IN_entity_101 = Set[ 6, 18, 31 ]
    TOKENS_FOLLOWING_CLOSE_IN_entity_104 = Set[ 1 ]
    TOKENS_FOLLOWING_function_definition_IN_class_body_121 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_component_reference_IN_class_body_127 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_NL_IN_class_body_133 = Set[ 1 ]
    TOKENS_FOLLOWING_T__31_IN_component_reference_147 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_component_reference_149 = Set[ 17 ]
    TOKENS_FOLLOWING_NL_IN_component_reference_151 = Set[ 1 ]
    TOKENS_FOLLOWING_OPEN_IN_function_definition_167 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_function_definition_171 = Set[ 6, 17 ]
    TOKENS_FOLLOWING_CLOSE_IN_function_definition_179 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_function_definition_183 = Set[ 6, 13, 14, 19 ]
    TOKENS_FOLLOWING_statement_IN_function_definition_188 = Set[ 6, 13, 14, 19 ]
    TOKENS_FOLLOWING_CLOSE_IN_function_definition_195 = Set[ 1 ]
    TOKENS_FOLLOWING_if_statement_IN_statement_217 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_return_statement_IN_statement_223 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_variable_assignment_statement_IN_statement_229 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_function_call_statement_IN_statement_235 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_NL_IN_statement_241 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_if_statement_262 = Set[ 4, 5, 12, 13, 15, 20, 23, 26, 29, 31 ]
    TOKENS_FOLLOWING_expression_IN_if_statement_266 = Set[ 6, 17 ]
    TOKENS_FOLLOWING_CLOSE_IN_if_statement_274 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_if_statement_278 = Set[ 6, 13, 14, 19 ]
    TOKENS_FOLLOWING_statement_IN_if_statement_283 = Set[ 6, 13, 14, 19 ]
    TOKENS_FOLLOWING_CLOSE_IN_if_statement_290 = Set[ 1 ]
    TOKENS_FOLLOWING_RETURN_IN_return_statement_305 = Set[ 4, 5, 12, 13, 15, 20, 23, 26, 29, 31 ]
    TOKENS_FOLLOWING_expression_IN_return_statement_307 = Set[ 1 ]
    TOKENS_FOLLOWING_variable_path_IN_variable_assignment_statement_325 = Set[ 38 ]
    TOKENS_FOLLOWING_T__38_IN_variable_assignment_statement_327 = Set[ 4, 5, 12, 13, 15, 20, 23, 26, 29, 31 ]
    TOKENS_FOLLOWING_expression_IN_variable_assignment_statement_331 = Set[ 1 ]
    TOKENS_FOLLOWING_variable_path_IN_function_call_statement_351 = Set[ 26 ]
    TOKENS_FOLLOWING_T__26_IN_function_call_statement_353 = Set[ 4, 5, 12, 13, 15, 20, 23, 26, 27, 29, 31 ]
    TOKENS_FOLLOWING_expression_IN_function_call_statement_364 = Set[ 27, 30 ]
    TOKENS_FOLLOWING_T__30_IN_function_call_statement_375 = Set[ 4, 5, 12, 13, 15, 20, 23, 26, 29, 31 ]
    TOKENS_FOLLOWING_expression_IN_function_call_statement_379 = Set[ 27, 30 ]
    TOKENS_FOLLOWING_T__27_IN_function_call_statement_395 = Set[ 1 ]
    TOKENS_FOLLOWING_IDENT_IN_variable_path_413 = Set[ 1, 32, 35 ]
    TOKENS_FOLLOWING_set_IN_variable_path_422 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_variable_path_432 = Set[ 1, 32, 35 ]
    TOKENS_FOLLOWING_COMPONENT_IN_component_450 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_component_452 = Set[ 6, 17 ]
    TOKENS_FOLLOWING_CLOSE_IN_component_458 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_component_462 = Set[ 6, 18, 31 ]
    TOKENS_FOLLOWING_class_body_IN_component_464 = Set[ 6, 18, 31 ]
    TOKENS_FOLLOWING_CLOSE_IN_component_467 = Set[ 1 ]
    TOKENS_FOLLOWING_SYSTEM_IN_system_482 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_system_484 = Set[ 6, 17 ]
    TOKENS_FOLLOWING_CLOSE_IN_system_490 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_system_494 = Set[ 6, 18, 31 ]
    TOKENS_FOLLOWING_class_body_IN_system_496 = Set[ 6, 18, 31 ]
    TOKENS_FOLLOWING_CLOSE_IN_system_499 = Set[ 1 ]
    TOKENS_FOLLOWING_ENUM_IN_enum_514 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_enum_516 = Set[ 6, 17 ]
    TOKENS_FOLLOWING_CLOSE_IN_enum_522 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_enum_526 = Set[ 6, 18, 31 ]
    TOKENS_FOLLOWING_class_body_IN_enum_528 = Set[ 6, 18, 31 ]
    TOKENS_FOLLOWING_CLOSE_IN_enum_531 = Set[ 1 ]
    TOKENS_FOLLOWING_variable_path_IN_term_549 = Set[ 1 ]
    TOKENS_FOLLOWING_function_call_statement_IN_term_555 = Set[ 1 ]
    TOKENS_FOLLOWING_T__26_IN_term_561 = Set[ 4, 5, 12, 13, 15, 20, 23, 26, 29, 31 ]
    TOKENS_FOLLOWING_expression_IN_term_563 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_term_565 = Set[ 1 ]
    TOKENS_FOLLOWING_INTEGER_IN_term_573 = Set[ 1 ]
    TOKENS_FOLLOWING_FLOAT_IN_term_583 = Set[ 1 ]
    TOKENS_FOLLOWING_BOOLEAN_IN_term_595 = Set[ 1 ]
    TOKENS_FOLLOWING_STRING_IN_term_605 = Set[ 1 ]
    TOKENS_FOLLOWING_CHAR_IN_term_616 = Set[ 1 ]
    TOKENS_FOLLOWING_T__23_IN_negation_639 = Set[ 4, 5, 12, 13, 15, 20, 23, 26 ]
    TOKENS_FOLLOWING_negation_IN_negation_643 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_negation_653 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_unary_675 = Set[ 4, 5, 12, 13, 15, 20, 23, 26, 29, 31 ]
    TOKENS_FOLLOWING_unary_IN_unary_685 = Set[ 1 ]
    TOKENS_FOLLOWING_negation_IN_unary_695 = Set[ 1 ]
    TOKENS_FOLLOWING_unary_IN_mult_715 = Set[ 1, 24, 28, 33 ]
    TOKENS_FOLLOWING_set_IN_mult_725 = Set[ 4, 5, 12, 13, 15, 20, 23, 26, 29, 31 ]
    TOKENS_FOLLOWING_mult_IN_mult_739 = Set[ 1 ]
    TOKENS_FOLLOWING_mult_IN_add_765 = Set[ 1, 29, 31 ]
    TOKENS_FOLLOWING_set_IN_add_776 = Set[ 4, 5, 12, 13, 15, 20, 23, 26, 29, 31 ]
    TOKENS_FOLLOWING_add_IN_add_786 = Set[ 1 ]
    TOKENS_FOLLOWING_add_IN_relation_816 = Set[ 1, 34, 36, 37, 38, 39, 40 ]
    TOKENS_FOLLOWING_set_IN_relation_827 = Set[ 4, 5, 12, 13, 15, 20, 23, 26, 29, 31 ]
    TOKENS_FOLLOWING_relation_IN_relation_853 = Set[ 1 ]
    TOKENS_FOLLOWING_relation_IN_expression_885 = Set[ 1, 25, 41 ]
    TOKENS_FOLLOWING_set_IN_expression_896 = Set[ 4, 5, 12, 13, 15, 20, 23, 26, 29, 31 ]
    TOKENS_FOLLOWING_expression_IN_expression_906 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
