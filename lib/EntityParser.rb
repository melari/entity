#!/usr/bin/env ruby
#
# lib/Entity.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: lib/Entity.g
# Generated at: 2013-12-06 14:54:36
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
    define_tokens( :EOF => -1, :T__28 => 28, :T__29 => 29, :T__30 => 30, 
                   :T__31 => 31, :T__32 => 32, :T__33 => 33, :T__34 => 34, 
                   :T__35 => 35, :T__36 => 36, :T__37 => 37, :T__38 => 38, 
                   :T__39 => 39, :T__40 => 40, :T__41 => 41, :T__42 => 42, 
                   :T__43 => 43, :T__44 => 44, :T__45 => 45, :T__46 => 46, 
                   :BOOLEAN => 4, :CHAR => 5, :CLOSE => 6, :COMMENT => 7, 
                   :COMPONENT => 8, :ELSE => 9, :ENTITY => 10, :ENUM => 11, 
                   :FLOAT => 12, :IDENT => 13, :IF => 14, :INTEGER => 15, 
                   :MULTILINE_COMMENT => 16, :NL => 17, :OPEN => 18, :RETURN => 19, 
                   :STRING => 20, :SYSTEM => 21, :TYPE_BOOL => 22, :TYPE_FLOAT => 23, 
                   :TYPE_INT => 24, :TYPE_STRING => 25, :TYPE_VOID => 26, 
                   :WS => 27 )


    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "BOOLEAN", "CHAR", "CLOSE", "COMMENT", "COMPONENT", 
                    "ELSE", "ENTITY", "ENUM", "FLOAT", "IDENT", "IF", "INTEGER", 
                    "MULTILINE_COMMENT", "NL", "OPEN", "RETURN", "STRING", 
                    "SYSTEM", "TYPE_BOOL", "TYPE_FLOAT", "TYPE_INT", "TYPE_STRING", 
                    "TYPE_VOID", "WS", "'!'", "'%'", "'&&'", "'('", "')'", 
                    "'*'", "'+'", "','", "'-'", "'.'", "'/'", "'/='", "'::'", 
                    "'<'", "'<='", "'='", "'>'", "'>='", "'||'" )


  end


  class Parser < ANTLR3::Parser
    @grammar_home = Entity

    RULE_METHODS = [ :file, :definition, :entity, :class_body, :component_reference, 
                     :function_definition, :variable_type, :statement, :if_statement, 
                     :return_statement, :variable_assignment_statement, 
                     :function_call_statement, :variable_path, :component, 
                     :system, :enum, :term, :negation, :unary, :mult, :add, 
                     :relation, :expression ].freeze

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
    # 5:1: file returns [value] : ( NL )? (a= definition )* ;
    #
    def file
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      value = nil


      a = nil


      begin
      # at line 6:5: ( NL )? (a= definition )*
      # at line 6:5: ( NL )?
      alt_1 = 2
      look_1_0 = @input.peek( 1 )

      if ( look_1_0 == NL )
        alt_1 = 1
      end
      case alt_1
      when 1
        # at line 6:5: NL
        match( NL, TOKENS_FOLLOWING_NL_IN_file_27 )

      end

      # --> action
       value = DefinitionListEval.new 
      # <-- action

      # at line 7:3: (a= definition )*
      while true # decision 2
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0 == COMPONENT || look_2_0.between?( ENTITY, ENUM ) || look_2_0 == OPEN || look_2_0 == SYSTEM )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 7:4: a= definition
          @state.following.push( TOKENS_FOLLOWING_definition_IN_file_37 )
          a = definition
          @state.following.pop

          # --> action
           value.add_definition(a) 
          # <-- action


        else
          break # out of loop for decision 2
        end
      end # loop for decision 2


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
    # 10:1: definition returns [value] : a= ( entity | component | system | enum | function_definition ) ( NL )? ;
    #
    def definition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      value = nil


      a = nil


      begin
      # at line 11:5: a= ( entity | component | system | enum | function_definition ) ( NL )?
      # at line 11:7: ( entity | component | system | enum | function_definition )
      alt_3 = 5
      case look_3 = @input.peek( 1 )
      when ENTITY then alt_3 = 1
      when COMPONENT then alt_3 = 2
      when SYSTEM then alt_3 = 3
      when ENUM then alt_3 = 4
      when OPEN then alt_3 = 5
      else
        raise NoViableAlternative( "", 3, 0 )

      end
      case alt_3
      when 1
        # at line 11:9: entity
        @state.following.push( TOKENS_FOLLOWING_entity_IN_definition_61 )
        a = entity
        @state.following.pop

      when 2
        # at line 12:5: component
        @state.following.push( TOKENS_FOLLOWING_component_IN_definition_67 )
        component
        @state.following.pop

      when 3
        # at line 13:5: system
        @state.following.push( TOKENS_FOLLOWING_system_IN_definition_73 )
        system
        @state.following.pop

      when 4
        # at line 14:5: enum
        @state.following.push( TOKENS_FOLLOWING_enum_IN_definition_79 )
        enum
        @state.following.pop

      when 5
        # at line 15:5: function_definition
        @state.following.push( TOKENS_FOLLOWING_function_definition_IN_definition_85 )
        a = function_definition
        @state.following.pop

      end
      # at line 16:5: ( NL )?
      alt_4 = 2
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == NL )
        alt_4 = 1
      end
      case alt_4
      when 1
        # at line 16:5: NL
        match( NL, TOKENS_FOLLOWING_NL_IN_definition_91 )

      end

      # --> action
       value = a 
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 2 )


      end

      return value
    end



    #
    # parser rule entity
    #
    # (in lib/Entity.g)
    # 19:1: entity returns [value] : ENTITY name= IDENT ( CLOSE | NL (a= class_body )* CLOSE ) ;
    #
    def entity
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      value = nil


      name = nil
      a = nil


      begin
      # at line 20:5: ENTITY name= IDENT ( CLOSE | NL (a= class_body )* CLOSE )
      match( ENTITY, TOKENS_FOLLOWING_ENTITY_IN_entity_110 )
      name = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_entity_114 )

      # --> action
       value = EntityEval.new(name.text) 
      # <-- action

      # at line 21:3: ( CLOSE | NL (a= class_body )* CLOSE )
      alt_6 = 2
      look_6_0 = @input.peek( 1 )

      if ( look_6_0 == CLOSE )
        alt_6 = 1
      elsif ( look_6_0 == NL )
        alt_6 = 2
      else
        raise NoViableAlternative( "", 6, 0 )

      end
      case alt_6
      when 1
        # at line 21:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_entity_122 )

      when 2
        # at line 21:13: NL (a= class_body )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_entity_126 )
        # at line 21:16: (a= class_body )*
        while true # decision 5
          alt_5 = 2
          look_5_0 = @input.peek( 1 )

          if ( look_5_0 == OPEN || look_5_0 == T__36 )
            alt_5 = 1

          end
          case alt_5
          when 1
            # at line 21:17: a= class_body
            @state.following.push( TOKENS_FOLLOWING_class_body_IN_entity_131 )
            a = class_body
            @state.following.pop

            # --> action
             value.add_body(a) 
            # <-- action


          else
            break # out of loop for decision 5
          end
        end # loop for decision 5

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_entity_137 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 3 )


      end

      return value
    end



    #
    # parser rule class_body
    #
    # (in lib/Entity.g)
    # 24:1: class_body returns [value] : a= ( function_definition | component_reference ) ( NL )? ;
    #
    def class_body
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      value = nil


      a = nil


      begin
      # at line 25:5: a= ( function_definition | component_reference ) ( NL )?
      # at line 25:7: ( function_definition | component_reference )
      alt_7 = 2
      look_7_0 = @input.peek( 1 )

      if ( look_7_0 == OPEN )
        alt_7 = 1
      elsif ( look_7_0 == T__36 )
        alt_7 = 2
      else
        raise NoViableAlternative( "", 7, 0 )

      end
      case alt_7
      when 1
        # at line 25:9: function_definition
        @state.following.push( TOKENS_FOLLOWING_function_definition_IN_class_body_159 )
        a = function_definition
        @state.following.pop

      when 2
        # at line 26:5: component_reference
        @state.following.push( TOKENS_FOLLOWING_component_reference_IN_class_body_165 )
        component_reference
        @state.following.pop

      end
      # at line 27:5: ( NL )?
      alt_8 = 2
      look_8_0 = @input.peek( 1 )

      if ( look_8_0 == NL )
        alt_8 = 1
      end
      case alt_8
      when 1
        # at line 27:5: NL
        match( NL, TOKENS_FOLLOWING_NL_IN_class_body_171 )

      end

      # --> action
       value = a 
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 4 )


      end

      return value
    end



    #
    # parser rule component_reference
    #
    # (in lib/Entity.g)
    # 30:1: component_reference : '-' IDENT NL ;
    #
    def component_reference
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      begin
      # at line 31:5: '-' IDENT NL
      match( T__36, TOKENS_FOLLOWING_T__36_IN_component_reference_187 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_component_reference_189 )
      match( NL, TOKENS_FOLLOWING_NL_IN_component_reference_191 )

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
    # 34:1: function_definition returns [value] : OPEN type= variable_type name= IDENT ( CLOSE | NL (a= statement )* CLOSE ) ;
    #
    def function_definition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      value = nil


      name = nil
      type = nil
      a = nil


      begin
      # at line 35:5: OPEN type= variable_type name= IDENT ( CLOSE | NL (a= statement )* CLOSE )
      match( OPEN, TOKENS_FOLLOWING_OPEN_IN_function_definition_207 )
      @state.following.push( TOKENS_FOLLOWING_variable_type_IN_function_definition_211 )
      type = variable_type
      @state.following.pop
      name = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_function_definition_215 )

      # --> action
       value = FunctionDefinitionEval.new(type, name.text) 
      # <-- action

      # at line 36:3: ( CLOSE | NL (a= statement )* CLOSE )
      alt_10 = 2
      look_10_0 = @input.peek( 1 )

      if ( look_10_0 == CLOSE )
        alt_10 = 1
      elsif ( look_10_0 == NL )
        alt_10 = 2
      else
        raise NoViableAlternative( "", 10, 0 )

      end
      case alt_10
      when 1
        # at line 36:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_function_definition_223 )

      when 2
        # at line 36:13: NL (a= statement )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_function_definition_227 )
        # at line 36:16: (a= statement )*
        while true # decision 9
          alt_9 = 2
          look_9_0 = @input.peek( 1 )

          if ( look_9_0.between?( IDENT, IF ) || look_9_0 == RETURN )
            alt_9 = 1

          end
          case alt_9
          when 1
            # at line 36:17: a= statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_function_definition_232 )
            a = statement
            @state.following.pop

            # --> action
             value.add_statement(a) 
            # <-- action


          else
            break # out of loop for decision 9
          end
        end # loop for decision 9

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_function_definition_239 )

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
    # parser rule variable_type
    #
    # (in lib/Entity.g)
    # 39:1: variable_type returns [value] : a= ( TYPE_FLOAT | TYPE_INT | TYPE_BOOL | TYPE_STRING | TYPE_VOID ) ;
    #
    def variable_type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      value = nil


      a = nil


      begin
      # at line 40:5: a= ( TYPE_FLOAT | TYPE_INT | TYPE_BOOL | TYPE_STRING | TYPE_VOID )
      a = @input.look

      if @input.peek( 1 ).between?( TYPE_BOOL, TYPE_VOID )
        @input.consume
        @state.error_recovery = false

      else
        mse = MismatchedSet( nil )
        raise mse

      end



      # --> action
       value = a.text 
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
    # parser rule statement
    #
    # (in lib/Entity.g)
    # 48:1: statement returns [value] : a= ( if_statement | return_statement | variable_assignment_statement | function_call_statement ) ( NL )? ;
    #
    def statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      value = nil


      a = nil


      begin
      # at line 49:5: a= ( if_statement | return_statement | variable_assignment_statement | function_call_statement ) ( NL )?
      # at line 49:7: ( if_statement | return_statement | variable_assignment_statement | function_call_statement )
      alt_11 = 4
      alt_11 = @dfa11.predict( @input )
      case alt_11
      when 1
        # at line 49:9: if_statement
        @state.following.push( TOKENS_FOLLOWING_if_statement_IN_statement_311 )
        a = if_statement
        @state.following.pop

      when 2
        # at line 50:5: return_statement
        @state.following.push( TOKENS_FOLLOWING_return_statement_IN_statement_317 )
        a = return_statement
        @state.following.pop

      when 3
        # at line 51:5: variable_assignment_statement
        @state.following.push( TOKENS_FOLLOWING_variable_assignment_statement_IN_statement_323 )
        a = variable_assignment_statement
        @state.following.pop

      when 4
        # at line 52:5: function_call_statement
        @state.following.push( TOKENS_FOLLOWING_function_call_statement_IN_statement_329 )
        a = function_call_statement
        @state.following.pop

      end
      # at line 53:5: ( NL )?
      alt_12 = 2
      look_12_0 = @input.peek( 1 )

      if ( look_12_0 == NL )
        alt_12 = 1
      end
      case alt_12
      when 1
        # at line 53:5: NL
        match( NL, TOKENS_FOLLOWING_NL_IN_statement_335 )

      end

      # --> action
       value = a 
      # <-- action


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
    # parser rule if_statement
    #
    # (in lib/Entity.g)
    # 57:1: if_statement returns [value] : IF a= expression ( CLOSE | NL (b= statement )* CLOSE ) ;
    #
    def if_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      value = nil


      a = nil
      b = nil


      begin
      # at line 58:5: IF a= expression ( CLOSE | NL (b= statement )* CLOSE )
      match( IF, TOKENS_FOLLOWING_IF_IN_if_statement_356 )
      @state.following.push( TOKENS_FOLLOWING_expression_IN_if_statement_360 )
      a = expression
      @state.following.pop

      # --> action
       value = IfStatementEval.new(a) 
      # <-- action

      # at line 59:3: ( CLOSE | NL (b= statement )* CLOSE )
      alt_14 = 2
      look_14_0 = @input.peek( 1 )

      if ( look_14_0 == CLOSE )
        alt_14 = 1
      elsif ( look_14_0 == NL )
        alt_14 = 2
      else
        raise NoViableAlternative( "", 14, 0 )

      end
      case alt_14
      when 1
        # at line 59:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_if_statement_368 )

      when 2
        # at line 59:13: NL (b= statement )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_if_statement_372 )
        # at line 59:16: (b= statement )*
        while true # decision 13
          alt_13 = 2
          look_13_0 = @input.peek( 1 )

          if ( look_13_0.between?( IDENT, IF ) || look_13_0 == RETURN )
            alt_13 = 1

          end
          case alt_13
          when 1
            # at line 59:17: b= statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_if_statement_377 )
            b = statement
            @state.following.pop

            # --> action
             value.add_statement(b) 
            # <-- action


          else
            break # out of loop for decision 13
          end
        end # loop for decision 13

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_if_statement_384 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 9 )


      end

      return value
    end



    #
    # parser rule return_statement
    #
    # (in lib/Entity.g)
    # 62:1: return_statement returns [value] : RETURN a= expression ;
    #
    def return_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      value = nil


      a = nil


      begin
      # at line 63:5: RETURN a= expression
      match( RETURN, TOKENS_FOLLOWING_RETURN_IN_return_statement_402 )
      @state.following.push( TOKENS_FOLLOWING_expression_IN_return_statement_406 )
      a = expression
      @state.following.pop

      # --> action
       value = ReturnStatementEval.new(a) 
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
    # parser rule variable_assignment_statement
    #
    # (in lib/Entity.g)
    # 66:1: variable_assignment_statement returns [value] : a= variable_path '=' b= expression ;
    #
    def variable_assignment_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      value = nil


      a = nil
      b = nil


      begin
      # at line 67:5: a= variable_path '=' b= expression
      @state.following.push( TOKENS_FOLLOWING_variable_path_IN_variable_assignment_statement_426 )
      a = variable_path
      @state.following.pop
      match( T__43, TOKENS_FOLLOWING_T__43_IN_variable_assignment_statement_428 )
      @state.following.push( TOKENS_FOLLOWING_expression_IN_variable_assignment_statement_432 )
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
        # trace_out( __method__, 11 )


      end

      return value
    end



    #
    # parser rule function_call_statement
    #
    # (in lib/Entity.g)
    # 70:1: function_call_statement returns [value] : a= variable_path '(' (b= expression ( ',' b= expression )* )? ')' ;
    #
    def function_call_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      value = nil


      a = nil
      b = nil


      begin
      # at line 71:5: a= variable_path '(' (b= expression ( ',' b= expression )* )? ')'
      @state.following.push( TOKENS_FOLLOWING_variable_path_IN_function_call_statement_452 )
      a = variable_path
      @state.following.pop
      match( T__31, TOKENS_FOLLOWING_T__31_IN_function_call_statement_454 )

      # --> action
       value = FunctionCallStatementEval.new(a) 
      # <-- action

      # at line 72:3: (b= expression ( ',' b= expression )* )?
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0.between?( BOOLEAN, CHAR ) || look_16_0.between?( FLOAT, IDENT ) || look_16_0 == INTEGER || look_16_0 == STRING || look_16_0 == T__28 || look_16_0 == T__31 || look_16_0 == T__34 || look_16_0 == T__36 )
        alt_16 = 1
      end
      case alt_16
      when 1
        # at line 72:5: b= expression ( ',' b= expression )*
        @state.following.push( TOKENS_FOLLOWING_expression_IN_function_call_statement_464 )
        b = expression
        @state.following.pop

        # --> action
         value.add_argument(b) 
        # <-- action

        # at line 73:5: ( ',' b= expression )*
        while true # decision 15
          alt_15 = 2
          look_15_0 = @input.peek( 1 )

          if ( look_15_0 == T__35 )
            alt_15 = 1

          end
          case alt_15
          when 1
            # at line 73:8: ',' b= expression
            match( T__35, TOKENS_FOLLOWING_T__35_IN_function_call_statement_475 )
            @state.following.push( TOKENS_FOLLOWING_expression_IN_function_call_statement_479 )
            b = expression
            @state.following.pop

            # --> action
             value.add_argument(b) 
            # <-- action


          else
            break # out of loop for decision 15
          end
        end # loop for decision 15


      end
      match( T__32, TOKENS_FOLLOWING_T__32_IN_function_call_statement_495 )

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
    # parser rule variable_path
    #
    # (in lib/Entity.g)
    # 78:1: variable_path returns [value] : base= IDENT (path1= ( '.' | '::' ) path2= IDENT )* ;
    #
    def variable_path
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      value = nil


      base = nil
      path1 = nil
      path2 = nil


      begin
      # at line 79:5: base= IDENT (path1= ( '.' | '::' ) path2= IDENT )*
      base = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_variable_path_513 )

      # --> action
       value = VariablePathEval.new(base.text) 
      # <-- action

      # at line 80:3: (path1= ( '.' | '::' ) path2= IDENT )*
      while true # decision 17
        alt_17 = 2
        look_17_0 = @input.peek( 1 )

        if ( look_17_0 == T__37 || look_17_0 == T__40 )
          alt_17 = 1

        end
        case alt_17
        when 1
          # at line 80:4: path1= ( '.' | '::' ) path2= IDENT
          path1 = @input.look

          if @input.peek(1) == T__37 || @input.peek(1) == T__40
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          path2 = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_variable_path_532 )

          # --> action
           value.add_path(path1.text + path2.text) 
          # <-- action


        else
          break # out of loop for decision 17
        end
      end # loop for decision 17


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 13 )


      end

      return value
    end



    #
    # parser rule component
    #
    # (in lib/Entity.g)
    # 83:1: component : COMPONENT IDENT ( CLOSE | NL ( class_body )* CLOSE ) ;
    #
    def component
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      begin
      # at line 84:5: COMPONENT IDENT ( CLOSE | NL ( class_body )* CLOSE )
      match( COMPONENT, TOKENS_FOLLOWING_COMPONENT_IN_component_550 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_component_552 )
      # at line 85:3: ( CLOSE | NL ( class_body )* CLOSE )
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
        # at line 85:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_component_558 )

      when 2
        # at line 85:13: NL ( class_body )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_component_562 )
        # at line 85:16: ( class_body )*
        while true # decision 18
          alt_18 = 2
          look_18_0 = @input.peek( 1 )

          if ( look_18_0 == OPEN || look_18_0 == T__36 )
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 85:16: class_body
            @state.following.push( TOKENS_FOLLOWING_class_body_IN_component_564 )
            class_body
            @state.following.pop

          else
            break # out of loop for decision 18
          end
        end # loop for decision 18

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_component_567 )

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
    # parser rule system
    #
    # (in lib/Entity.g)
    # 88:1: system : SYSTEM IDENT ( CLOSE | NL ( class_body )* CLOSE ) ;
    #
    def system
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      begin
      # at line 89:5: SYSTEM IDENT ( CLOSE | NL ( class_body )* CLOSE )
      match( SYSTEM, TOKENS_FOLLOWING_SYSTEM_IN_system_582 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_system_584 )
      # at line 90:3: ( CLOSE | NL ( class_body )* CLOSE )
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
        # at line 90:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_system_590 )

      when 2
        # at line 90:13: NL ( class_body )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_system_594 )
        # at line 90:16: ( class_body )*
        while true # decision 20
          alt_20 = 2
          look_20_0 = @input.peek( 1 )

          if ( look_20_0 == OPEN || look_20_0 == T__36 )
            alt_20 = 1

          end
          case alt_20
          when 1
            # at line 90:16: class_body
            @state.following.push( TOKENS_FOLLOWING_class_body_IN_system_596 )
            class_body
            @state.following.pop

          else
            break # out of loop for decision 20
          end
        end # loop for decision 20

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_system_599 )

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
    # parser rule enum
    #
    # (in lib/Entity.g)
    # 93:1: enum : ENUM IDENT ( CLOSE | NL ( class_body )* CLOSE ) ;
    #
    def enum
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      begin
      # at line 94:5: ENUM IDENT ( CLOSE | NL ( class_body )* CLOSE )
      match( ENUM, TOKENS_FOLLOWING_ENUM_IN_enum_614 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_enum_616 )
      # at line 95:3: ( CLOSE | NL ( class_body )* CLOSE )
      alt_23 = 2
      look_23_0 = @input.peek( 1 )

      if ( look_23_0 == CLOSE )
        alt_23 = 1
      elsif ( look_23_0 == NL )
        alt_23 = 2
      else
        raise NoViableAlternative( "", 23, 0 )

      end
      case alt_23
      when 1
        # at line 95:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_enum_622 )

      when 2
        # at line 95:13: NL ( class_body )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_enum_626 )
        # at line 95:16: ( class_body )*
        while true # decision 22
          alt_22 = 2
          look_22_0 = @input.peek( 1 )

          if ( look_22_0 == OPEN || look_22_0 == T__36 )
            alt_22 = 1

          end
          case alt_22
          when 1
            # at line 95:16: class_body
            @state.following.push( TOKENS_FOLLOWING_class_body_IN_enum_628 )
            class_body
            @state.following.pop

          else
            break # out of loop for decision 22
          end
        end # loop for decision 22

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_enum_631 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 16 )


      end

      return 
    end



    #
    # parser rule term
    #
    # (in lib/Entity.g)
    # 98:1: term returns [value] : (b= variable_path |b= function_call_statement | '(' b= expression ')' |a= INTEGER |a= FLOAT |a= BOOLEAN |a= STRING |a= CHAR );
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      value = nil


      a = nil
      b = nil


      begin
      # at line 99:3: (b= variable_path |b= function_call_statement | '(' b= expression ')' |a= INTEGER |a= FLOAT |a= BOOLEAN |a= STRING |a= CHAR )
      alt_24 = 8
      alt_24 = @dfa24.predict( @input )
      case alt_24
      when 1
        # at line 99:5: b= variable_path
        @state.following.push( TOKENS_FOLLOWING_variable_path_IN_term_651 )
        b = variable_path
        @state.following.pop

        # --> action
         value = b 
        # <-- action


      when 2
        # at line 100:5: b= function_call_statement
        @state.following.push( TOKENS_FOLLOWING_function_call_statement_IN_term_661 )
        b = function_call_statement
        @state.following.pop

        # --> action
         value = b 
        # <-- action


      when 3
        # at line 101:5: '(' b= expression ')'
        match( T__31, TOKENS_FOLLOWING_T__31_IN_term_669 )
        @state.following.push( TOKENS_FOLLOWING_expression_IN_term_673 )
        b = expression
        @state.following.pop
        match( T__32, TOKENS_FOLLOWING_T__32_IN_term_675 )

        # --> action
         value = ParenExpressionEval.new(b) 
        # <-- action


      when 4
        # at line 102:5: a= INTEGER
        a = match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_term_685 )

        # --> action
         value = LiteralEval.new(:int, a.text) 
        # <-- action


      when 5
        # at line 103:5: a= FLOAT
        a = match( FLOAT, TOKENS_FOLLOWING_FLOAT_IN_term_695 )

        # --> action
         value = LiteralEval.new(:float, a.text) 
        # <-- action


      when 6
        # at line 104:5: a= BOOLEAN
        a = match( BOOLEAN, TOKENS_FOLLOWING_BOOLEAN_IN_term_707 )

        # --> action
         value = LiteralEval.new(:bool, a.text) 
        # <-- action


      when 7
        # at line 105:5: a= STRING
        a = match( STRING, TOKENS_FOLLOWING_STRING_IN_term_717 )

        # --> action
         value = LiteralEval.new(:string, a.text) 
        # <-- action


      when 8
        # at line 106:5: a= CHAR
        a = match( CHAR, TOKENS_FOLLOWING_CHAR_IN_term_728 )

        # --> action
         value = LiteralEval.new(:char, a.text) 
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
    # parser rule negation
    #
    # (in lib/Entity.g)
    # 109:1: negation returns [value] : ( '!' a= negation |a= term );
    #
    def negation
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      value = nil


      a = nil


      begin
      # at line 110:3: ( '!' a= negation |a= term )
      alt_25 = 2
      look_25_0 = @input.peek( 1 )

      if ( look_25_0 == T__28 )
        alt_25 = 1
      elsif ( look_25_0.between?( BOOLEAN, CHAR ) || look_25_0.between?( FLOAT, IDENT ) || look_25_0 == INTEGER || look_25_0 == STRING || look_25_0 == T__31 )
        alt_25 = 2
      else
        raise NoViableAlternative( "", 25, 0 )

      end
      case alt_25
      when 1
        # at line 110:5: '!' a= negation
        match( T__28, TOKENS_FOLLOWING_T__28_IN_negation_749 )
        @state.following.push( TOKENS_FOLLOWING_negation_IN_negation_753 )
        a = negation
        @state.following.pop

        # --> action
         value = SingleOperandExpressionEval.new('!', a) 
        # <-- action


      when 2
        # at line 111:5: a= term
        @state.following.push( TOKENS_FOLLOWING_term_IN_negation_763 )
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
        # trace_out( __method__, 18 )


      end

      return value
    end



    #
    # parser rule unary
    #
    # (in lib/Entity.g)
    # 114:1: unary returns [value] : (type= ( '+' | '-' ) a= unary |a= negation );
    #
    def unary
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      value = nil


      type = nil
      a = nil


      begin
      # at line 115:3: (type= ( '+' | '-' ) a= unary |a= negation )
      alt_26 = 2
      look_26_0 = @input.peek( 1 )

      if ( look_26_0 == T__34 || look_26_0 == T__36 )
        alt_26 = 1
      elsif ( look_26_0.between?( BOOLEAN, CHAR ) || look_26_0.between?( FLOAT, IDENT ) || look_26_0 == INTEGER || look_26_0 == STRING || look_26_0 == T__28 || look_26_0 == T__31 )
        alt_26 = 2
      else
        raise NoViableAlternative( "", 26, 0 )

      end
      case alt_26
      when 1
        # at line 115:5: type= ( '+' | '-' ) a= unary
        type = @input.look

        if @input.peek(1) == T__34 || @input.peek(1) == T__36
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_unary_IN_unary_793 )
        a = unary
        @state.following.pop

        # --> action
         value = SingleOperandExpressionEval.new(type.text, a) 
        # <-- action


      when 2
        # at line 116:5: a= negation
        @state.following.push( TOKENS_FOLLOWING_negation_IN_unary_803 )
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
        # trace_out( __method__, 19 )


      end

      return value
    end



    #
    # parser rule mult
    #
    # (in lib/Entity.g)
    # 119:1: mult returns [value] : a= unary (type= ( '*' | '/' | '%' ) b= mult )? ;
    #
    def mult
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      value = nil


      type = nil
      a = nil
      b = nil


      begin
      # at line 120:5: a= unary (type= ( '*' | '/' | '%' ) b= mult )?
      @state.following.push( TOKENS_FOLLOWING_unary_IN_mult_823 )
      a = unary
      @state.following.pop

      # --> action
       value = a 
      # <-- action

      # at line 121:3: (type= ( '*' | '/' | '%' ) b= mult )?
      alt_27 = 2
      look_27_0 = @input.peek( 1 )

      if ( look_27_0 == T__29 || look_27_0 == T__33 || look_27_0 == T__38 )
        alt_27 = 1
      end
      case alt_27
      when 1
        # at line 121:5: type= ( '*' | '/' | '%' ) b= mult
        type = @input.look

        if @input.peek(1) == T__29 || @input.peek(1) == T__33 || @input.peek(1) == T__38
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_mult_IN_mult_847 )
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
        # trace_out( __method__, 20 )


      end

      return value
    end



    #
    # parser rule add
    #
    # (in lib/Entity.g)
    # 124:1: add returns [value] : a= mult (type= ( '+' | '-' ) b= add )? ;
    #
    def add
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      value = nil


      type = nil
      a = nil
      b = nil


      begin
      # at line 125:5: a= mult (type= ( '+' | '-' ) b= add )?
      @state.following.push( TOKENS_FOLLOWING_mult_IN_add_871 )
      a = mult
      @state.following.pop

      # --> action
       value = a 
      # <-- action

      # at line 126:3: (type= ( '+' | '-' ) b= add )?
      alt_28 = 2
      look_28_0 = @input.peek( 1 )

      if ( look_28_0 == T__34 || look_28_0 == T__36 )
        alt_28 = 1
      end
      case alt_28
      when 1
        # at line 126:6: type= ( '+' | '-' ) b= add
        type = @input.look

        if @input.peek(1) == T__34 || @input.peek(1) == T__36
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_add_IN_add_892 )
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
        # trace_out( __method__, 21 )


      end

      return value
    end



    #
    # parser rule relation
    #
    # (in lib/Entity.g)
    # 131:1: relation returns [value] : a= add (type= ( '=' | '/=' | '<' | '<=' | '>=' | '>' ) b= relation )? ;
    #
    def relation
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      value = nil


      type = nil
      a = nil
      b = nil


      begin
      # at line 132:5: a= add (type= ( '=' | '/=' | '<' | '<=' | '>=' | '>' ) b= relation )?
      @state.following.push( TOKENS_FOLLOWING_add_IN_relation_922 )
      a = add
      @state.following.pop

      # --> action
       value = a 
      # <-- action

      # at line 133:3: (type= ( '=' | '/=' | '<' | '<=' | '>=' | '>' ) b= relation )?
      alt_29 = 2
      look_29_0 = @input.peek( 1 )

      if ( look_29_0 == T__39 || look_29_0.between?( T__41, T__45 ) )
        alt_29 = 1
      end
      case alt_29
      when 1
        # at line 133:6: type= ( '=' | '/=' | '<' | '<=' | '>=' | '>' ) b= relation
        type = @input.look

        if @input.peek(1) == T__39 || @input.peek( 1 ).between?( T__41, T__45 )
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_relation_IN_relation_959 )
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
        # trace_out( __method__, 22 )


      end

      return value
    end



    #
    # parser rule expression
    #
    # (in lib/Entity.g)
    # 138:1: expression returns [value] : a= relation (type= ( '&&' | '||' ) b= expression )? ;
    #
    def expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      value = nil


      type = nil
      a = nil
      b = nil


      begin
      # at line 139:5: a= relation (type= ( '&&' | '||' ) b= expression )?
      @state.following.push( TOKENS_FOLLOWING_relation_IN_expression_989 )
      a = relation
      @state.following.pop

      # --> action
       value = a 
      # <-- action

      # at line 140:3: (type= ( '&&' | '||' ) b= expression )?
      alt_30 = 2
      look_30_0 = @input.peek( 1 )

      if ( look_30_0 == T__30 || look_30_0 == T__46 )
        alt_30 = 1
      end
      case alt_30
      when 1
        # at line 140:6: type= ( '&&' | '||' ) b= expression
        type = @input.look

        if @input.peek(1) == T__30 || @input.peek(1) == T__46
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1010 )
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
        # trace_out( __method__, 23 )


      end

      return value
    end



    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA11 < ANTLR3::DFA
      EOT = unpack( 8, -1 )
      EOF = unpack( 8, -1 )
      MIN = unpack( 1, 13, 2, -1, 1, 31, 1, 13, 2, -1, 1, 31 )
      MAX = unpack( 1, 19, 2, -1, 1, 43, 1, 13, 2, -1, 1, 43 )
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

      @decision = 11


      def description
        <<-'__dfa_description__'.strip!
          49:7: ( if_statement | return_statement | variable_assignment_statement | function_call_statement )
        __dfa_description__
      end

    end
    class DFA24 < ANTLR3::DFA
      EOT = unpack( 12, -1 )
      EOF = unpack( 12, -1 )
      MIN = unpack( 1, 4, 1, 6, 6, -1, 1, 13, 2, -1, 1, 6 )
      MAX = unpack( 1, 31, 1, 46, 6, -1, 1, 13, 2, -1, 1, 46 )
      ACCEPT = unpack( 2, -1, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 1, 8, 1, -1, 
                       1, 1, 1, 2, 1, -1 )
      SPECIAL = unpack( 12, -1 )
      TRANSITION = [
        unpack( 1, 5, 1, 7, 6, -1, 1, 4, 1, 1, 1, -1, 1, 3, 4, -1, 1, 6, 
                10, -1, 1, 2 ),
        unpack( 1, 9, 6, -1, 2, 9, 2, -1, 1, 9, 1, -1, 1, 9, 9, -1, 2, 
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
        unpack( 1, 9, 6, -1, 2, 9, 2, -1, 1, 9, 1, -1, 1, 9, 9, -1, 2, 
                 9, 1, 10, 5, 9, 1, 8, 2, 9, 1, 8, 6, 9 )
      ].freeze

      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end

      @decision = 24


      def description
        <<-'__dfa_description__'.strip!
          98:1: term returns [value] : (b= variable_path |b= function_call_statement | '(' b= expression ')' |a= INTEGER |a= FLOAT |a= BOOLEAN |a= STRING |a= CHAR );
        __dfa_description__
      end

    end


    private

    def initialize_dfas
      super rescue nil
      @dfa11 = DFA11.new( self, 11 )


      @dfa24 = DFA24.new( self, 24 )


    end

    TOKENS_FOLLOWING_NL_IN_file_27 = Set[ 1, 8, 10, 11, 18, 21 ]
    TOKENS_FOLLOWING_definition_IN_file_37 = Set[ 1, 8, 10, 11, 18, 21 ]
    TOKENS_FOLLOWING_entity_IN_definition_61 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_component_IN_definition_67 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_system_IN_definition_73 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_enum_IN_definition_79 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_function_definition_IN_definition_85 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_NL_IN_definition_91 = Set[ 1 ]
    TOKENS_FOLLOWING_ENTITY_IN_entity_110 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_entity_114 = Set[ 6, 17 ]
    TOKENS_FOLLOWING_CLOSE_IN_entity_122 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_entity_126 = Set[ 6, 18, 36 ]
    TOKENS_FOLLOWING_class_body_IN_entity_131 = Set[ 6, 18, 36 ]
    TOKENS_FOLLOWING_CLOSE_IN_entity_137 = Set[ 1 ]
    TOKENS_FOLLOWING_function_definition_IN_class_body_159 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_component_reference_IN_class_body_165 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_NL_IN_class_body_171 = Set[ 1 ]
    TOKENS_FOLLOWING_T__36_IN_component_reference_187 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_component_reference_189 = Set[ 17 ]
    TOKENS_FOLLOWING_NL_IN_component_reference_191 = Set[ 1 ]
    TOKENS_FOLLOWING_OPEN_IN_function_definition_207 = Set[ 22, 23, 24, 25, 26 ]
    TOKENS_FOLLOWING_variable_type_IN_function_definition_211 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_function_definition_215 = Set[ 6, 17 ]
    TOKENS_FOLLOWING_CLOSE_IN_function_definition_223 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_function_definition_227 = Set[ 6, 13, 14, 19 ]
    TOKENS_FOLLOWING_statement_IN_function_definition_232 = Set[ 6, 13, 14, 19 ]
    TOKENS_FOLLOWING_CLOSE_IN_function_definition_239 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_variable_type_259 = Set[ 1 ]
    TOKENS_FOLLOWING_if_statement_IN_statement_311 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_return_statement_IN_statement_317 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_variable_assignment_statement_IN_statement_323 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_function_call_statement_IN_statement_329 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_NL_IN_statement_335 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_if_statement_356 = Set[ 4, 5, 12, 13, 15, 20, 28, 31, 34, 36 ]
    TOKENS_FOLLOWING_expression_IN_if_statement_360 = Set[ 6, 17 ]
    TOKENS_FOLLOWING_CLOSE_IN_if_statement_368 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_if_statement_372 = Set[ 6, 13, 14, 19 ]
    TOKENS_FOLLOWING_statement_IN_if_statement_377 = Set[ 6, 13, 14, 19 ]
    TOKENS_FOLLOWING_CLOSE_IN_if_statement_384 = Set[ 1 ]
    TOKENS_FOLLOWING_RETURN_IN_return_statement_402 = Set[ 4, 5, 12, 13, 15, 20, 28, 31, 34, 36 ]
    TOKENS_FOLLOWING_expression_IN_return_statement_406 = Set[ 1 ]
    TOKENS_FOLLOWING_variable_path_IN_variable_assignment_statement_426 = Set[ 43 ]
    TOKENS_FOLLOWING_T__43_IN_variable_assignment_statement_428 = Set[ 4, 5, 12, 13, 15, 20, 28, 31, 34, 36 ]
    TOKENS_FOLLOWING_expression_IN_variable_assignment_statement_432 = Set[ 1 ]
    TOKENS_FOLLOWING_variable_path_IN_function_call_statement_452 = Set[ 31 ]
    TOKENS_FOLLOWING_T__31_IN_function_call_statement_454 = Set[ 4, 5, 12, 13, 15, 20, 28, 31, 32, 34, 36 ]
    TOKENS_FOLLOWING_expression_IN_function_call_statement_464 = Set[ 32, 35 ]
    TOKENS_FOLLOWING_T__35_IN_function_call_statement_475 = Set[ 4, 5, 12, 13, 15, 20, 28, 31, 34, 36 ]
    TOKENS_FOLLOWING_expression_IN_function_call_statement_479 = Set[ 32, 35 ]
    TOKENS_FOLLOWING_T__32_IN_function_call_statement_495 = Set[ 1 ]
    TOKENS_FOLLOWING_IDENT_IN_variable_path_513 = Set[ 1, 37, 40 ]
    TOKENS_FOLLOWING_set_IN_variable_path_522 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_variable_path_532 = Set[ 1, 37, 40 ]
    TOKENS_FOLLOWING_COMPONENT_IN_component_550 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_component_552 = Set[ 6, 17 ]
    TOKENS_FOLLOWING_CLOSE_IN_component_558 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_component_562 = Set[ 6, 18, 36 ]
    TOKENS_FOLLOWING_class_body_IN_component_564 = Set[ 6, 18, 36 ]
    TOKENS_FOLLOWING_CLOSE_IN_component_567 = Set[ 1 ]
    TOKENS_FOLLOWING_SYSTEM_IN_system_582 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_system_584 = Set[ 6, 17 ]
    TOKENS_FOLLOWING_CLOSE_IN_system_590 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_system_594 = Set[ 6, 18, 36 ]
    TOKENS_FOLLOWING_class_body_IN_system_596 = Set[ 6, 18, 36 ]
    TOKENS_FOLLOWING_CLOSE_IN_system_599 = Set[ 1 ]
    TOKENS_FOLLOWING_ENUM_IN_enum_614 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_enum_616 = Set[ 6, 17 ]
    TOKENS_FOLLOWING_CLOSE_IN_enum_622 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_enum_626 = Set[ 6, 18, 36 ]
    TOKENS_FOLLOWING_class_body_IN_enum_628 = Set[ 6, 18, 36 ]
    TOKENS_FOLLOWING_CLOSE_IN_enum_631 = Set[ 1 ]
    TOKENS_FOLLOWING_variable_path_IN_term_651 = Set[ 1 ]
    TOKENS_FOLLOWING_function_call_statement_IN_term_661 = Set[ 1 ]
    TOKENS_FOLLOWING_T__31_IN_term_669 = Set[ 4, 5, 12, 13, 15, 20, 28, 31, 34, 36 ]
    TOKENS_FOLLOWING_expression_IN_term_673 = Set[ 32 ]
    TOKENS_FOLLOWING_T__32_IN_term_675 = Set[ 1 ]
    TOKENS_FOLLOWING_INTEGER_IN_term_685 = Set[ 1 ]
    TOKENS_FOLLOWING_FLOAT_IN_term_695 = Set[ 1 ]
    TOKENS_FOLLOWING_BOOLEAN_IN_term_707 = Set[ 1 ]
    TOKENS_FOLLOWING_STRING_IN_term_717 = Set[ 1 ]
    TOKENS_FOLLOWING_CHAR_IN_term_728 = Set[ 1 ]
    TOKENS_FOLLOWING_T__28_IN_negation_749 = Set[ 4, 5, 12, 13, 15, 20, 28, 31 ]
    TOKENS_FOLLOWING_negation_IN_negation_753 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_negation_763 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_unary_783 = Set[ 4, 5, 12, 13, 15, 20, 28, 31, 34, 36 ]
    TOKENS_FOLLOWING_unary_IN_unary_793 = Set[ 1 ]
    TOKENS_FOLLOWING_negation_IN_unary_803 = Set[ 1 ]
    TOKENS_FOLLOWING_unary_IN_mult_823 = Set[ 1, 29, 33, 38 ]
    TOKENS_FOLLOWING_set_IN_mult_833 = Set[ 4, 5, 12, 13, 15, 20, 28, 31, 34, 36 ]
    TOKENS_FOLLOWING_mult_IN_mult_847 = Set[ 1 ]
    TOKENS_FOLLOWING_mult_IN_add_871 = Set[ 1, 34, 36 ]
    TOKENS_FOLLOWING_set_IN_add_882 = Set[ 4, 5, 12, 13, 15, 20, 28, 31, 34, 36 ]
    TOKENS_FOLLOWING_add_IN_add_892 = Set[ 1 ]
    TOKENS_FOLLOWING_add_IN_relation_922 = Set[ 1, 39, 41, 42, 43, 44, 45 ]
    TOKENS_FOLLOWING_set_IN_relation_933 = Set[ 4, 5, 12, 13, 15, 20, 28, 31, 34, 36 ]
    TOKENS_FOLLOWING_relation_IN_relation_959 = Set[ 1 ]
    TOKENS_FOLLOWING_relation_IN_expression_989 = Set[ 1, 30, 46 ]
    TOKENS_FOLLOWING_set_IN_expression_1000 = Set[ 4, 5, 12, 13, 15, 20, 28, 31, 34, 36 ]
    TOKENS_FOLLOWING_expression_IN_expression_1010 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
