#!/usr/bin/env ruby
#
# lib/Entity.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: lib/Entity.g
# Generated at: 2013-12-10 10:58:19
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
    define_tokens( :EOF => -1, :T__29 => 29, :T__30 => 30, :T__31 => 31, 
                   :T__32 => 32, :T__33 => 33, :T__34 => 34, :T__35 => 35, 
                   :T__36 => 36, :T__37 => 37, :T__38 => 38, :T__39 => 39, 
                   :T__40 => 40, :T__41 => 41, :T__42 => 42, :T__43 => 43, 
                   :T__44 => 44, :T__45 => 45, :T__46 => 46, :T__47 => 47, 
                   :T__48 => 48, :BOOLEAN => 4, :CHAR => 5, :CLOSE => 6, 
                   :COMMENT => 7, :COMPONENT => 8, :ELSE => 9, :ENTITY => 10, 
                   :ENUM => 11, :FLOAT => 12, :IDENT => 13, :IF => 14, :INIT => 15, 
                   :INTEGER => 16, :MULTILINE_COMMENT => 17, :NL => 18, 
                   :OPEN => 19, :RETURN => 20, :STRING => 21, :SYSTEM => 22, 
                   :TYPE_BOOL => 23, :TYPE_FLOAT => 24, :TYPE_INT => 25, 
                   :TYPE_STRING => 26, :TYPE_VOID => 27, :WS => 28 )


    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "BOOLEAN", "CHAR", "CLOSE", "COMMENT", "COMPONENT", 
                    "ELSE", "ENTITY", "ENUM", "FLOAT", "IDENT", "IF", "INIT", 
                    "INTEGER", "MULTILINE_COMMENT", "NL", "OPEN", "RETURN", 
                    "STRING", "SYSTEM", "TYPE_BOOL", "TYPE_FLOAT", "TYPE_INT", 
                    "TYPE_STRING", "TYPE_VOID", "WS", "'!'", "'%'", "'&&'", 
                    "'('", "')'", "'*'", "'+'", "','", "'-'", "'.'", "'/'", 
                    "'/='", "'::'", "'<'", "'<='", "'='", "'=='", "'>'", 
                    "'>='", "'||'" )


  end


  class Parser < ANTLR3::Parser
    @grammar_home = Entity

    RULE_METHODS = [ :file, :definition, :entity, :class_body, :instance_variable_declaration, 
                     :component_reference, :constructor_definition, :function_definition, 
                     :variable_type, :statement, :if_statement, :return_statement, 
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

          if ( look_5_0 == IDENT || look_5_0 == INIT || look_5_0 == OPEN || look_5_0.between?( TYPE_BOOL, TYPE_VOID ) || look_5_0 == T__37 )
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
    # 24:1: class_body returns [value] : a= ( instance_variable_declaration | constructor_definition | function_definition | component_reference ) ( NL )? ;
    #
    def class_body
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      value = nil


      a = nil


      begin
      # at line 25:5: a= ( instance_variable_declaration | constructor_definition | function_definition | component_reference ) ( NL )?
      # at line 25:7: ( instance_variable_declaration | constructor_definition | function_definition | component_reference )
      alt_7 = 4
      case look_7 = @input.peek( 1 )
      when IDENT, TYPE_BOOL, TYPE_FLOAT, TYPE_INT, TYPE_STRING, TYPE_VOID then alt_7 = 1
      when INIT then alt_7 = 2
      when OPEN then alt_7 = 3
      when T__37 then alt_7 = 4
      else
        raise NoViableAlternative( "", 7, 0 )

      end
      case alt_7
      when 1
        # at line 25:9: instance_variable_declaration
        @state.following.push( TOKENS_FOLLOWING_instance_variable_declaration_IN_class_body_159 )
        a = instance_variable_declaration
        @state.following.pop

      when 2
        # at line 26:5: constructor_definition
        @state.following.push( TOKENS_FOLLOWING_constructor_definition_IN_class_body_165 )
        a = constructor_definition
        @state.following.pop

      when 3
        # at line 27:5: function_definition
        @state.following.push( TOKENS_FOLLOWING_function_definition_IN_class_body_171 )
        a = function_definition
        @state.following.pop

      when 4
        # at line 28:5: component_reference
        @state.following.push( TOKENS_FOLLOWING_component_reference_IN_class_body_177 )
        component_reference
        @state.following.pop

      end
      # at line 29:5: ( NL )?
      alt_8 = 2
      look_8_0 = @input.peek( 1 )

      if ( look_8_0 == NL )
        alt_8 = 1
      end
      case alt_8
      when 1
        # at line 29:5: NL
        match( NL, TOKENS_FOLLOWING_NL_IN_class_body_183 )

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
    # parser rule instance_variable_declaration
    #
    # (in lib/Entity.g)
    # 32:1: instance_variable_declaration returns [value] : type= variable_type a= IDENT ( ',' a= IDENT )* ;
    #
    def instance_variable_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      value = nil


      a = nil
      type = nil


      begin
      # at line 33:5: type= variable_type a= IDENT ( ',' a= IDENT )*
      @state.following.push( TOKENS_FOLLOWING_variable_type_IN_instance_variable_declaration_204 )
      type = variable_type
      @state.following.pop
      a = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_instance_variable_declaration_208 )

      # --> action
       value = InstanceVariableDeclarationEval.new(type, a.text) 
      # <-- action

      # at line 34:3: ( ',' a= IDENT )*
      while true # decision 9
        alt_9 = 2
        look_9_0 = @input.peek( 1 )

        if ( look_9_0 == T__36 )
          alt_9 = 1

        end
        case alt_9
        when 1
          # at line 34:4: ',' a= IDENT
          match( T__36, TOKENS_FOLLOWING_T__36_IN_instance_variable_declaration_215 )
          a = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_instance_variable_declaration_219 )

          # --> action
           value.add_chained_variable(a.text) 
          # <-- action


        else
          break # out of loop for decision 9
        end
      end # loop for decision 9


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 5 )


      end

      return value
    end



    #
    # parser rule component_reference
    #
    # (in lib/Entity.g)
    # 37:1: component_reference : '-' IDENT NL ;
    #
    def component_reference
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      begin
      # at line 38:5: '-' IDENT NL
      match( T__37, TOKENS_FOLLOWING_T__37_IN_component_reference_237 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_component_reference_239 )
      match( NL, TOKENS_FOLLOWING_NL_IN_component_reference_241 )

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
    # parser rule constructor_definition
    #
    # (in lib/Entity.g)
    # 41:1: constructor_definition returns [value] : INIT ( '(' (type= variable_type name= IDENT ( ',' type= variable_type name= IDENT )* )? ')' )? ( CLOSE | NL (a= statement )* CLOSE ) ;
    #
    def constructor_definition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      value = nil


      name = nil
      type = nil
      a = nil


      begin
      # at line 42:5: INIT ( '(' (type= variable_type name= IDENT ( ',' type= variable_type name= IDENT )* )? ')' )? ( CLOSE | NL (a= statement )* CLOSE )
      match( INIT, TOKENS_FOLLOWING_INIT_IN_constructor_definition_257 )

      # --> action
       value = ConstructorDefinitionEval.new 
      # <-- action

      # at line 43:3: ( '(' (type= variable_type name= IDENT ( ',' type= variable_type name= IDENT )* )? ')' )?
      alt_12 = 2
      look_12_0 = @input.peek( 1 )

      if ( look_12_0 == T__32 )
        alt_12 = 1
      end
      case alt_12
      when 1
        # at line 43:5: '(' (type= variable_type name= IDENT ( ',' type= variable_type name= IDENT )* )? ')'
        match( T__32, TOKENS_FOLLOWING_T__32_IN_constructor_definition_265 )
        # at line 43:9: (type= variable_type name= IDENT ( ',' type= variable_type name= IDENT )* )?
        alt_11 = 2
        look_11_0 = @input.peek( 1 )

        if ( look_11_0 == IDENT || look_11_0.between?( TYPE_BOOL, TYPE_VOID ) )
          alt_11 = 1
        end
        case alt_11
        when 1
          # at line 44:5: type= variable_type name= IDENT ( ',' type= variable_type name= IDENT )*
          @state.following.push( TOKENS_FOLLOWING_variable_type_IN_constructor_definition_275 )
          type = variable_type
          @state.following.pop
          name = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_constructor_definition_279 )

          # --> action
           value.add_argument(type, name.text) 
          # <-- action

          # at line 45:5: ( ',' type= variable_type name= IDENT )*
          while true # decision 10
            alt_10 = 2
            look_10_0 = @input.peek( 1 )

            if ( look_10_0 == T__36 )
              alt_10 = 1

            end
            case alt_10
            when 1
              # at line 45:6: ',' type= variable_type name= IDENT
              match( T__36, TOKENS_FOLLOWING_T__36_IN_constructor_definition_288 )
              @state.following.push( TOKENS_FOLLOWING_variable_type_IN_constructor_definition_292 )
              type = variable_type
              @state.following.pop
              name = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_constructor_definition_296 )

              # --> action
               value.add_argument(type, name.text) 
              # <-- action


            else
              break # out of loop for decision 10
            end
          end # loop for decision 10


        end
        match( T__33, TOKENS_FOLLOWING_T__33_IN_constructor_definition_308 )

      end
      # at line 47:3: ( CLOSE | NL (a= statement )* CLOSE )
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
        # at line 47:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_constructor_definition_317 )

      when 2
        # at line 47:13: NL (a= statement )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_constructor_definition_321 )
        # at line 47:16: (a= statement )*
        while true # decision 13
          alt_13 = 2
          look_13_0 = @input.peek( 1 )

          if ( look_13_0.between?( IDENT, IF ) || look_13_0 == RETURN )
            alt_13 = 1

          end
          case alt_13
          when 1
            # at line 47:17: a= statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_constructor_definition_326 )
            a = statement
            @state.following.pop

            # --> action
             value.add_statement(a) 
            # <-- action


          else
            break # out of loop for decision 13
          end
        end # loop for decision 13

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_constructor_definition_332 )

      end

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
    # parser rule function_definition
    #
    # (in lib/Entity.g)
    # 50:1: function_definition returns [value] : OPEN type= variable_type name= IDENT ( '(' (type= variable_type name= IDENT ( ',' type= variable_type name= IDENT )* )? ')' )? ( CLOSE | NL (a= statement )* CLOSE ) ;
    #
    def function_definition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      value = nil


      name = nil
      type = nil
      a = nil


      begin
      # at line 51:5: OPEN type= variable_type name= IDENT ( '(' (type= variable_type name= IDENT ( ',' type= variable_type name= IDENT )* )? ')' )? ( CLOSE | NL (a= statement )* CLOSE )
      match( OPEN, TOKENS_FOLLOWING_OPEN_IN_function_definition_350 )
      @state.following.push( TOKENS_FOLLOWING_variable_type_IN_function_definition_354 )
      type = variable_type
      @state.following.pop
      name = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_function_definition_358 )

      # --> action
       value = FunctionDefinitionEval.new(type, name.text) 
      # <-- action

      # at line 52:3: ( '(' (type= variable_type name= IDENT ( ',' type= variable_type name= IDENT )* )? ')' )?
      alt_17 = 2
      look_17_0 = @input.peek( 1 )

      if ( look_17_0 == T__32 )
        alt_17 = 1
      end
      case alt_17
      when 1
        # at line 52:5: '(' (type= variable_type name= IDENT ( ',' type= variable_type name= IDENT )* )? ')'
        match( T__32, TOKENS_FOLLOWING_T__32_IN_function_definition_366 )
        # at line 52:9: (type= variable_type name= IDENT ( ',' type= variable_type name= IDENT )* )?
        alt_16 = 2
        look_16_0 = @input.peek( 1 )

        if ( look_16_0 == IDENT || look_16_0.between?( TYPE_BOOL, TYPE_VOID ) )
          alt_16 = 1
        end
        case alt_16
        when 1
          # at line 53:5: type= variable_type name= IDENT ( ',' type= variable_type name= IDENT )*
          @state.following.push( TOKENS_FOLLOWING_variable_type_IN_function_definition_376 )
          type = variable_type
          @state.following.pop
          name = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_function_definition_380 )

          # --> action
           value.add_argument(type, name.text) 
          # <-- action

          # at line 54:5: ( ',' type= variable_type name= IDENT )*
          while true # decision 15
            alt_15 = 2
            look_15_0 = @input.peek( 1 )

            if ( look_15_0 == T__36 )
              alt_15 = 1

            end
            case alt_15
            when 1
              # at line 54:6: ',' type= variable_type name= IDENT
              match( T__36, TOKENS_FOLLOWING_T__36_IN_function_definition_389 )
              @state.following.push( TOKENS_FOLLOWING_variable_type_IN_function_definition_393 )
              type = variable_type
              @state.following.pop
              name = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_function_definition_397 )

              # --> action
               value.add_argument(type, name.text) 
              # <-- action


            else
              break # out of loop for decision 15
            end
          end # loop for decision 15


        end
        match( T__33, TOKENS_FOLLOWING_T__33_IN_function_definition_409 )

      end
      # at line 56:3: ( CLOSE | NL (a= statement )* CLOSE )
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
        # at line 56:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_function_definition_418 )

      when 2
        # at line 56:13: NL (a= statement )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_function_definition_422 )
        # at line 56:16: (a= statement )*
        while true # decision 18
          alt_18 = 2
          look_18_0 = @input.peek( 1 )

          if ( look_18_0.between?( IDENT, IF ) || look_18_0 == RETURN )
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 56:17: a= statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_function_definition_427 )
            a = statement
            @state.following.pop

            # --> action
             value.add_statement(a) 
            # <-- action


          else
            break # out of loop for decision 18
          end
        end # loop for decision 18

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_function_definition_434 )

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
    # parser rule variable_type
    #
    # (in lib/Entity.g)
    # 59:1: variable_type returns [value] : a= ( TYPE_FLOAT | TYPE_INT | TYPE_BOOL | TYPE_STRING | TYPE_VOID | IDENT ) ;
    #
    def variable_type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      value = nil


      a = nil


      begin
      # at line 60:5: a= ( TYPE_FLOAT | TYPE_INT | TYPE_BOOL | TYPE_STRING | TYPE_VOID | IDENT )
      a = @input.look

      if @input.peek(1) == IDENT || @input.peek( 1 ).between?( TYPE_BOOL, TYPE_VOID )
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
        # trace_out( __method__, 9 )


      end

      return value
    end



    #
    # parser rule statement
    #
    # (in lib/Entity.g)
    # 69:1: statement returns [value] : a= ( if_statement | return_statement | variable_assignment_statement | function_call_statement ) ( NL )? ;
    #
    def statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      value = nil


      a = nil


      begin
      # at line 70:5: a= ( if_statement | return_statement | variable_assignment_statement | function_call_statement ) ( NL )?
      # at line 70:7: ( if_statement | return_statement | variable_assignment_statement | function_call_statement )
      alt_20 = 4
      alt_20 = @dfa20.predict( @input )
      case alt_20
      when 1
        # at line 70:9: if_statement
        @state.following.push( TOKENS_FOLLOWING_if_statement_IN_statement_512 )
        a = if_statement
        @state.following.pop

      when 2
        # at line 71:5: return_statement
        @state.following.push( TOKENS_FOLLOWING_return_statement_IN_statement_518 )
        a = return_statement
        @state.following.pop

      when 3
        # at line 72:5: variable_assignment_statement
        @state.following.push( TOKENS_FOLLOWING_variable_assignment_statement_IN_statement_524 )
        a = variable_assignment_statement
        @state.following.pop

      when 4
        # at line 73:5: function_call_statement
        @state.following.push( TOKENS_FOLLOWING_function_call_statement_IN_statement_530 )
        a = function_call_statement
        @state.following.pop

      end
      # at line 74:5: ( NL )?
      alt_21 = 2
      look_21_0 = @input.peek( 1 )

      if ( look_21_0 == NL )
        alt_21 = 1
      end
      case alt_21
      when 1
        # at line 74:5: NL
        match( NL, TOKENS_FOLLOWING_NL_IN_statement_536 )

      end

      # --> action
       value = a 
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
    # parser rule if_statement
    #
    # (in lib/Entity.g)
    # 78:1: if_statement returns [value] : IF a= expression ( CLOSE | NL (b= statement )* CLOSE ) ;
    #
    def if_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      value = nil


      a = nil
      b = nil


      begin
      # at line 79:5: IF a= expression ( CLOSE | NL (b= statement )* CLOSE )
      match( IF, TOKENS_FOLLOWING_IF_IN_if_statement_557 )
      @state.following.push( TOKENS_FOLLOWING_expression_IN_if_statement_561 )
      a = expression
      @state.following.pop

      # --> action
       value = IfStatementEval.new(a) 
      # <-- action

      # at line 80:3: ( CLOSE | NL (b= statement )* CLOSE )
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
        # at line 80:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_if_statement_569 )

      when 2
        # at line 80:13: NL (b= statement )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_if_statement_573 )
        # at line 80:16: (b= statement )*
        while true # decision 22
          alt_22 = 2
          look_22_0 = @input.peek( 1 )

          if ( look_22_0.between?( IDENT, IF ) || look_22_0 == RETURN )
            alt_22 = 1

          end
          case alt_22
          when 1
            # at line 80:17: b= statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_if_statement_578 )
            b = statement
            @state.following.pop

            # --> action
             value.add_statement(b) 
            # <-- action


          else
            break # out of loop for decision 22
          end
        end # loop for decision 22

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_if_statement_585 )

      end

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
    # parser rule return_statement
    #
    # (in lib/Entity.g)
    # 83:1: return_statement returns [value] : RETURN a= expression ;
    #
    def return_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      value = nil


      a = nil


      begin
      # at line 84:5: RETURN a= expression
      match( RETURN, TOKENS_FOLLOWING_RETURN_IN_return_statement_603 )
      @state.following.push( TOKENS_FOLLOWING_expression_IN_return_statement_607 )
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
        # trace_out( __method__, 12 )


      end

      return value
    end



    #
    # parser rule variable_assignment_statement
    #
    # (in lib/Entity.g)
    # 87:1: variable_assignment_statement returns [value] : a= variable_path '=' b= expression ;
    #
    def variable_assignment_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      value = nil


      a = nil
      b = nil


      begin
      # at line 88:5: a= variable_path '=' b= expression
      @state.following.push( TOKENS_FOLLOWING_variable_path_IN_variable_assignment_statement_627 )
      a = variable_path
      @state.following.pop
      match( T__44, TOKENS_FOLLOWING_T__44_IN_variable_assignment_statement_629 )
      @state.following.push( TOKENS_FOLLOWING_expression_IN_variable_assignment_statement_633 )
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
        # trace_out( __method__, 13 )


      end

      return value
    end



    #
    # parser rule function_call_statement
    #
    # (in lib/Entity.g)
    # 91:1: function_call_statement returns [value] : a= variable_path '(' (b= expression ( ',' b= expression )* )? ')' ;
    #
    def function_call_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      value = nil


      a = nil
      b = nil


      begin
      # at line 92:5: a= variable_path '(' (b= expression ( ',' b= expression )* )? ')'
      @state.following.push( TOKENS_FOLLOWING_variable_path_IN_function_call_statement_653 )
      a = variable_path
      @state.following.pop
      match( T__32, TOKENS_FOLLOWING_T__32_IN_function_call_statement_655 )

      # --> action
       value = FunctionCallStatementEval.new(a) 
      # <-- action

      # at line 93:3: (b= expression ( ',' b= expression )* )?
      alt_25 = 2
      look_25_0 = @input.peek( 1 )

      if ( look_25_0.between?( BOOLEAN, CHAR ) || look_25_0.between?( FLOAT, IDENT ) || look_25_0 == INTEGER || look_25_0 == STRING || look_25_0 == T__29 || look_25_0 == T__32 || look_25_0 == T__35 || look_25_0 == T__37 )
        alt_25 = 1
      end
      case alt_25
      when 1
        # at line 93:5: b= expression ( ',' b= expression )*
        @state.following.push( TOKENS_FOLLOWING_expression_IN_function_call_statement_665 )
        b = expression
        @state.following.pop

        # --> action
         value.add_argument(b) 
        # <-- action

        # at line 94:5: ( ',' b= expression )*
        while true # decision 24
          alt_24 = 2
          look_24_0 = @input.peek( 1 )

          if ( look_24_0 == T__36 )
            alt_24 = 1

          end
          case alt_24
          when 1
            # at line 94:8: ',' b= expression
            match( T__36, TOKENS_FOLLOWING_T__36_IN_function_call_statement_676 )
            @state.following.push( TOKENS_FOLLOWING_expression_IN_function_call_statement_680 )
            b = expression
            @state.following.pop

            # --> action
             value.add_argument(b) 
            # <-- action


          else
            break # out of loop for decision 24
          end
        end # loop for decision 24


      end
      match( T__33, TOKENS_FOLLOWING_T__33_IN_function_call_statement_696 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 14 )


      end

      return value
    end



    #
    # parser rule variable_path
    #
    # (in lib/Entity.g)
    # 99:1: variable_path returns [value] : base= IDENT (path1= ( '.' | '::' ) path2= IDENT )* ;
    #
    def variable_path
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      value = nil


      base = nil
      path1 = nil
      path2 = nil


      begin
      # at line 100:5: base= IDENT (path1= ( '.' | '::' ) path2= IDENT )*
      base = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_variable_path_714 )

      # --> action
       value = VariablePathEval.new(base.text) 
      # <-- action

      # at line 101:3: (path1= ( '.' | '::' ) path2= IDENT )*
      while true # decision 26
        alt_26 = 2
        look_26_0 = @input.peek( 1 )

        if ( look_26_0 == T__38 || look_26_0 == T__41 )
          alt_26 = 1

        end
        case alt_26
        when 1
          # at line 101:4: path1= ( '.' | '::' ) path2= IDENT
          path1 = @input.look

          if @input.peek(1) == T__38 || @input.peek(1) == T__41
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          path2 = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_variable_path_733 )

          # --> action
           value.add_path(path1.text + path2.text) 
          # <-- action


        else
          break # out of loop for decision 26
        end
      end # loop for decision 26


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 15 )


      end

      return value
    end



    #
    # parser rule component
    #
    # (in lib/Entity.g)
    # 104:1: component : COMPONENT IDENT ( CLOSE | NL ( class_body )* CLOSE ) ;
    #
    def component
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      begin
      # at line 105:5: COMPONENT IDENT ( CLOSE | NL ( class_body )* CLOSE )
      match( COMPONENT, TOKENS_FOLLOWING_COMPONENT_IN_component_751 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_component_753 )
      # at line 106:3: ( CLOSE | NL ( class_body )* CLOSE )
      alt_28 = 2
      look_28_0 = @input.peek( 1 )

      if ( look_28_0 == CLOSE )
        alt_28 = 1
      elsif ( look_28_0 == NL )
        alt_28 = 2
      else
        raise NoViableAlternative( "", 28, 0 )

      end
      case alt_28
      when 1
        # at line 106:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_component_759 )

      when 2
        # at line 106:13: NL ( class_body )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_component_763 )
        # at line 106:16: ( class_body )*
        while true # decision 27
          alt_27 = 2
          look_27_0 = @input.peek( 1 )

          if ( look_27_0 == IDENT || look_27_0 == INIT || look_27_0 == OPEN || look_27_0.between?( TYPE_BOOL, TYPE_VOID ) || look_27_0 == T__37 )
            alt_27 = 1

          end
          case alt_27
          when 1
            # at line 106:16: class_body
            @state.following.push( TOKENS_FOLLOWING_class_body_IN_component_765 )
            class_body
            @state.following.pop

          else
            break # out of loop for decision 27
          end
        end # loop for decision 27

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_component_768 )

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
    # parser rule system
    #
    # (in lib/Entity.g)
    # 109:1: system : SYSTEM IDENT ( CLOSE | NL ( class_body )* CLOSE ) ;
    #
    def system
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      begin
      # at line 110:5: SYSTEM IDENT ( CLOSE | NL ( class_body )* CLOSE )
      match( SYSTEM, TOKENS_FOLLOWING_SYSTEM_IN_system_783 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_system_785 )
      # at line 111:3: ( CLOSE | NL ( class_body )* CLOSE )
      alt_30 = 2
      look_30_0 = @input.peek( 1 )

      if ( look_30_0 == CLOSE )
        alt_30 = 1
      elsif ( look_30_0 == NL )
        alt_30 = 2
      else
        raise NoViableAlternative( "", 30, 0 )

      end
      case alt_30
      when 1
        # at line 111:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_system_791 )

      when 2
        # at line 111:13: NL ( class_body )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_system_795 )
        # at line 111:16: ( class_body )*
        while true # decision 29
          alt_29 = 2
          look_29_0 = @input.peek( 1 )

          if ( look_29_0 == IDENT || look_29_0 == INIT || look_29_0 == OPEN || look_29_0.between?( TYPE_BOOL, TYPE_VOID ) || look_29_0 == T__37 )
            alt_29 = 1

          end
          case alt_29
          when 1
            # at line 111:16: class_body
            @state.following.push( TOKENS_FOLLOWING_class_body_IN_system_797 )
            class_body
            @state.following.pop

          else
            break # out of loop for decision 29
          end
        end # loop for decision 29

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_system_800 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 17 )


      end

      return 
    end



    #
    # parser rule enum
    #
    # (in lib/Entity.g)
    # 114:1: enum : ENUM IDENT ( CLOSE | NL ( class_body )* CLOSE ) ;
    #
    def enum
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      begin
      # at line 115:5: ENUM IDENT ( CLOSE | NL ( class_body )* CLOSE )
      match( ENUM, TOKENS_FOLLOWING_ENUM_IN_enum_815 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_enum_817 )
      # at line 116:3: ( CLOSE | NL ( class_body )* CLOSE )
      alt_32 = 2
      look_32_0 = @input.peek( 1 )

      if ( look_32_0 == CLOSE )
        alt_32 = 1
      elsif ( look_32_0 == NL )
        alt_32 = 2
      else
        raise NoViableAlternative( "", 32, 0 )

      end
      case alt_32
      when 1
        # at line 116:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_enum_823 )

      when 2
        # at line 116:13: NL ( class_body )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_enum_827 )
        # at line 116:16: ( class_body )*
        while true # decision 31
          alt_31 = 2
          look_31_0 = @input.peek( 1 )

          if ( look_31_0 == IDENT || look_31_0 == INIT || look_31_0 == OPEN || look_31_0.between?( TYPE_BOOL, TYPE_VOID ) || look_31_0 == T__37 )
            alt_31 = 1

          end
          case alt_31
          when 1
            # at line 116:16: class_body
            @state.following.push( TOKENS_FOLLOWING_class_body_IN_enum_829 )
            class_body
            @state.following.pop

          else
            break # out of loop for decision 31
          end
        end # loop for decision 31

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_enum_832 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 18 )


      end

      return 
    end



    #
    # parser rule term
    #
    # (in lib/Entity.g)
    # 119:1: term returns [value] : (b= variable_path |b= function_call_statement | '(' b= expression ')' |a= INTEGER |a= FLOAT |a= BOOLEAN |a= STRING |a= CHAR );
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      value = nil


      a = nil
      b = nil


      begin
      # at line 120:3: (b= variable_path |b= function_call_statement | '(' b= expression ')' |a= INTEGER |a= FLOAT |a= BOOLEAN |a= STRING |a= CHAR )
      alt_33 = 8
      alt_33 = @dfa33.predict( @input )
      case alt_33
      when 1
        # at line 120:5: b= variable_path
        @state.following.push( TOKENS_FOLLOWING_variable_path_IN_term_852 )
        b = variable_path
        @state.following.pop

        # --> action
         value = b 
        # <-- action


      when 2
        # at line 121:5: b= function_call_statement
        @state.following.push( TOKENS_FOLLOWING_function_call_statement_IN_term_862 )
        b = function_call_statement
        @state.following.pop

        # --> action
         value = b 
        # <-- action


      when 3
        # at line 122:5: '(' b= expression ')'
        match( T__32, TOKENS_FOLLOWING_T__32_IN_term_870 )
        @state.following.push( TOKENS_FOLLOWING_expression_IN_term_874 )
        b = expression
        @state.following.pop
        match( T__33, TOKENS_FOLLOWING_T__33_IN_term_876 )

        # --> action
         value = ParenExpressionEval.new(b) 
        # <-- action


      when 4
        # at line 123:5: a= INTEGER
        a = match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_term_886 )

        # --> action
         value = LiteralEval.new(:int, a.text) 
        # <-- action


      when 5
        # at line 124:5: a= FLOAT
        a = match( FLOAT, TOKENS_FOLLOWING_FLOAT_IN_term_896 )

        # --> action
         value = LiteralEval.new(:float, a.text) 
        # <-- action


      when 6
        # at line 125:5: a= BOOLEAN
        a = match( BOOLEAN, TOKENS_FOLLOWING_BOOLEAN_IN_term_908 )

        # --> action
         value = LiteralEval.new(:bool, a.text) 
        # <-- action


      when 7
        # at line 126:5: a= STRING
        a = match( STRING, TOKENS_FOLLOWING_STRING_IN_term_918 )

        # --> action
         value = LiteralEval.new(:string, a.text) 
        # <-- action


      when 8
        # at line 127:5: a= CHAR
        a = match( CHAR, TOKENS_FOLLOWING_CHAR_IN_term_929 )

        # --> action
         value = LiteralEval.new(:char, a.text) 
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
    # parser rule negation
    #
    # (in lib/Entity.g)
    # 130:1: negation returns [value] : ( '!' a= negation |a= term );
    #
    def negation
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      value = nil


      a = nil


      begin
      # at line 131:3: ( '!' a= negation |a= term )
      alt_34 = 2
      look_34_0 = @input.peek( 1 )

      if ( look_34_0 == T__29 )
        alt_34 = 1
      elsif ( look_34_0.between?( BOOLEAN, CHAR ) || look_34_0.between?( FLOAT, IDENT ) || look_34_0 == INTEGER || look_34_0 == STRING || look_34_0 == T__32 )
        alt_34 = 2
      else
        raise NoViableAlternative( "", 34, 0 )

      end
      case alt_34
      when 1
        # at line 131:5: '!' a= negation
        match( T__29, TOKENS_FOLLOWING_T__29_IN_negation_950 )
        @state.following.push( TOKENS_FOLLOWING_negation_IN_negation_954 )
        a = negation
        @state.following.pop

        # --> action
         value = SingleOperandExpressionEval.new('!', a) 
        # <-- action


      when 2
        # at line 132:5: a= term
        @state.following.push( TOKENS_FOLLOWING_term_IN_negation_964 )
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
        # trace_out( __method__, 20 )


      end

      return value
    end



    #
    # parser rule unary
    #
    # (in lib/Entity.g)
    # 135:1: unary returns [value] : (type= ( '+' | '-' ) a= unary |a= negation );
    #
    def unary
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      value = nil


      type = nil
      a = nil


      begin
      # at line 136:3: (type= ( '+' | '-' ) a= unary |a= negation )
      alt_35 = 2
      look_35_0 = @input.peek( 1 )

      if ( look_35_0 == T__35 || look_35_0 == T__37 )
        alt_35 = 1
      elsif ( look_35_0.between?( BOOLEAN, CHAR ) || look_35_0.between?( FLOAT, IDENT ) || look_35_0 == INTEGER || look_35_0 == STRING || look_35_0 == T__29 || look_35_0 == T__32 )
        alt_35 = 2
      else
        raise NoViableAlternative( "", 35, 0 )

      end
      case alt_35
      when 1
        # at line 136:5: type= ( '+' | '-' ) a= unary
        type = @input.look

        if @input.peek(1) == T__35 || @input.peek(1) == T__37
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_unary_IN_unary_994 )
        a = unary
        @state.following.pop

        # --> action
         value = SingleOperandExpressionEval.new(type.text, a) 
        # <-- action


      when 2
        # at line 137:5: a= negation
        @state.following.push( TOKENS_FOLLOWING_negation_IN_unary_1004 )
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
        # trace_out( __method__, 21 )


      end

      return value
    end



    #
    # parser rule mult
    #
    # (in lib/Entity.g)
    # 140:1: mult returns [value] : a= unary (type= ( '*' | '/' | '%' ) b= mult )? ;
    #
    def mult
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      value = nil


      type = nil
      a = nil
      b = nil


      begin
      # at line 141:5: a= unary (type= ( '*' | '/' | '%' ) b= mult )?
      @state.following.push( TOKENS_FOLLOWING_unary_IN_mult_1024 )
      a = unary
      @state.following.pop

      # --> action
       value = a 
      # <-- action

      # at line 142:3: (type= ( '*' | '/' | '%' ) b= mult )?
      alt_36 = 2
      look_36_0 = @input.peek( 1 )

      if ( look_36_0 == T__30 || look_36_0 == T__34 || look_36_0 == T__39 )
        alt_36 = 1
      end
      case alt_36
      when 1
        # at line 142:5: type= ( '*' | '/' | '%' ) b= mult
        type = @input.look

        if @input.peek(1) == T__30 || @input.peek(1) == T__34 || @input.peek(1) == T__39
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_mult_IN_mult_1048 )
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
        # trace_out( __method__, 22 )


      end

      return value
    end



    #
    # parser rule add
    #
    # (in lib/Entity.g)
    # 145:1: add returns [value] : a= mult (type= ( '+' | '-' ) b= add )? ;
    #
    def add
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      value = nil


      type = nil
      a = nil
      b = nil


      begin
      # at line 146:5: a= mult (type= ( '+' | '-' ) b= add )?
      @state.following.push( TOKENS_FOLLOWING_mult_IN_add_1072 )
      a = mult
      @state.following.pop

      # --> action
       value = a 
      # <-- action

      # at line 147:3: (type= ( '+' | '-' ) b= add )?
      alt_37 = 2
      look_37_0 = @input.peek( 1 )

      if ( look_37_0 == T__35 || look_37_0 == T__37 )
        alt_37 = 1
      end
      case alt_37
      when 1
        # at line 147:6: type= ( '+' | '-' ) b= add
        type = @input.look

        if @input.peek(1) == T__35 || @input.peek(1) == T__37
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_add_IN_add_1093 )
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
        # trace_out( __method__, 23 )


      end

      return value
    end



    #
    # parser rule relation
    #
    # (in lib/Entity.g)
    # 152:1: relation returns [value] : a= add (type= ( '==' | '/=' | '<' | '<=' | '>=' | '>' ) b= relation )? ;
    #
    def relation
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      value = nil


      type = nil
      a = nil
      b = nil


      begin
      # at line 153:5: a= add (type= ( '==' | '/=' | '<' | '<=' | '>=' | '>' ) b= relation )?
      @state.following.push( TOKENS_FOLLOWING_add_IN_relation_1123 )
      a = add
      @state.following.pop

      # --> action
       value = a 
      # <-- action

      # at line 154:3: (type= ( '==' | '/=' | '<' | '<=' | '>=' | '>' ) b= relation )?
      alt_38 = 2
      look_38_0 = @input.peek( 1 )

      if ( look_38_0 == T__40 || look_38_0.between?( T__42, T__43 ) || look_38_0.between?( T__45, T__47 ) )
        alt_38 = 1
      end
      case alt_38
      when 1
        # at line 154:6: type= ( '==' | '/=' | '<' | '<=' | '>=' | '>' ) b= relation
        type = @input.look

        if @input.peek(1) == T__40 || @input.peek( 1 ).between?( T__42, T__43 ) || @input.peek( 1 ).between?( T__45, T__47 )
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_relation_IN_relation_1160 )
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
        # trace_out( __method__, 24 )


      end

      return value
    end



    #
    # parser rule expression
    #
    # (in lib/Entity.g)
    # 159:1: expression returns [value] : a= relation (type= ( '&&' | '||' ) b= expression )? ;
    #
    def expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )


      value = nil


      type = nil
      a = nil
      b = nil


      begin
      # at line 160:5: a= relation (type= ( '&&' | '||' ) b= expression )?
      @state.following.push( TOKENS_FOLLOWING_relation_IN_expression_1190 )
      a = relation
      @state.following.pop

      # --> action
       value = a 
      # <-- action

      # at line 161:3: (type= ( '&&' | '||' ) b= expression )?
      alt_39 = 2
      look_39_0 = @input.peek( 1 )

      if ( look_39_0 == T__31 || look_39_0 == T__48 )
        alt_39 = 1
      end
      case alt_39
      when 1
        # at line 161:6: type= ( '&&' | '||' ) b= expression
        type = @input.look

        if @input.peek(1) == T__31 || @input.peek(1) == T__48
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1211 )
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
        # trace_out( __method__, 25 )


      end

      return value
    end



    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA20 < ANTLR3::DFA
      EOT = unpack( 8, -1 )
      EOF = unpack( 8, -1 )
      MIN = unpack( 1, 13, 2, -1, 1, 32, 1, 13, 2, -1, 1, 32 )
      MAX = unpack( 1, 20, 2, -1, 1, 44, 1, 13, 2, -1, 1, 44 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, 2, 2, -1, 1, 3, 1, 4, 1, -1 )
      SPECIAL = unpack( 8, -1 )
      TRANSITION = [
        unpack( 1, 3, 1, 1, 5, -1, 1, 2 ),
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

      @decision = 20


      def description
        <<-'__dfa_description__'.strip!
          70:7: ( if_statement | return_statement | variable_assignment_statement | function_call_statement )
        __dfa_description__
      end

    end
    class DFA33 < ANTLR3::DFA
      EOT = unpack( 12, -1 )
      EOF = unpack( 12, -1 )
      MIN = unpack( 1, 4, 1, 6, 6, -1, 1, 13, 2, -1, 1, 6 )
      MAX = unpack( 1, 32, 1, 48, 6, -1, 1, 13, 2, -1, 1, 48 )
      ACCEPT = unpack( 2, -1, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 1, 8, 1, -1, 
                       1, 1, 1, 2, 1, -1 )
      SPECIAL = unpack( 12, -1 )
      TRANSITION = [
        unpack( 1, 5, 1, 7, 6, -1, 1, 4, 1, 1, 2, -1, 1, 3, 4, -1, 1, 6, 
                10, -1, 1, 2 ),
        unpack( 1, 9, 6, -1, 2, 9, 3, -1, 1, 9, 1, -1, 1, 9, 9, -1, 2, 
                 9, 1, 10, 5, 9, 1, 8, 2, 9, 1, 8, 2, 9, 1, -1, 4, 9 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 11 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 9, 6, -1, 2, 9, 3, -1, 1, 9, 1, -1, 1, 9, 9, -1, 2, 
                 9, 1, 10, 5, 9, 1, 8, 2, 9, 1, 8, 2, 9, 1, -1, 4, 9 )
      ].freeze

      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end

      @decision = 33


      def description
        <<-'__dfa_description__'.strip!
          119:1: term returns [value] : (b= variable_path |b= function_call_statement | '(' b= expression ')' |a= INTEGER |a= FLOAT |a= BOOLEAN |a= STRING |a= CHAR );
        __dfa_description__
      end

    end


    private

    def initialize_dfas
      super rescue nil
      @dfa20 = DFA20.new( self, 20 )


      @dfa33 = DFA33.new( self, 33 )


    end

    TOKENS_FOLLOWING_NL_IN_file_27 = Set[ 1, 8, 10, 11, 19, 22 ]
    TOKENS_FOLLOWING_definition_IN_file_37 = Set[ 1, 8, 10, 11, 19, 22 ]
    TOKENS_FOLLOWING_entity_IN_definition_61 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_component_IN_definition_67 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_system_IN_definition_73 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_enum_IN_definition_79 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_function_definition_IN_definition_85 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_NL_IN_definition_91 = Set[ 1 ]
    TOKENS_FOLLOWING_ENTITY_IN_entity_110 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_entity_114 = Set[ 6, 18 ]
    TOKENS_FOLLOWING_CLOSE_IN_entity_122 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_entity_126 = Set[ 6, 13, 15, 19, 23, 24, 25, 26, 27, 37 ]
    TOKENS_FOLLOWING_class_body_IN_entity_131 = Set[ 6, 13, 15, 19, 23, 24, 25, 26, 27, 37 ]
    TOKENS_FOLLOWING_CLOSE_IN_entity_137 = Set[ 1 ]
    TOKENS_FOLLOWING_instance_variable_declaration_IN_class_body_159 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_constructor_definition_IN_class_body_165 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_function_definition_IN_class_body_171 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_component_reference_IN_class_body_177 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_NL_IN_class_body_183 = Set[ 1 ]
    TOKENS_FOLLOWING_variable_type_IN_instance_variable_declaration_204 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_instance_variable_declaration_208 = Set[ 1, 36 ]
    TOKENS_FOLLOWING_T__36_IN_instance_variable_declaration_215 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_instance_variable_declaration_219 = Set[ 1, 36 ]
    TOKENS_FOLLOWING_T__37_IN_component_reference_237 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_component_reference_239 = Set[ 18 ]
    TOKENS_FOLLOWING_NL_IN_component_reference_241 = Set[ 1 ]
    TOKENS_FOLLOWING_INIT_IN_constructor_definition_257 = Set[ 6, 18, 32 ]
    TOKENS_FOLLOWING_T__32_IN_constructor_definition_265 = Set[ 13, 23, 24, 25, 26, 27, 33 ]
    TOKENS_FOLLOWING_variable_type_IN_constructor_definition_275 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_constructor_definition_279 = Set[ 33, 36 ]
    TOKENS_FOLLOWING_T__36_IN_constructor_definition_288 = Set[ 13, 23, 24, 25, 26, 27 ]
    TOKENS_FOLLOWING_variable_type_IN_constructor_definition_292 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_constructor_definition_296 = Set[ 33, 36 ]
    TOKENS_FOLLOWING_T__33_IN_constructor_definition_308 = Set[ 6, 18 ]
    TOKENS_FOLLOWING_CLOSE_IN_constructor_definition_317 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_constructor_definition_321 = Set[ 6, 13, 14, 20 ]
    TOKENS_FOLLOWING_statement_IN_constructor_definition_326 = Set[ 6, 13, 14, 20 ]
    TOKENS_FOLLOWING_CLOSE_IN_constructor_definition_332 = Set[ 1 ]
    TOKENS_FOLLOWING_OPEN_IN_function_definition_350 = Set[ 13, 23, 24, 25, 26, 27 ]
    TOKENS_FOLLOWING_variable_type_IN_function_definition_354 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_function_definition_358 = Set[ 6, 18, 32 ]
    TOKENS_FOLLOWING_T__32_IN_function_definition_366 = Set[ 13, 23, 24, 25, 26, 27, 33 ]
    TOKENS_FOLLOWING_variable_type_IN_function_definition_376 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_function_definition_380 = Set[ 33, 36 ]
    TOKENS_FOLLOWING_T__36_IN_function_definition_389 = Set[ 13, 23, 24, 25, 26, 27 ]
    TOKENS_FOLLOWING_variable_type_IN_function_definition_393 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_function_definition_397 = Set[ 33, 36 ]
    TOKENS_FOLLOWING_T__33_IN_function_definition_409 = Set[ 6, 18 ]
    TOKENS_FOLLOWING_CLOSE_IN_function_definition_418 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_function_definition_422 = Set[ 6, 13, 14, 20 ]
    TOKENS_FOLLOWING_statement_IN_function_definition_427 = Set[ 6, 13, 14, 20 ]
    TOKENS_FOLLOWING_CLOSE_IN_function_definition_434 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_variable_type_454 = Set[ 1 ]
    TOKENS_FOLLOWING_if_statement_IN_statement_512 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_return_statement_IN_statement_518 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_variable_assignment_statement_IN_statement_524 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_function_call_statement_IN_statement_530 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_NL_IN_statement_536 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_if_statement_557 = Set[ 4, 5, 12, 13, 16, 21, 29, 32, 35, 37 ]
    TOKENS_FOLLOWING_expression_IN_if_statement_561 = Set[ 6, 18 ]
    TOKENS_FOLLOWING_CLOSE_IN_if_statement_569 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_if_statement_573 = Set[ 6, 13, 14, 20 ]
    TOKENS_FOLLOWING_statement_IN_if_statement_578 = Set[ 6, 13, 14, 20 ]
    TOKENS_FOLLOWING_CLOSE_IN_if_statement_585 = Set[ 1 ]
    TOKENS_FOLLOWING_RETURN_IN_return_statement_603 = Set[ 4, 5, 12, 13, 16, 21, 29, 32, 35, 37 ]
    TOKENS_FOLLOWING_expression_IN_return_statement_607 = Set[ 1 ]
    TOKENS_FOLLOWING_variable_path_IN_variable_assignment_statement_627 = Set[ 44 ]
    TOKENS_FOLLOWING_T__44_IN_variable_assignment_statement_629 = Set[ 4, 5, 12, 13, 16, 21, 29, 32, 35, 37 ]
    TOKENS_FOLLOWING_expression_IN_variable_assignment_statement_633 = Set[ 1 ]
    TOKENS_FOLLOWING_variable_path_IN_function_call_statement_653 = Set[ 32 ]
    TOKENS_FOLLOWING_T__32_IN_function_call_statement_655 = Set[ 4, 5, 12, 13, 16, 21, 29, 32, 33, 35, 37 ]
    TOKENS_FOLLOWING_expression_IN_function_call_statement_665 = Set[ 33, 36 ]
    TOKENS_FOLLOWING_T__36_IN_function_call_statement_676 = Set[ 4, 5, 12, 13, 16, 21, 29, 32, 35, 37 ]
    TOKENS_FOLLOWING_expression_IN_function_call_statement_680 = Set[ 33, 36 ]
    TOKENS_FOLLOWING_T__33_IN_function_call_statement_696 = Set[ 1 ]
    TOKENS_FOLLOWING_IDENT_IN_variable_path_714 = Set[ 1, 38, 41 ]
    TOKENS_FOLLOWING_set_IN_variable_path_723 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_variable_path_733 = Set[ 1, 38, 41 ]
    TOKENS_FOLLOWING_COMPONENT_IN_component_751 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_component_753 = Set[ 6, 18 ]
    TOKENS_FOLLOWING_CLOSE_IN_component_759 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_component_763 = Set[ 6, 13, 15, 19, 23, 24, 25, 26, 27, 37 ]
    TOKENS_FOLLOWING_class_body_IN_component_765 = Set[ 6, 13, 15, 19, 23, 24, 25, 26, 27, 37 ]
    TOKENS_FOLLOWING_CLOSE_IN_component_768 = Set[ 1 ]
    TOKENS_FOLLOWING_SYSTEM_IN_system_783 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_system_785 = Set[ 6, 18 ]
    TOKENS_FOLLOWING_CLOSE_IN_system_791 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_system_795 = Set[ 6, 13, 15, 19, 23, 24, 25, 26, 27, 37 ]
    TOKENS_FOLLOWING_class_body_IN_system_797 = Set[ 6, 13, 15, 19, 23, 24, 25, 26, 27, 37 ]
    TOKENS_FOLLOWING_CLOSE_IN_system_800 = Set[ 1 ]
    TOKENS_FOLLOWING_ENUM_IN_enum_815 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_enum_817 = Set[ 6, 18 ]
    TOKENS_FOLLOWING_CLOSE_IN_enum_823 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_enum_827 = Set[ 6, 13, 15, 19, 23, 24, 25, 26, 27, 37 ]
    TOKENS_FOLLOWING_class_body_IN_enum_829 = Set[ 6, 13, 15, 19, 23, 24, 25, 26, 27, 37 ]
    TOKENS_FOLLOWING_CLOSE_IN_enum_832 = Set[ 1 ]
    TOKENS_FOLLOWING_variable_path_IN_term_852 = Set[ 1 ]
    TOKENS_FOLLOWING_function_call_statement_IN_term_862 = Set[ 1 ]
    TOKENS_FOLLOWING_T__32_IN_term_870 = Set[ 4, 5, 12, 13, 16, 21, 29, 32, 35, 37 ]
    TOKENS_FOLLOWING_expression_IN_term_874 = Set[ 33 ]
    TOKENS_FOLLOWING_T__33_IN_term_876 = Set[ 1 ]
    TOKENS_FOLLOWING_INTEGER_IN_term_886 = Set[ 1 ]
    TOKENS_FOLLOWING_FLOAT_IN_term_896 = Set[ 1 ]
    TOKENS_FOLLOWING_BOOLEAN_IN_term_908 = Set[ 1 ]
    TOKENS_FOLLOWING_STRING_IN_term_918 = Set[ 1 ]
    TOKENS_FOLLOWING_CHAR_IN_term_929 = Set[ 1 ]
    TOKENS_FOLLOWING_T__29_IN_negation_950 = Set[ 4, 5, 12, 13, 16, 21, 29, 32 ]
    TOKENS_FOLLOWING_negation_IN_negation_954 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_negation_964 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_unary_984 = Set[ 4, 5, 12, 13, 16, 21, 29, 32, 35, 37 ]
    TOKENS_FOLLOWING_unary_IN_unary_994 = Set[ 1 ]
    TOKENS_FOLLOWING_negation_IN_unary_1004 = Set[ 1 ]
    TOKENS_FOLLOWING_unary_IN_mult_1024 = Set[ 1, 30, 34, 39 ]
    TOKENS_FOLLOWING_set_IN_mult_1034 = Set[ 4, 5, 12, 13, 16, 21, 29, 32, 35, 37 ]
    TOKENS_FOLLOWING_mult_IN_mult_1048 = Set[ 1 ]
    TOKENS_FOLLOWING_mult_IN_add_1072 = Set[ 1, 35, 37 ]
    TOKENS_FOLLOWING_set_IN_add_1083 = Set[ 4, 5, 12, 13, 16, 21, 29, 32, 35, 37 ]
    TOKENS_FOLLOWING_add_IN_add_1093 = Set[ 1 ]
    TOKENS_FOLLOWING_add_IN_relation_1123 = Set[ 1, 40, 42, 43, 45, 46, 47 ]
    TOKENS_FOLLOWING_set_IN_relation_1134 = Set[ 4, 5, 12, 13, 16, 21, 29, 32, 35, 37 ]
    TOKENS_FOLLOWING_relation_IN_relation_1160 = Set[ 1 ]
    TOKENS_FOLLOWING_relation_IN_expression_1190 = Set[ 1, 31, 48 ]
    TOKENS_FOLLOWING_set_IN_expression_1201 = Set[ 4, 5, 12, 13, 16, 21, 29, 32, 35, 37 ]
    TOKENS_FOLLOWING_expression_IN_expression_1211 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
