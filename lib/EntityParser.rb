#!/usr/bin/env ruby
#
# lib/Entity.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: lib/Entity.g
# Generated at: 2013-12-03 14:25:00
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
    define_tokens( :EOF => -1, :CLOSE => 4, :COMPONENT => 5, :DIGIT => 6, 
                   :ELSE => 7, :ENTITY => 8, :ENUM => 9, :FALSE => 10, :IDENT => 11, 
                   :IF => 12, :MINUS => 13, :NL => 14, :OPEN => 15, :SYSTEM => 16, 
                   :TRUE => 17, :WS => 18 )


    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "CLOSE", "COMPONENT", "DIGIT", "ELSE", "ENTITY", "ENUM", 
                    "FALSE", "IDENT", "IF", "MINUS", "NL", "OPEN", "SYSTEM", 
                    "TRUE", "WS" )


  end


  class Parser < ANTLR3::Parser
    @grammar_home = Entity

    RULE_METHODS = [ :file, :definition, :entity, :class_body, :component_reference, 
                     :function_definition, :statement, :if_statement, :component, 
                     :system, :enum, :expression ].freeze

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
    # 5:1: file : ( NL )? ( definition )* ;
    #
    def file
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 6:5: ( NL )? ( definition )*
      # at line 6:5: ( NL )?
      alt_1 = 2
      look_1_0 = @input.peek( 1 )

      if ( look_1_0 == NL )
        alt_1 = 1
      end
      case alt_1
      when 1
        # at line 6:5: NL
        match( NL, TOKENS_FOLLOWING_NL_IN_file_24 )

      end
      # at line 6:9: ( definition )*
      while true # decision 2
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0 == COMPONENT || look_2_0.between?( ENTITY, ENUM ) || look_2_0 == SYSTEM )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 6:9: definition
          @state.following.push( TOKENS_FOLLOWING_definition_IN_file_27 )
          definition
          @state.following.pop

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

      return 
    end



    #
    # parser rule definition
    #
    # (in lib/Entity.g)
    # 9:1: definition : ( entity | component | system | enum ) ( NL )? ;
    #
    def definition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      begin
      # at line 10:5: ( entity | component | system | enum ) ( NL )?
      # at line 10:5: ( entity | component | system | enum )
      alt_3 = 4
      case look_3 = @input.peek( 1 )
      when ENTITY then alt_3 = 1
      when COMPONENT then alt_3 = 2
      when SYSTEM then alt_3 = 3
      when ENUM then alt_3 = 4
      else
        raise NoViableAlternative( "", 3, 0 )

      end
      case alt_3
      when 1
        # at line 10:7: entity
        @state.following.push( TOKENS_FOLLOWING_entity_IN_definition_43 )
        entity
        @state.following.pop

      when 2
        # at line 11:5: component
        @state.following.push( TOKENS_FOLLOWING_component_IN_definition_49 )
        component
        @state.following.pop

      when 3
        # at line 12:5: system
        @state.following.push( TOKENS_FOLLOWING_system_IN_definition_55 )
        system
        @state.following.pop

      when 4
        # at line 13:5: enum
        @state.following.push( TOKENS_FOLLOWING_enum_IN_definition_61 )
        enum
        @state.following.pop

      end
      # at line 14:5: ( NL )?
      alt_4 = 2
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == NL )
        alt_4 = 1
      end
      case alt_4
      when 1
        # at line 14:5: NL
        match( NL, TOKENS_FOLLOWING_NL_IN_definition_67 )

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
    # 17:1: entity : ENTITY IDENT ( CLOSE | NL ( class_body )* CLOSE ) ;
    #
    def entity
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      begin
      # at line 18:5: ENTITY IDENT ( CLOSE | NL ( class_body )* CLOSE )
      match( ENTITY, TOKENS_FOLLOWING_ENTITY_IN_entity_81 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_entity_83 )
      # at line 19:3: ( CLOSE | NL ( class_body )* CLOSE )
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
        # at line 19:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_entity_89 )

      when 2
        # at line 19:13: NL ( class_body )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_entity_93 )
        # at line 19:16: ( class_body )*
        while true # decision 5
          alt_5 = 2
          look_5_0 = @input.peek( 1 )

          if ( look_5_0 == MINUS || look_5_0 == OPEN )
            alt_5 = 1

          end
          case alt_5
          when 1
            # at line 19:16: class_body
            @state.following.push( TOKENS_FOLLOWING_class_body_IN_entity_95 )
            class_body
            @state.following.pop

          else
            break # out of loop for decision 5
          end
        end # loop for decision 5

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_entity_98 )

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
    # 22:1: class_body : ( function_definition | component_reference ) ( NL )? ;
    #
    def class_body
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      begin
      # at line 23:5: ( function_definition | component_reference ) ( NL )?
      # at line 23:5: ( function_definition | component_reference )
      alt_7 = 2
      look_7_0 = @input.peek( 1 )

      if ( look_7_0 == OPEN )
        alt_7 = 1
      elsif ( look_7_0 == MINUS )
        alt_7 = 2
      else
        raise NoViableAlternative( "", 7, 0 )

      end
      case alt_7
      when 1
        # at line 23:7: function_definition
        @state.following.push( TOKENS_FOLLOWING_function_definition_IN_class_body_115 )
        function_definition
        @state.following.pop

      when 2
        # at line 24:5: component_reference
        @state.following.push( TOKENS_FOLLOWING_component_reference_IN_class_body_121 )
        component_reference
        @state.following.pop

      end
      # at line 25:5: ( NL )?
      alt_8 = 2
      look_8_0 = @input.peek( 1 )

      if ( look_8_0 == NL )
        alt_8 = 1
      end
      case alt_8
      when 1
        # at line 25:5: NL
        match( NL, TOKENS_FOLLOWING_NL_IN_class_body_127 )

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
    # 28:1: component_reference : MINUS IDENT NL ;
    #
    def component_reference
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      begin
      # at line 29:5: MINUS IDENT NL
      match( MINUS, TOKENS_FOLLOWING_MINUS_IN_component_reference_141 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_component_reference_143 )
      match( NL, TOKENS_FOLLOWING_NL_IN_component_reference_145 )

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
    # 32:1: function_definition : OPEN IDENT ( CLOSE | NL ( statement )* CLOSE ) ;
    #
    def function_definition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      begin
      # at line 33:5: OPEN IDENT ( CLOSE | NL ( statement )* CLOSE )
      match( OPEN, TOKENS_FOLLOWING_OPEN_IN_function_definition_158 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_function_definition_160 )
      # at line 34:3: ( CLOSE | NL ( statement )* CLOSE )
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
        # at line 34:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_function_definition_166 )

      when 2
        # at line 34:13: NL ( statement )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_function_definition_170 )
        # at line 34:16: ( statement )*
        while true # decision 9
          alt_9 = 2
          look_9_0 = @input.peek( 1 )

          if ( look_9_0 == DIGIT || look_9_0 == IF )
            alt_9 = 1

          end
          case alt_9
          when 1
            # at line 34:16: statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_function_definition_172 )
            statement
            @state.following.pop

          else
            break # out of loop for decision 9
          end
        end # loop for decision 9

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_function_definition_175 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 6 )


      end

      return 
    end



    #
    # parser rule statement
    #
    # (in lib/Entity.g)
    # 37:1: statement : ( if_statement | DIGIT ) ( NL )? ;
    #
    def statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      begin
      # at line 38:5: ( if_statement | DIGIT ) ( NL )?
      # at line 38:5: ( if_statement | DIGIT )
      alt_11 = 2
      look_11_0 = @input.peek( 1 )

      if ( look_11_0 == IF )
        alt_11 = 1
      elsif ( look_11_0 == DIGIT )
        alt_11 = 2
      else
        raise NoViableAlternative( "", 11, 0 )

      end
      case alt_11
      when 1
        # at line 38:7: if_statement
        @state.following.push( TOKENS_FOLLOWING_if_statement_IN_statement_192 )
        if_statement
        @state.following.pop

      when 2
        # at line 39:5: DIGIT
        match( DIGIT, TOKENS_FOLLOWING_DIGIT_IN_statement_198 )

      end
      # at line 40:5: ( NL )?
      alt_12 = 2
      look_12_0 = @input.peek( 1 )

      if ( look_12_0 == NL )
        alt_12 = 1
      end
      case alt_12
      when 1
        # at line 40:5: NL
        match( NL, TOKENS_FOLLOWING_NL_IN_statement_204 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 7 )


      end

      return 
    end



    #
    # parser rule if_statement
    #
    # (in lib/Entity.g)
    # 43:1: if_statement : IF expression ( CLOSE | NL ( statement )* CLOSE ) ;
    #
    def if_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      begin
      # at line 44:5: IF expression ( CLOSE | NL ( statement )* CLOSE )
      match( IF, TOKENS_FOLLOWING_IF_IN_if_statement_218 )
      @state.following.push( TOKENS_FOLLOWING_expression_IN_if_statement_220 )
      expression
      @state.following.pop
      # at line 45:3: ( CLOSE | NL ( statement )* CLOSE )
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
        # at line 45:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_if_statement_226 )

      when 2
        # at line 45:13: NL ( statement )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_if_statement_230 )
        # at line 45:16: ( statement )*
        while true # decision 13
          alt_13 = 2
          look_13_0 = @input.peek( 1 )

          if ( look_13_0 == DIGIT || look_13_0 == IF )
            alt_13 = 1

          end
          case alt_13
          when 1
            # at line 45:16: statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_if_statement_232 )
            statement
            @state.following.pop

          else
            break # out of loop for decision 13
          end
        end # loop for decision 13

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_if_statement_235 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 8 )


      end

      return 
    end



    #
    # parser rule component
    #
    # (in lib/Entity.g)
    # 48:1: component : COMPONENT IDENT ( CLOSE | NL ( class_body )* CLOSE ) ;
    #
    def component
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      begin
      # at line 49:5: COMPONENT IDENT ( CLOSE | NL ( class_body )* CLOSE )
      match( COMPONENT, TOKENS_FOLLOWING_COMPONENT_IN_component_250 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_component_252 )
      # at line 50:3: ( CLOSE | NL ( class_body )* CLOSE )
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0 == CLOSE )
        alt_16 = 1
      elsif ( look_16_0 == NL )
        alt_16 = 2
      else
        raise NoViableAlternative( "", 16, 0 )

      end
      case alt_16
      when 1
        # at line 50:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_component_258 )

      when 2
        # at line 50:13: NL ( class_body )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_component_262 )
        # at line 50:16: ( class_body )*
        while true # decision 15
          alt_15 = 2
          look_15_0 = @input.peek( 1 )

          if ( look_15_0 == MINUS || look_15_0 == OPEN )
            alt_15 = 1

          end
          case alt_15
          when 1
            # at line 50:16: class_body
            @state.following.push( TOKENS_FOLLOWING_class_body_IN_component_264 )
            class_body
            @state.following.pop

          else
            break # out of loop for decision 15
          end
        end # loop for decision 15

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_component_267 )

      end

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
    # parser rule system
    #
    # (in lib/Entity.g)
    # 53:1: system : SYSTEM IDENT ( CLOSE | NL ( class_body )* CLOSE ) ;
    #
    def system
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      begin
      # at line 54:5: SYSTEM IDENT ( CLOSE | NL ( class_body )* CLOSE )
      match( SYSTEM, TOKENS_FOLLOWING_SYSTEM_IN_system_282 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_system_284 )
      # at line 55:3: ( CLOSE | NL ( class_body )* CLOSE )
      alt_18 = 2
      look_18_0 = @input.peek( 1 )

      if ( look_18_0 == CLOSE )
        alt_18 = 1
      elsif ( look_18_0 == NL )
        alt_18 = 2
      else
        raise NoViableAlternative( "", 18, 0 )

      end
      case alt_18
      when 1
        # at line 55:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_system_290 )

      when 2
        # at line 55:13: NL ( class_body )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_system_294 )
        # at line 55:16: ( class_body )*
        while true # decision 17
          alt_17 = 2
          look_17_0 = @input.peek( 1 )

          if ( look_17_0 == MINUS || look_17_0 == OPEN )
            alt_17 = 1

          end
          case alt_17
          when 1
            # at line 55:16: class_body
            @state.following.push( TOKENS_FOLLOWING_class_body_IN_system_296 )
            class_body
            @state.following.pop

          else
            break # out of loop for decision 17
          end
        end # loop for decision 17

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_system_299 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 10 )


      end

      return 
    end



    #
    # parser rule enum
    #
    # (in lib/Entity.g)
    # 58:1: enum : ENUM IDENT ( CLOSE | NL ( class_body )* CLOSE ) ;
    #
    def enum
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      begin
      # at line 59:5: ENUM IDENT ( CLOSE | NL ( class_body )* CLOSE )
      match( ENUM, TOKENS_FOLLOWING_ENUM_IN_enum_314 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_enum_316 )
      # at line 60:3: ( CLOSE | NL ( class_body )* CLOSE )
      alt_20 = 2
      look_20_0 = @input.peek( 1 )

      if ( look_20_0 == CLOSE )
        alt_20 = 1
      elsif ( look_20_0 == NL )
        alt_20 = 2
      else
        raise NoViableAlternative( "", 20, 0 )

      end
      case alt_20
      when 1
        # at line 60:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_enum_322 )

      when 2
        # at line 60:13: NL ( class_body )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_enum_326 )
        # at line 60:16: ( class_body )*
        while true # decision 19
          alt_19 = 2
          look_19_0 = @input.peek( 1 )

          if ( look_19_0 == MINUS || look_19_0 == OPEN )
            alt_19 = 1

          end
          case alt_19
          when 1
            # at line 60:16: class_body
            @state.following.push( TOKENS_FOLLOWING_class_body_IN_enum_328 )
            class_body
            @state.following.pop

          else
            break # out of loop for decision 19
          end
        end # loop for decision 19

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_enum_331 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 11 )


      end

      return 
    end



    #
    # parser rule expression
    #
    # (in lib/Entity.g)
    # 64:1: expression returns [value] : d= DIGIT ;
    #
    def expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      value = nil


      d = nil


      begin
      # at line 65:5: d= DIGIT
      d = match( DIGIT, TOKENS_FOLLOWING_DIGIT_IN_expression_352 )

      # --> action
       value=ExpressionEval.new(d.text) 
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 12 )


      end

      return value
    end



    TOKENS_FOLLOWING_NL_IN_file_24 = Set[ 1, 5, 8, 9, 16 ]
    TOKENS_FOLLOWING_definition_IN_file_27 = Set[ 1, 5, 8, 9, 16 ]
    TOKENS_FOLLOWING_entity_IN_definition_43 = Set[ 1, 14 ]
    TOKENS_FOLLOWING_component_IN_definition_49 = Set[ 1, 14 ]
    TOKENS_FOLLOWING_system_IN_definition_55 = Set[ 1, 14 ]
    TOKENS_FOLLOWING_enum_IN_definition_61 = Set[ 1, 14 ]
    TOKENS_FOLLOWING_NL_IN_definition_67 = Set[ 1 ]
    TOKENS_FOLLOWING_ENTITY_IN_entity_81 = Set[ 11 ]
    TOKENS_FOLLOWING_IDENT_IN_entity_83 = Set[ 4, 14 ]
    TOKENS_FOLLOWING_CLOSE_IN_entity_89 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_entity_93 = Set[ 4, 13, 15 ]
    TOKENS_FOLLOWING_class_body_IN_entity_95 = Set[ 4, 13, 15 ]
    TOKENS_FOLLOWING_CLOSE_IN_entity_98 = Set[ 1 ]
    TOKENS_FOLLOWING_function_definition_IN_class_body_115 = Set[ 1, 14 ]
    TOKENS_FOLLOWING_component_reference_IN_class_body_121 = Set[ 1, 14 ]
    TOKENS_FOLLOWING_NL_IN_class_body_127 = Set[ 1 ]
    TOKENS_FOLLOWING_MINUS_IN_component_reference_141 = Set[ 11 ]
    TOKENS_FOLLOWING_IDENT_IN_component_reference_143 = Set[ 14 ]
    TOKENS_FOLLOWING_NL_IN_component_reference_145 = Set[ 1 ]
    TOKENS_FOLLOWING_OPEN_IN_function_definition_158 = Set[ 11 ]
    TOKENS_FOLLOWING_IDENT_IN_function_definition_160 = Set[ 4, 14 ]
    TOKENS_FOLLOWING_CLOSE_IN_function_definition_166 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_function_definition_170 = Set[ 4, 6, 12 ]
    TOKENS_FOLLOWING_statement_IN_function_definition_172 = Set[ 4, 6, 12 ]
    TOKENS_FOLLOWING_CLOSE_IN_function_definition_175 = Set[ 1 ]
    TOKENS_FOLLOWING_if_statement_IN_statement_192 = Set[ 1, 14 ]
    TOKENS_FOLLOWING_DIGIT_IN_statement_198 = Set[ 1, 14 ]
    TOKENS_FOLLOWING_NL_IN_statement_204 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_if_statement_218 = Set[ 6 ]
    TOKENS_FOLLOWING_expression_IN_if_statement_220 = Set[ 4, 14 ]
    TOKENS_FOLLOWING_CLOSE_IN_if_statement_226 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_if_statement_230 = Set[ 4, 6, 12 ]
    TOKENS_FOLLOWING_statement_IN_if_statement_232 = Set[ 4, 6, 12 ]
    TOKENS_FOLLOWING_CLOSE_IN_if_statement_235 = Set[ 1 ]
    TOKENS_FOLLOWING_COMPONENT_IN_component_250 = Set[ 11 ]
    TOKENS_FOLLOWING_IDENT_IN_component_252 = Set[ 4, 14 ]
    TOKENS_FOLLOWING_CLOSE_IN_component_258 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_component_262 = Set[ 4, 13, 15 ]
    TOKENS_FOLLOWING_class_body_IN_component_264 = Set[ 4, 13, 15 ]
    TOKENS_FOLLOWING_CLOSE_IN_component_267 = Set[ 1 ]
    TOKENS_FOLLOWING_SYSTEM_IN_system_282 = Set[ 11 ]
    TOKENS_FOLLOWING_IDENT_IN_system_284 = Set[ 4, 14 ]
    TOKENS_FOLLOWING_CLOSE_IN_system_290 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_system_294 = Set[ 4, 13, 15 ]
    TOKENS_FOLLOWING_class_body_IN_system_296 = Set[ 4, 13, 15 ]
    TOKENS_FOLLOWING_CLOSE_IN_system_299 = Set[ 1 ]
    TOKENS_FOLLOWING_ENUM_IN_enum_314 = Set[ 11 ]
    TOKENS_FOLLOWING_IDENT_IN_enum_316 = Set[ 4, 14 ]
    TOKENS_FOLLOWING_CLOSE_IN_enum_322 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_enum_326 = Set[ 4, 13, 15 ]
    TOKENS_FOLLOWING_class_body_IN_enum_328 = Set[ 4, 13, 15 ]
    TOKENS_FOLLOWING_CLOSE_IN_enum_331 = Set[ 1 ]
    TOKENS_FOLLOWING_DIGIT_IN_expression_352 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
