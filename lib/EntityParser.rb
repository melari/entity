#!/usr/bin/env ruby
#
# lib/Entity.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: lib/Entity.g
# Generated at: 2014-03-17 10:23:06
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
    define_tokens( :EOF => -1, :T__30 => 30, :T__31 => 31, :T__32 => 32, 
                   :T__33 => 33, :T__34 => 34, :T__35 => 35, :T__36 => 36, 
                   :T__37 => 37, :T__38 => 38, :T__39 => 39, :T__40 => 40, 
                   :T__41 => 41, :T__42 => 42, :T__43 => 43, :T__44 => 44, 
                   :T__45 => 45, :T__46 => 46, :T__47 => 47, :T__48 => 48, 
                   :T__49 => 49, :T__50 => 50, :T__51 => 51, :T__52 => 52, 
                   :T__53 => 53, :T__54 => 54, :BOOLEAN => 4, :CHAR => 5, 
                   :CLOSE => 6, :COMMENT => 7, :COMPONENT => 8, :ELSE => 9, 
                   :ENTITY => 10, :ENUM => 11, :FLOAT => 12, :IDENT => 13, 
                   :IF => 14, :INIT => 15, :INTEGER => 16, :MULTILINE_COMMENT => 17, 
                   :NL => 18, :OPEN => 19, :RETURN => 20, :STRING => 21, 
                   :SYSTEM => 22, :TYPE_BOOL => 23, :TYPE_FLOAT => 24, :TYPE_INT => 25, 
                   :TYPE_STRING => 26, :TYPE_VOID => 27, :WHILE => 28, :WS => 29 )


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
                    "TYPE_STRING", "TYPE_VOID", "WHILE", "WS", "'!'", "'!='", 
                    "'%'", "'&&'", "'('", "')'", "'*'", "'*='", "'+'", "'+='", 
                    "','", "'-'", "'-='", "'.'", "'/'", "'/='", "'::'", 
                    "'<'", "'<='", "'='", "'=='", "'>'", "'>='", "'^'", 
                    "'||'" )


  end


  class Parser < ANTLR3::Parser
    @grammar_home = Entity

    RULE_METHODS = [ :file, :definition, :entity, :class_body, :instance_variable_declaration, 
                     :component_reference, :constructor_definition, :function_definition, 
                     :variable_type, :statement, :if_statement, :while_statement, 
                     :return_statement, :variable_assignment_statement, 
                     :assignment_type, :function_call_statement, :function_call_statement_float, 
                     :function_arguments, :component, :system, :enum, :literal, 
                     :term, :negation, :unary, :mult, :add, :relation, :expression, 
                     :synpred1_Entity ].freeze

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

      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         value = DefinitionListEval.new 
        # <-- action
      end

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

          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value.add_definition(a) 
            # <-- action
          end


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
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



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

      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         value = a 
        # <-- action
      end


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

      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         value = EntityEval.new(name.text) 
        # <-- action
      end

      # at line 21:3: ( CLOSE | NL (a= class_body )* CLOSE )
      alt_6 = 2
      look_6_0 = @input.peek( 1 )

      if ( look_6_0 == CLOSE )
        alt_6 = 1
      elsif ( look_6_0 == NL )
        alt_6 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



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

          if ( look_5_0 == IDENT || look_5_0 == INIT || look_5_0 == OPEN || look_5_0.between?( TYPE_BOOL, TYPE_VOID ) || look_5_0 == T__41 )
            alt_5 = 1

          end
          case alt_5
          when 1
            # at line 21:17: a= class_body
            @state.following.push( TOKENS_FOLLOWING_class_body_IN_entity_131 )
            a = class_body
            @state.following.pop

            # syntactic predicate action gate test
            if @state.backtracking == 0
              # --> action
               value.add_body(a) 
              # <-- action
            end


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
      when T__41 then alt_7 = 4
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



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

      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         value = a 
        # <-- action
      end


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

      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         value = InstanceVariableDeclarationEval.new(type, a.text) 
        # <-- action
      end

      # at line 34:3: ( ',' a= IDENT )*
      while true # decision 9
        alt_9 = 2
        look_9_0 = @input.peek( 1 )

        if ( look_9_0 == T__40 )
          alt_9 = 1

        end
        case alt_9
        when 1
          # at line 34:4: ',' a= IDENT
          match( T__40, TOKENS_FOLLOWING_T__40_IN_instance_variable_declaration_215 )
          a = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_instance_variable_declaration_219 )

          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value.add_chained_variable(a.text) 
            # <-- action
          end


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
      match( T__41, TOKENS_FOLLOWING_T__41_IN_component_reference_237 )
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

      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         value = ConstructorDefinitionEval.new 
        # <-- action
      end

      # at line 43:3: ( '(' (type= variable_type name= IDENT ( ',' type= variable_type name= IDENT )* )? ')' )?
      alt_12 = 2
      look_12_0 = @input.peek( 1 )

      if ( look_12_0 == T__34 )
        alt_12 = 1
      end
      case alt_12
      when 1
        # at line 43:5: '(' (type= variable_type name= IDENT ( ',' type= variable_type name= IDENT )* )? ')'
        match( T__34, TOKENS_FOLLOWING_T__34_IN_constructor_definition_265 )
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

          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value.add_argument(type, name.text) 
            # <-- action
          end

          # at line 45:5: ( ',' type= variable_type name= IDENT )*
          while true # decision 10
            alt_10 = 2
            look_10_0 = @input.peek( 1 )

            if ( look_10_0 == T__40 )
              alt_10 = 1

            end
            case alt_10
            when 1
              # at line 45:6: ',' type= variable_type name= IDENT
              match( T__40, TOKENS_FOLLOWING_T__40_IN_constructor_definition_288 )
              @state.following.push( TOKENS_FOLLOWING_variable_type_IN_constructor_definition_292 )
              type = variable_type
              @state.following.pop
              name = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_constructor_definition_296 )

              # syntactic predicate action gate test
              if @state.backtracking == 0
                # --> action
                 value.add_argument(type, name.text) 
                # <-- action
              end


            else
              break # out of loop for decision 10
            end
          end # loop for decision 10


        end
        match( T__35, TOKENS_FOLLOWING_T__35_IN_constructor_definition_308 )

      end
      # at line 47:3: ( CLOSE | NL (a= statement )* CLOSE )
      alt_14 = 2
      look_14_0 = @input.peek( 1 )

      if ( look_14_0 == CLOSE )
        alt_14 = 1
      elsif ( look_14_0 == NL )
        alt_14 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



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

          if ( look_13_0.between?( IDENT, IF ) || look_13_0 == RETURN || look_13_0 == WHILE )
            alt_13 = 1

          end
          case alt_13
          when 1
            # at line 47:17: a= statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_constructor_definition_326 )
            a = statement
            @state.following.pop

            # syntactic predicate action gate test
            if @state.backtracking == 0
              # --> action
               value.add_statement(a) 
              # <-- action
            end


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

      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         value = FunctionDefinitionEval.new(name.text, type) 
        # <-- action
      end

      # at line 52:3: ( '(' (type= variable_type name= IDENT ( ',' type= variable_type name= IDENT )* )? ')' )?
      alt_17 = 2
      look_17_0 = @input.peek( 1 )

      if ( look_17_0 == T__34 )
        alt_17 = 1
      end
      case alt_17
      when 1
        # at line 52:5: '(' (type= variable_type name= IDENT ( ',' type= variable_type name= IDENT )* )? ')'
        match( T__34, TOKENS_FOLLOWING_T__34_IN_function_definition_366 )
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

          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value.add_argument(type, name.text) 
            # <-- action
          end

          # at line 54:5: ( ',' type= variable_type name= IDENT )*
          while true # decision 15
            alt_15 = 2
            look_15_0 = @input.peek( 1 )

            if ( look_15_0 == T__40 )
              alt_15 = 1

            end
            case alt_15
            when 1
              # at line 54:6: ',' type= variable_type name= IDENT
              match( T__40, TOKENS_FOLLOWING_T__40_IN_function_definition_389 )
              @state.following.push( TOKENS_FOLLOWING_variable_type_IN_function_definition_393 )
              type = variable_type
              @state.following.pop
              name = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_function_definition_397 )

              # syntactic predicate action gate test
              if @state.backtracking == 0
                # --> action
                 value.add_argument(type, name.text) 
                # <-- action
              end


            else
              break # out of loop for decision 15
            end
          end # loop for decision 15


        end
        match( T__35, TOKENS_FOLLOWING_T__35_IN_function_definition_409 )

      end
      # at line 56:3: ( CLOSE | NL (a= statement )* CLOSE )
      alt_19 = 2
      look_19_0 = @input.peek( 1 )

      if ( look_19_0 == CLOSE )
        alt_19 = 1
      elsif ( look_19_0 == NL )
        alt_19 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



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

          if ( look_18_0.between?( IDENT, IF ) || look_18_0 == RETURN || look_18_0 == WHILE )
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 56:17: a= statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_function_definition_427 )
            a = statement
            @state.following.pop

            # syntactic predicate action gate test
            if @state.backtracking == 0
              # --> action
               value.add_statement(a) 
              # <-- action
            end


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
    # 59:1: variable_type returns [value] : ( (a= ( TYPE_FLOAT | TYPE_INT | TYPE_BOOL | TYPE_STRING ) ) | (a= ( TYPE_VOID | IDENT ) ) );
    #
    def variable_type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      value = nil


      a = nil


      begin
      # at line 60:3: ( (a= ( TYPE_FLOAT | TYPE_INT | TYPE_BOOL | TYPE_STRING ) ) | (a= ( TYPE_VOID | IDENT ) ) )
      alt_20 = 2
      look_20_0 = @input.peek( 1 )

      if ( look_20_0.between?( TYPE_BOOL, TYPE_STRING ) )
        alt_20 = 1
      elsif ( look_20_0 == IDENT || look_20_0 == TYPE_VOID )
        alt_20 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 20, 0 )

      end
      case alt_20
      when 1
        # at line 60:5: (a= ( TYPE_FLOAT | TYPE_INT | TYPE_BOOL | TYPE_STRING ) )
        # at line 60:5: (a= ( TYPE_FLOAT | TYPE_INT | TYPE_BOOL | TYPE_STRING ) )
        # at line 60:7: a= ( TYPE_FLOAT | TYPE_INT | TYPE_BOOL | TYPE_STRING )
        a = @input.look

        if @input.peek( 1 ).between?( TYPE_BOOL, TYPE_STRING )
          @input.consume
          @state.error_recovery = false

        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )


          mse = MismatchedSet( nil )
          raise mse

        end



        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = a.text.capitalize 
          # <-- action
        end



      when 2
        # at line 66:5: (a= ( TYPE_VOID | IDENT ) )
        # at line 66:5: (a= ( TYPE_VOID | IDENT ) )
        # at line 66:7: a= ( TYPE_VOID | IDENT )
        a = @input.look

        if @input.peek(1) == IDENT || @input.peek(1) == TYPE_VOID
          @input.consume
          @state.error_recovery = false

        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )


          mse = MismatchedSet( nil )
          raise mse

        end



        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = a.text 
          # <-- action
        end



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
    # parser rule statement
    #
    # (in lib/Entity.g)
    # 72:1: statement returns [value] : a= ( if_statement | while_statement | return_statement | ( function_call_statement assignment_type )=> variable_assignment_statement | function_call_statement ) ( NL )* ;
    #
    def statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      value = nil


      a = nil


      begin
      # at line 73:5: a= ( if_statement | while_statement | return_statement | ( function_call_statement assignment_type )=> variable_assignment_statement | function_call_statement ) ( NL )*
      # at line 73:7: ( if_statement | while_statement | return_statement | ( function_call_statement assignment_type )=> variable_assignment_statement | function_call_statement )
      alt_21 = 5
      case look_21 = @input.peek( 1 )
      when IF then alt_21 = 1
      when WHILE then alt_21 = 2
      when RETURN then alt_21 = 3
      when IDENT then look_21_4 = @input.peek( 2 )

      if ( syntactic_predicate?( :synpred1_Entity ) )
        alt_21 = 4
      elsif ( true )
        alt_21 = 5
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 21, 4 )

      end
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 21, 0 )

      end
      case alt_21
      when 1
        # at line 73:9: if_statement
        @state.following.push( TOKENS_FOLLOWING_if_statement_IN_statement_572 )
        a = if_statement
        @state.following.pop

      when 2
        # at line 74:5: while_statement
        @state.following.push( TOKENS_FOLLOWING_while_statement_IN_statement_578 )
        a = while_statement
        @state.following.pop

      when 3
        # at line 75:5: return_statement
        @state.following.push( TOKENS_FOLLOWING_return_statement_IN_statement_584 )
        a = return_statement
        @state.following.pop

      when 4
        # at line 76:5: ( function_call_statement assignment_type )=> variable_assignment_statement
        @state.following.push( TOKENS_FOLLOWING_variable_assignment_statement_IN_statement_597 )
        a = variable_assignment_statement
        @state.following.pop

      when 5
        # at line 77:5: function_call_statement
        @state.following.push( TOKENS_FOLLOWING_function_call_statement_IN_statement_603 )
        a = function_call_statement
        @state.following.pop

      end
      # at line 78:5: ( NL )*
      while true # decision 22
        alt_22 = 2
        look_22_0 = @input.peek( 1 )

        if ( look_22_0 == NL )
          alt_22 = 1

        end
        case alt_22
        when 1
          # at line 78:5: NL
          match( NL, TOKENS_FOLLOWING_NL_IN_statement_609 )

        else
          break # out of loop for decision 22
        end
      end # loop for decision 22


      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         value = a 
        # <-- action
      end


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
    # 82:1: if_statement returns [value] : IF a= expression ( CLOSE | NL (b= statement )* CLOSE ) ;
    #
    def if_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      value = nil


      a = nil
      b = nil


      begin
      # at line 83:5: IF a= expression ( CLOSE | NL (b= statement )* CLOSE )
      match( IF, TOKENS_FOLLOWING_IF_IN_if_statement_630 )
      @state.following.push( TOKENS_FOLLOWING_expression_IN_if_statement_634 )
      a = expression
      @state.following.pop

      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         value = IfStatementEval.new(a) 
        # <-- action
      end

      # at line 84:3: ( CLOSE | NL (b= statement )* CLOSE )
      alt_24 = 2
      look_24_0 = @input.peek( 1 )

      if ( look_24_0 == CLOSE )
        alt_24 = 1
      elsif ( look_24_0 == NL )
        alt_24 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 24, 0 )

      end
      case alt_24
      when 1
        # at line 84:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_if_statement_642 )

      when 2
        # at line 84:13: NL (b= statement )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_if_statement_646 )
        # at line 84:16: (b= statement )*
        while true # decision 23
          alt_23 = 2
          look_23_0 = @input.peek( 1 )

          if ( look_23_0.between?( IDENT, IF ) || look_23_0 == RETURN || look_23_0 == WHILE )
            alt_23 = 1

          end
          case alt_23
          when 1
            # at line 84:17: b= statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_if_statement_651 )
            b = statement
            @state.following.pop

            # syntactic predicate action gate test
            if @state.backtracking == 0
              # --> action
               value.add_statement(b) 
              # <-- action
            end


          else
            break # out of loop for decision 23
          end
        end # loop for decision 23

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_if_statement_658 )

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
    # parser rule while_statement
    #
    # (in lib/Entity.g)
    # 87:1: while_statement returns [value] : WHILE a= expression ( CLOSE | NL (b= statement )* CLOSE ) ;
    #
    def while_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      value = nil


      a = nil
      b = nil


      begin
      # at line 88:5: WHILE a= expression ( CLOSE | NL (b= statement )* CLOSE )
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_statement_676 )
      @state.following.push( TOKENS_FOLLOWING_expression_IN_while_statement_680 )
      a = expression
      @state.following.pop

      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         value = WhileStatementEval.new(a) 
        # <-- action
      end

      # at line 89:3: ( CLOSE | NL (b= statement )* CLOSE )
      alt_26 = 2
      look_26_0 = @input.peek( 1 )

      if ( look_26_0 == CLOSE )
        alt_26 = 1
      elsif ( look_26_0 == NL )
        alt_26 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 26, 0 )

      end
      case alt_26
      when 1
        # at line 89:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_while_statement_688 )

      when 2
        # at line 89:13: NL (b= statement )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_while_statement_692 )
        # at line 89:16: (b= statement )*
        while true # decision 25
          alt_25 = 2
          look_25_0 = @input.peek( 1 )

          if ( look_25_0.between?( IDENT, IF ) || look_25_0 == RETURN || look_25_0 == WHILE )
            alt_25 = 1

          end
          case alt_25
          when 1
            # at line 89:17: b= statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_while_statement_697 )
            b = statement
            @state.following.pop

            # syntactic predicate action gate test
            if @state.backtracking == 0
              # --> action
               value.add_statement(b) 
              # <-- action
            end


          else
            break # out of loop for decision 25
          end
        end # loop for decision 25

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_while_statement_704 )

      end

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
    # parser rule return_statement
    #
    # (in lib/Entity.g)
    # 92:1: return_statement returns [value] : RETURN a= expression ;
    #
    def return_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      value = nil


      a = nil


      begin
      # at line 93:5: RETURN a= expression
      match( RETURN, TOKENS_FOLLOWING_RETURN_IN_return_statement_722 )
      @state.following.push( TOKENS_FOLLOWING_expression_IN_return_statement_726 )
      a = expression
      @state.following.pop

      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         value = ReturnStatementEval.new(a) 
        # <-- action
      end


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
    # parser rule variable_assignment_statement
    #
    # (in lib/Entity.g)
    # 96:1: variable_assignment_statement returns [value] : a= function_call_statement type= assignment_type b= expression ;
    #
    def variable_assignment_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      value = nil


      a = nil
      type = nil
      b = nil


      begin
      # at line 97:6: a= function_call_statement type= assignment_type b= expression
      @state.following.push( TOKENS_FOLLOWING_function_call_statement_IN_variable_assignment_statement_747 )
      a = function_call_statement
      @state.following.pop
      @state.following.push( TOKENS_FOLLOWING_assignment_type_IN_variable_assignment_statement_751 )
      type = assignment_type
      @state.following.pop
      @state.following.push( TOKENS_FOLLOWING_expression_IN_variable_assignment_statement_755 )
      b = expression
      @state.following.pop

      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         value = VariableAssignmentStatementEval.new(a, b, type) 
        # <-- action
      end


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
    # parser rule assignment_type
    #
    # (in lib/Entity.g)
    # 100:1: assignment_type returns [value] : type= ( '=' | '+=' | '-=' | '*=' | '/=' ) ;
    #
    def assignment_type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      value = nil


      type = nil


      begin
      # at line 101:5: type= ( '=' | '+=' | '-=' | '*=' | '/=' )
      type = @input.look

      if @input.peek(1) == T__37 || @input.peek(1) == T__39 || @input.peek(1) == T__42 || @input.peek(1) == T__45 || @input.peek(1) == T__49
        @input.consume
        @state.error_recovery = false

      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )


        mse = MismatchedSet( nil )
        raise mse

      end



      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         value = type.text 
        # <-- action
      end


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
    # parser rule function_call_statement
    #
    # (in lib/Entity.g)
    # 104:1: function_call_statement returns [value] : name= IDENT (args= function_arguments )? chain= function_call_statement_float ;
    #
    def function_call_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      value = nil


      name = nil
      args = nil
      chain = nil


      begin
      # at line 105:5: name= IDENT (args= function_arguments )? chain= function_call_statement_float
      name = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_function_call_statement_813 )
      # at line 105:20: (args= function_arguments )?
      alt_27 = 2
      look_27_0 = @input.peek( 1 )

      if ( look_27_0 == T__34 )
        alt_27 = 1
      end
      case alt_27
      when 1
        # at line 105:20: args= function_arguments
        @state.following.push( TOKENS_FOLLOWING_function_arguments_IN_function_call_statement_817 )
        args = function_arguments
        @state.following.pop

      end
      @state.following.push( TOKENS_FOLLOWING_function_call_statement_float_IN_function_call_statement_822 )
      chain = function_call_statement_float
      @state.following.pop

      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action

              value = FunctionCallStatementEval.new(name.text, args)
              value.chain = chain unless chain.nil?
            
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
    # parser rule function_call_statement_float
    #
    # (in lib/Entity.g)
    # 112:1: function_call_statement_float returns [value] : (relation_type= ( '.' | '::' ) name= IDENT (args= function_arguments )? chain= function_call_statement_float |);
    #
    def function_call_statement_float
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      value = nil


      relation_type = nil
      name = nil
      args = nil
      chain = nil


      begin
      # at line 113:3: (relation_type= ( '.' | '::' ) name= IDENT (args= function_arguments )? chain= function_call_statement_float |)
      alt_29 = 2
      look_29_0 = @input.peek( 1 )

      if ( look_29_0 == T__43 || look_29_0 == T__46 )
        alt_29 = 1
      elsif ( look_29_0 == CLOSE || look_29_0.between?( IDENT, IF ) || look_29_0 == NL || look_29_0 == RETURN || look_29_0 == WHILE || look_29_0.between?( T__31, T__33 ) || look_29_0.between?( T__35, T__42 ) || look_29_0.between?( T__44, T__45 ) || look_29_0.between?( T__47, T__54 ) )
        alt_29 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 29, 0 )

      end
      case alt_29
      when 1
        # at line 113:5: relation_type= ( '.' | '::' ) name= IDENT (args= function_arguments )? chain= function_call_statement_float
        relation_type = @input.look

        if @input.peek(1) == T__43 || @input.peek(1) == T__46
          @input.consume
          @state.error_recovery = false

        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )


          mse = MismatchedSet( nil )
          raise mse

        end


        name = match( IDENT, TOKENS_FOLLOWING_IDENT_IN_function_call_statement_float_856 )
        # at line 113:47: (args= function_arguments )?
        alt_28 = 2
        look_28_0 = @input.peek( 1 )

        if ( look_28_0 == T__34 )
          alt_28 = 1
        end
        case alt_28
        when 1
          # at line 113:47: args= function_arguments
          @state.following.push( TOKENS_FOLLOWING_function_arguments_IN_function_call_statement_float_860 )
          args = function_arguments
          @state.following.pop

        end
        @state.following.push( TOKENS_FOLLOWING_function_call_statement_float_IN_function_call_statement_float_865 )
        chain = function_call_statement_float
        @state.following.pop

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

                value = FunctionCallStatementEval.new(name.text, args)
                value.relation_type = relation_type.text
                value.chain = chain unless chain.nil?
              
          # <-- action
        end


      when 2
        # at line 119:19: 
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = nil 
          # <-- action
        end


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
    # parser rule function_arguments
    #
    # (in lib/Entity.g)
    # 122:1: function_arguments returns [value] : '(' (b= expression ( ',' b= expression )* )? ')' ;
    #
    def function_arguments
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      value = nil


      b = nil


      begin
      # at line 123:5: '(' (b= expression ( ',' b= expression )* )? ')'
      match( T__34, TOKENS_FOLLOWING_T__34_IN_function_arguments_895 )

      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         value = [] 
        # <-- action
      end

      # at line 123:25: (b= expression ( ',' b= expression )* )?
      alt_31 = 2
      look_31_0 = @input.peek( 1 )

      if ( look_31_0.between?( BOOLEAN, CHAR ) || look_31_0.between?( FLOAT, IDENT ) || look_31_0 == INTEGER || look_31_0 == STRING || look_31_0 == T__30 || look_31_0 == T__34 || look_31_0 == T__38 || look_31_0 == T__41 )
        alt_31 = 1
      end
      case alt_31
      when 1
        # at line 123:27: b= expression ( ',' b= expression )*
        @state.following.push( TOKENS_FOLLOWING_expression_IN_function_arguments_903 )
        b = expression
        @state.following.pop

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value << b 
          # <-- action
        end

        # at line 123:56: ( ',' b= expression )*
        while true # decision 30
          alt_30 = 2
          look_30_0 = @input.peek( 1 )

          if ( look_30_0 == T__40 )
            alt_30 = 1

          end
          case alt_30
          when 1
            # at line 123:58: ',' b= expression
            match( T__40, TOKENS_FOLLOWING_T__40_IN_function_arguments_909 )
            @state.following.push( TOKENS_FOLLOWING_expression_IN_function_arguments_913 )
            b = expression
            @state.following.pop

            # syntactic predicate action gate test
            if @state.backtracking == 0
              # --> action
               value << b 
              # <-- action
            end


          else
            break # out of loop for decision 30
          end
        end # loop for decision 30


      end
      match( T__35, TOKENS_FOLLOWING_T__35_IN_function_arguments_923 )

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
    # parser rule component
    #
    # (in lib/Entity.g)
    # 126:1: component : COMPONENT IDENT ( CLOSE | NL ( class_body )* CLOSE ) ;
    #
    def component
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      begin
      # at line 127:5: COMPONENT IDENT ( CLOSE | NL ( class_body )* CLOSE )
      match( COMPONENT, TOKENS_FOLLOWING_COMPONENT_IN_component_936 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_component_938 )
      # at line 128:3: ( CLOSE | NL ( class_body )* CLOSE )
      alt_33 = 2
      look_33_0 = @input.peek( 1 )

      if ( look_33_0 == CLOSE )
        alt_33 = 1
      elsif ( look_33_0 == NL )
        alt_33 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 33, 0 )

      end
      case alt_33
      when 1
        # at line 128:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_component_944 )

      when 2
        # at line 128:13: NL ( class_body )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_component_948 )
        # at line 128:16: ( class_body )*
        while true # decision 32
          alt_32 = 2
          look_32_0 = @input.peek( 1 )

          if ( look_32_0 == IDENT || look_32_0 == INIT || look_32_0 == OPEN || look_32_0.between?( TYPE_BOOL, TYPE_VOID ) || look_32_0 == T__41 )
            alt_32 = 1

          end
          case alt_32
          when 1
            # at line 128:16: class_body
            @state.following.push( TOKENS_FOLLOWING_class_body_IN_component_950 )
            class_body
            @state.following.pop

          else
            break # out of loop for decision 32
          end
        end # loop for decision 32

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_component_953 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 19 )


      end

      return 
    end



    #
    # parser rule system
    #
    # (in lib/Entity.g)
    # 131:1: system : SYSTEM IDENT ( CLOSE | NL ( class_body )* CLOSE ) ;
    #
    def system
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      begin
      # at line 132:5: SYSTEM IDENT ( CLOSE | NL ( class_body )* CLOSE )
      match( SYSTEM, TOKENS_FOLLOWING_SYSTEM_IN_system_968 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_system_970 )
      # at line 133:3: ( CLOSE | NL ( class_body )* CLOSE )
      alt_35 = 2
      look_35_0 = @input.peek( 1 )

      if ( look_35_0 == CLOSE )
        alt_35 = 1
      elsif ( look_35_0 == NL )
        alt_35 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 35, 0 )

      end
      case alt_35
      when 1
        # at line 133:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_system_976 )

      when 2
        # at line 133:13: NL ( class_body )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_system_980 )
        # at line 133:16: ( class_body )*
        while true # decision 34
          alt_34 = 2
          look_34_0 = @input.peek( 1 )

          if ( look_34_0 == IDENT || look_34_0 == INIT || look_34_0 == OPEN || look_34_0.between?( TYPE_BOOL, TYPE_VOID ) || look_34_0 == T__41 )
            alt_34 = 1

          end
          case alt_34
          when 1
            # at line 133:16: class_body
            @state.following.push( TOKENS_FOLLOWING_class_body_IN_system_982 )
            class_body
            @state.following.pop

          else
            break # out of loop for decision 34
          end
        end # loop for decision 34

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_system_985 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 20 )


      end

      return 
    end



    #
    # parser rule enum
    #
    # (in lib/Entity.g)
    # 136:1: enum : ENUM IDENT ( CLOSE | NL ( class_body )* CLOSE ) ;
    #
    def enum
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      begin
      # at line 137:5: ENUM IDENT ( CLOSE | NL ( class_body )* CLOSE )
      match( ENUM, TOKENS_FOLLOWING_ENUM_IN_enum_1000 )
      match( IDENT, TOKENS_FOLLOWING_IDENT_IN_enum_1002 )
      # at line 138:3: ( CLOSE | NL ( class_body )* CLOSE )
      alt_37 = 2
      look_37_0 = @input.peek( 1 )

      if ( look_37_0 == CLOSE )
        alt_37 = 1
      elsif ( look_37_0 == NL )
        alt_37 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 37, 0 )

      end
      case alt_37
      when 1
        # at line 138:5: CLOSE
        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_enum_1008 )

      when 2
        # at line 138:13: NL ( class_body )* CLOSE
        match( NL, TOKENS_FOLLOWING_NL_IN_enum_1012 )
        # at line 138:16: ( class_body )*
        while true # decision 36
          alt_36 = 2
          look_36_0 = @input.peek( 1 )

          if ( look_36_0 == IDENT || look_36_0 == INIT || look_36_0 == OPEN || look_36_0.between?( TYPE_BOOL, TYPE_VOID ) || look_36_0 == T__41 )
            alt_36 = 1

          end
          case alt_36
          when 1
            # at line 138:16: class_body
            @state.following.push( TOKENS_FOLLOWING_class_body_IN_enum_1014 )
            class_body
            @state.following.pop

          else
            break # out of loop for decision 36
          end
        end # loop for decision 36

        match( CLOSE, TOKENS_FOLLOWING_CLOSE_IN_enum_1017 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 21 )


      end

      return 
    end



    #
    # parser rule literal
    #
    # (in lib/Entity.g)
    # 141:1: literal returns [value] : (a= INTEGER |a= FLOAT |a= BOOLEAN |a= STRING |a= CHAR );
    #
    def literal
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      value = nil


      a = nil


      begin
      # at line 142:3: (a= INTEGER |a= FLOAT |a= BOOLEAN |a= STRING |a= CHAR )
      alt_38 = 5
      case look_38 = @input.peek( 1 )
      when INTEGER then alt_38 = 1
      when FLOAT then alt_38 = 2
      when BOOLEAN then alt_38 = 3
      when STRING then alt_38 = 4
      when CHAR then alt_38 = 5
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 38, 0 )

      end
      case alt_38
      when 1
        # at line 142:5: a= INTEGER
        a = match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_literal_1037 )

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = LiteralEval.new(:Int, a.text) 
          # <-- action
        end


      when 2
        # at line 143:5: a= FLOAT
        a = match( FLOAT, TOKENS_FOLLOWING_FLOAT_IN_literal_1047 )

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = LiteralEval.new(:Float, a.text) 
          # <-- action
        end


      when 3
        # at line 144:5: a= BOOLEAN
        a = match( BOOLEAN, TOKENS_FOLLOWING_BOOLEAN_IN_literal_1059 )

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = LiteralEval.new(:Bool, a.text) 
          # <-- action
        end


      when 4
        # at line 145:5: a= STRING
        a = match( STRING, TOKENS_FOLLOWING_STRING_IN_literal_1069 )

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = LiteralEval.new(:String, a.text) 
          # <-- action
        end


      when 5
        # at line 146:5: a= CHAR
        a = match( CHAR, TOKENS_FOLLOWING_CHAR_IN_literal_1080 )

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = LiteralEval.new(:Char, a.text) 
          # <-- action
        end


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
    # parser rule term
    #
    # (in lib/Entity.g)
    # 149:1: term returns [value] : (b= literal |b= function_call_statement | '(' b= expression ')' );
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      value = nil


      b = nil


      begin
      # at line 150:3: (b= literal |b= function_call_statement | '(' b= expression ')' )
      alt_39 = 3
      case look_39 = @input.peek( 1 )
      when BOOLEAN, CHAR, FLOAT, INTEGER, STRING then alt_39 = 1
      when IDENT then alt_39 = 2
      when T__34 then alt_39 = 3
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 39, 0 )

      end
      case alt_39
      when 1
        # at line 150:5: b= literal
        @state.following.push( TOKENS_FOLLOWING_literal_IN_term_1103 )
        b = literal
        @state.following.pop

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = b 
          # <-- action
        end


      when 2
        # at line 151:5: b= function_call_statement
        @state.following.push( TOKENS_FOLLOWING_function_call_statement_IN_term_1113 )
        b = function_call_statement
        @state.following.pop

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = b 
          # <-- action
        end


      when 3
        # at line 152:5: '(' b= expression ')'
        match( T__34, TOKENS_FOLLOWING_T__34_IN_term_1121 )
        @state.following.push( TOKENS_FOLLOWING_expression_IN_term_1125 )
        b = expression
        @state.following.pop
        match( T__35, TOKENS_FOLLOWING_T__35_IN_term_1127 )

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = ParenExpressionEval.new(b) 
          # <-- action
        end


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
    # parser rule negation
    #
    # (in lib/Entity.g)
    # 155:1: negation returns [value] : ( '!' a= negation |a= term );
    #
    def negation
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      value = nil


      a = nil


      begin
      # at line 156:3: ( '!' a= negation |a= term )
      alt_40 = 2
      look_40_0 = @input.peek( 1 )

      if ( look_40_0 == T__30 )
        alt_40 = 1
      elsif ( look_40_0.between?( BOOLEAN, CHAR ) || look_40_0.between?( FLOAT, IDENT ) || look_40_0 == INTEGER || look_40_0 == STRING || look_40_0 == T__34 )
        alt_40 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 40, 0 )

      end
      case alt_40
      when 1
        # at line 156:5: '!' a= negation
        match( T__30, TOKENS_FOLLOWING_T__30_IN_negation_1145 )
        @state.following.push( TOKENS_FOLLOWING_negation_IN_negation_1149 )
        a = negation
        @state.following.pop

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = SingleOperandExpressionEval.new('!', a) 
          # <-- action
        end


      when 2
        # at line 157:5: a= term
        @state.following.push( TOKENS_FOLLOWING_term_IN_negation_1159 )
        a = term
        @state.following.pop

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value=a 
          # <-- action
        end


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
    # parser rule unary
    #
    # (in lib/Entity.g)
    # 160:1: unary returns [value] : (type= ( '+' | '-' ) a= unary |a= negation );
    #
    def unary
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )


      value = nil


      type = nil
      a = nil


      begin
      # at line 161:3: (type= ( '+' | '-' ) a= unary |a= negation )
      alt_41 = 2
      look_41_0 = @input.peek( 1 )

      if ( look_41_0 == T__38 || look_41_0 == T__41 )
        alt_41 = 1
      elsif ( look_41_0.between?( BOOLEAN, CHAR ) || look_41_0.between?( FLOAT, IDENT ) || look_41_0 == INTEGER || look_41_0 == STRING || look_41_0 == T__30 || look_41_0 == T__34 )
        alt_41 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 41, 0 )

      end
      case alt_41
      when 1
        # at line 161:5: type= ( '+' | '-' ) a= unary
        type = @input.look

        if @input.peek(1) == T__38 || @input.peek(1) == T__41
          @input.consume
          @state.error_recovery = false

        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )


          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_unary_IN_unary_1189 )
        a = unary
        @state.following.pop

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = SingleOperandExpressionEval.new(type.text, a) 
          # <-- action
        end


      when 2
        # at line 162:5: a= negation
        @state.following.push( TOKENS_FOLLOWING_negation_IN_unary_1199 )
        a = negation
        @state.following.pop

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value=a 
          # <-- action
        end


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



    #
    # parser rule mult
    #
    # (in lib/Entity.g)
    # 165:1: mult returns [value] : a= unary (type= ( '*' | '/' | '%' | '^' ) b= mult )? ;
    #
    def mult
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )


      value = nil


      type = nil
      a = nil
      b = nil


      begin
      # at line 166:5: a= unary (type= ( '*' | '/' | '%' | '^' ) b= mult )?
      @state.following.push( TOKENS_FOLLOWING_unary_IN_mult_1219 )
      a = unary
      @state.following.pop

      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         value = a 
        # <-- action
      end

      # at line 167:3: (type= ( '*' | '/' | '%' | '^' ) b= mult )?
      alt_42 = 2
      look_42_0 = @input.peek( 1 )

      if ( look_42_0 == T__32 || look_42_0 == T__36 || look_42_0 == T__44 || look_42_0 == T__53 )
        alt_42 = 1
      end
      case alt_42
      when 1
        # at line 167:5: type= ( '*' | '/' | '%' | '^' ) b= mult
        type = @input.look

        if @input.peek(1) == T__32 || @input.peek(1) == T__36 || @input.peek(1) == T__44 || @input.peek(1) == T__53
          @input.consume
          @state.error_recovery = false

        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )


          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_mult_IN_mult_1247 )
        b = mult
        @state.following.pop

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = DoubleOperandExpressionEval.new(type.text, a, b) 
          # <-- action
        end


      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 26 )


      end

      return value
    end



    #
    # parser rule add
    #
    # (in lib/Entity.g)
    # 170:1: add returns [value] : a= mult (type= ( '+' | '-' ) b= add )? ;
    #
    def add
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )


      value = nil


      type = nil
      a = nil
      b = nil


      begin
      # at line 171:5: a= mult (type= ( '+' | '-' ) b= add )?
      @state.following.push( TOKENS_FOLLOWING_mult_IN_add_1271 )
      a = mult
      @state.following.pop

      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         value = a 
        # <-- action
      end

      # at line 172:3: (type= ( '+' | '-' ) b= add )?
      alt_43 = 2
      look_43_0 = @input.peek( 1 )

      if ( look_43_0 == T__38 || look_43_0 == T__41 )
        alt_43 = 1
      end
      case alt_43
      when 1
        # at line 172:6: type= ( '+' | '-' ) b= add
        type = @input.look

        if @input.peek(1) == T__38 || @input.peek(1) == T__41
          @input.consume
          @state.error_recovery = false

        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )


          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_add_IN_add_1292 )
        b = add
        @state.following.pop

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = DoubleOperandExpressionEval.new(type.text, a, b) 
          # <-- action
        end


      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 27 )


      end

      return value
    end



    #
    # parser rule relation
    #
    # (in lib/Entity.g)
    # 177:1: relation returns [value] : a= add (type= ( '==' | '!=' | '<' | '<=' | '>=' | '>' ) b= relation )? ;
    #
    def relation
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )


      value = nil


      type = nil
      a = nil
      b = nil


      begin
      # at line 178:5: a= add (type= ( '==' | '!=' | '<' | '<=' | '>=' | '>' ) b= relation )?
      @state.following.push( TOKENS_FOLLOWING_add_IN_relation_1322 )
      a = add
      @state.following.pop

      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         value = a 
        # <-- action
      end

      # at line 179:3: (type= ( '==' | '!=' | '<' | '<=' | '>=' | '>' ) b= relation )?
      alt_44 = 2
      look_44_0 = @input.peek( 1 )

      if ( look_44_0 == T__31 || look_44_0.between?( T__47, T__48 ) || look_44_0.between?( T__50, T__52 ) )
        alt_44 = 1
      end
      case alt_44
      when 1
        # at line 179:6: type= ( '==' | '!=' | '<' | '<=' | '>=' | '>' ) b= relation
        type = @input.look

        if @input.peek(1) == T__31 || @input.peek( 1 ).between?( T__47, T__48 ) || @input.peek( 1 ).between?( T__50, T__52 )
          @input.consume
          @state.error_recovery = false

        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )


          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_relation_IN_relation_1359 )
        b = relation
        @state.following.pop

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = DoubleOperandExpressionEval.new(type.text, a, b) 
          # <-- action
        end


      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 28 )


      end

      return value
    end



    #
    # parser rule expression
    #
    # (in lib/Entity.g)
    # 184:1: expression returns [value] : a= relation (type= ( '&&' | '||' ) b= expression )? ;
    #
    def expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )


      value = nil


      type = nil
      a = nil
      b = nil


      begin
      # at line 185:5: a= relation (type= ( '&&' | '||' ) b= expression )?
      @state.following.push( TOKENS_FOLLOWING_relation_IN_expression_1389 )
      a = relation
      @state.following.pop

      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         value = a 
        # <-- action
      end

      # at line 186:3: (type= ( '&&' | '||' ) b= expression )?
      alt_45 = 2
      look_45_0 = @input.peek( 1 )

      if ( look_45_0 == T__33 || look_45_0 == T__54 )
        alt_45 = 1
      end
      case alt_45
      when 1
        # at line 186:6: type= ( '&&' | '||' ) b= expression
        type = @input.look

        if @input.peek(1) == T__33 || @input.peek(1) == T__54
          @input.consume
          @state.error_recovery = false

        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )


          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1410 )
        b = expression
        @state.following.pop

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = DoubleOperandExpressionEval.new(type.text, a, b) 
          # <-- action
        end


      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 29 )


      end

      return value
    end

    #
    # syntactic predicate synpred1_Entity
    #
    # (in lib/Entity.g)
    # 76:5: synpred1_Entity : function_call_statement assignment_type ;
    #
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    #
    def synpred1_Entity
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )


      # at line 76:6: function_call_statement assignment_type
      @state.following.push( TOKENS_FOLLOWING_function_call_statement_IN_synpred1_Entity_591 )
      function_call_statement
      @state.following.pop
      @state.following.push( TOKENS_FOLLOWING_assignment_type_IN_synpred1_Entity_593 )
      assignment_type
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 30 )


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
    TOKENS_FOLLOWING_NL_IN_entity_126 = Set[ 6, 13, 15, 19, 23, 24, 25, 26, 27, 41 ]
    TOKENS_FOLLOWING_class_body_IN_entity_131 = Set[ 6, 13, 15, 19, 23, 24, 25, 26, 27, 41 ]
    TOKENS_FOLLOWING_CLOSE_IN_entity_137 = Set[ 1 ]
    TOKENS_FOLLOWING_instance_variable_declaration_IN_class_body_159 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_constructor_definition_IN_class_body_165 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_function_definition_IN_class_body_171 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_component_reference_IN_class_body_177 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_NL_IN_class_body_183 = Set[ 1 ]
    TOKENS_FOLLOWING_variable_type_IN_instance_variable_declaration_204 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_instance_variable_declaration_208 = Set[ 1, 40 ]
    TOKENS_FOLLOWING_T__40_IN_instance_variable_declaration_215 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_instance_variable_declaration_219 = Set[ 1, 40 ]
    TOKENS_FOLLOWING_T__41_IN_component_reference_237 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_component_reference_239 = Set[ 18 ]
    TOKENS_FOLLOWING_NL_IN_component_reference_241 = Set[ 1 ]
    TOKENS_FOLLOWING_INIT_IN_constructor_definition_257 = Set[ 6, 18, 34 ]
    TOKENS_FOLLOWING_T__34_IN_constructor_definition_265 = Set[ 13, 23, 24, 25, 26, 27, 35 ]
    TOKENS_FOLLOWING_variable_type_IN_constructor_definition_275 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_constructor_definition_279 = Set[ 35, 40 ]
    TOKENS_FOLLOWING_T__40_IN_constructor_definition_288 = Set[ 13, 23, 24, 25, 26, 27 ]
    TOKENS_FOLLOWING_variable_type_IN_constructor_definition_292 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_constructor_definition_296 = Set[ 35, 40 ]
    TOKENS_FOLLOWING_T__35_IN_constructor_definition_308 = Set[ 6, 18 ]
    TOKENS_FOLLOWING_CLOSE_IN_constructor_definition_317 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_constructor_definition_321 = Set[ 6, 13, 14, 20, 28 ]
    TOKENS_FOLLOWING_statement_IN_constructor_definition_326 = Set[ 6, 13, 14, 20, 28 ]
    TOKENS_FOLLOWING_CLOSE_IN_constructor_definition_332 = Set[ 1 ]
    TOKENS_FOLLOWING_OPEN_IN_function_definition_350 = Set[ 13, 23, 24, 25, 26, 27 ]
    TOKENS_FOLLOWING_variable_type_IN_function_definition_354 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_function_definition_358 = Set[ 6, 18, 34 ]
    TOKENS_FOLLOWING_T__34_IN_function_definition_366 = Set[ 13, 23, 24, 25, 26, 27, 35 ]
    TOKENS_FOLLOWING_variable_type_IN_function_definition_376 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_function_definition_380 = Set[ 35, 40 ]
    TOKENS_FOLLOWING_T__40_IN_function_definition_389 = Set[ 13, 23, 24, 25, 26, 27 ]
    TOKENS_FOLLOWING_variable_type_IN_function_definition_393 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_function_definition_397 = Set[ 35, 40 ]
    TOKENS_FOLLOWING_T__35_IN_function_definition_409 = Set[ 6, 18 ]
    TOKENS_FOLLOWING_CLOSE_IN_function_definition_418 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_function_definition_422 = Set[ 6, 13, 14, 20, 28 ]
    TOKENS_FOLLOWING_statement_IN_function_definition_427 = Set[ 6, 13, 14, 20, 28 ]
    TOKENS_FOLLOWING_CLOSE_IN_function_definition_434 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_variable_type_456 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_variable_type_522 = Set[ 1 ]
    TOKENS_FOLLOWING_if_statement_IN_statement_572 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_while_statement_IN_statement_578 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_return_statement_IN_statement_584 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_variable_assignment_statement_IN_statement_597 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_function_call_statement_IN_statement_603 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_NL_IN_statement_609 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_IF_IN_if_statement_630 = Set[ 4, 5, 12, 13, 16, 21, 30, 34, 38, 41 ]
    TOKENS_FOLLOWING_expression_IN_if_statement_634 = Set[ 6, 18 ]
    TOKENS_FOLLOWING_CLOSE_IN_if_statement_642 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_if_statement_646 = Set[ 6, 13, 14, 20, 28 ]
    TOKENS_FOLLOWING_statement_IN_if_statement_651 = Set[ 6, 13, 14, 20, 28 ]
    TOKENS_FOLLOWING_CLOSE_IN_if_statement_658 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_statement_676 = Set[ 4, 5, 12, 13, 16, 21, 30, 34, 38, 41 ]
    TOKENS_FOLLOWING_expression_IN_while_statement_680 = Set[ 6, 18 ]
    TOKENS_FOLLOWING_CLOSE_IN_while_statement_688 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_while_statement_692 = Set[ 6, 13, 14, 20, 28 ]
    TOKENS_FOLLOWING_statement_IN_while_statement_697 = Set[ 6, 13, 14, 20, 28 ]
    TOKENS_FOLLOWING_CLOSE_IN_while_statement_704 = Set[ 1 ]
    TOKENS_FOLLOWING_RETURN_IN_return_statement_722 = Set[ 4, 5, 12, 13, 16, 21, 30, 34, 38, 41 ]
    TOKENS_FOLLOWING_expression_IN_return_statement_726 = Set[ 1 ]
    TOKENS_FOLLOWING_function_call_statement_IN_variable_assignment_statement_747 = Set[ 37, 39, 42, 45, 49 ]
    TOKENS_FOLLOWING_assignment_type_IN_variable_assignment_statement_751 = Set[ 4, 5, 12, 13, 16, 21, 30, 34, 38, 41 ]
    TOKENS_FOLLOWING_expression_IN_variable_assignment_statement_755 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_assignment_type_775 = Set[ 1 ]
    TOKENS_FOLLOWING_IDENT_IN_function_call_statement_813 = Set[ 34, 43, 46 ]
    TOKENS_FOLLOWING_function_arguments_IN_function_call_statement_817 = Set[ 43, 46 ]
    TOKENS_FOLLOWING_function_call_statement_float_IN_function_call_statement_822 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_function_call_statement_float_846 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_function_call_statement_float_856 = Set[ 34, 43, 46 ]
    TOKENS_FOLLOWING_function_arguments_IN_function_call_statement_float_860 = Set[ 43, 46 ]
    TOKENS_FOLLOWING_function_call_statement_float_IN_function_call_statement_float_865 = Set[ 1 ]
    TOKENS_FOLLOWING_T__34_IN_function_arguments_895 = Set[ 4, 5, 12, 13, 16, 21, 30, 34, 35, 38, 41 ]
    TOKENS_FOLLOWING_expression_IN_function_arguments_903 = Set[ 35, 40 ]
    TOKENS_FOLLOWING_T__40_IN_function_arguments_909 = Set[ 4, 5, 12, 13, 16, 21, 30, 34, 38, 41 ]
    TOKENS_FOLLOWING_expression_IN_function_arguments_913 = Set[ 35, 40 ]
    TOKENS_FOLLOWING_T__35_IN_function_arguments_923 = Set[ 1 ]
    TOKENS_FOLLOWING_COMPONENT_IN_component_936 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_component_938 = Set[ 6, 18 ]
    TOKENS_FOLLOWING_CLOSE_IN_component_944 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_component_948 = Set[ 6, 13, 15, 19, 23, 24, 25, 26, 27, 41 ]
    TOKENS_FOLLOWING_class_body_IN_component_950 = Set[ 6, 13, 15, 19, 23, 24, 25, 26, 27, 41 ]
    TOKENS_FOLLOWING_CLOSE_IN_component_953 = Set[ 1 ]
    TOKENS_FOLLOWING_SYSTEM_IN_system_968 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_system_970 = Set[ 6, 18 ]
    TOKENS_FOLLOWING_CLOSE_IN_system_976 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_system_980 = Set[ 6, 13, 15, 19, 23, 24, 25, 26, 27, 41 ]
    TOKENS_FOLLOWING_class_body_IN_system_982 = Set[ 6, 13, 15, 19, 23, 24, 25, 26, 27, 41 ]
    TOKENS_FOLLOWING_CLOSE_IN_system_985 = Set[ 1 ]
    TOKENS_FOLLOWING_ENUM_IN_enum_1000 = Set[ 13 ]
    TOKENS_FOLLOWING_IDENT_IN_enum_1002 = Set[ 6, 18 ]
    TOKENS_FOLLOWING_CLOSE_IN_enum_1008 = Set[ 1 ]
    TOKENS_FOLLOWING_NL_IN_enum_1012 = Set[ 6, 13, 15, 19, 23, 24, 25, 26, 27, 41 ]
    TOKENS_FOLLOWING_class_body_IN_enum_1014 = Set[ 6, 13, 15, 19, 23, 24, 25, 26, 27, 41 ]
    TOKENS_FOLLOWING_CLOSE_IN_enum_1017 = Set[ 1 ]
    TOKENS_FOLLOWING_INTEGER_IN_literal_1037 = Set[ 1 ]
    TOKENS_FOLLOWING_FLOAT_IN_literal_1047 = Set[ 1 ]
    TOKENS_FOLLOWING_BOOLEAN_IN_literal_1059 = Set[ 1 ]
    TOKENS_FOLLOWING_STRING_IN_literal_1069 = Set[ 1 ]
    TOKENS_FOLLOWING_CHAR_IN_literal_1080 = Set[ 1 ]
    TOKENS_FOLLOWING_literal_IN_term_1103 = Set[ 1 ]
    TOKENS_FOLLOWING_function_call_statement_IN_term_1113 = Set[ 1 ]
    TOKENS_FOLLOWING_T__34_IN_term_1121 = Set[ 4, 5, 12, 13, 16, 21, 30, 34, 38, 41 ]
    TOKENS_FOLLOWING_expression_IN_term_1125 = Set[ 35 ]
    TOKENS_FOLLOWING_T__35_IN_term_1127 = Set[ 1 ]
    TOKENS_FOLLOWING_T__30_IN_negation_1145 = Set[ 4, 5, 12, 13, 16, 21, 30, 34 ]
    TOKENS_FOLLOWING_negation_IN_negation_1149 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_negation_1159 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_unary_1179 = Set[ 4, 5, 12, 13, 16, 21, 30, 34, 38, 41 ]
    TOKENS_FOLLOWING_unary_IN_unary_1189 = Set[ 1 ]
    TOKENS_FOLLOWING_negation_IN_unary_1199 = Set[ 1 ]
    TOKENS_FOLLOWING_unary_IN_mult_1219 = Set[ 1, 32, 36, 44, 53 ]
    TOKENS_FOLLOWING_set_IN_mult_1229 = Set[ 4, 5, 12, 13, 16, 21, 30, 34, 38, 41 ]
    TOKENS_FOLLOWING_mult_IN_mult_1247 = Set[ 1 ]
    TOKENS_FOLLOWING_mult_IN_add_1271 = Set[ 1, 38, 41 ]
    TOKENS_FOLLOWING_set_IN_add_1282 = Set[ 4, 5, 12, 13, 16, 21, 30, 34, 38, 41 ]
    TOKENS_FOLLOWING_add_IN_add_1292 = Set[ 1 ]
    TOKENS_FOLLOWING_add_IN_relation_1322 = Set[ 1, 31, 47, 48, 50, 51, 52 ]
    TOKENS_FOLLOWING_set_IN_relation_1333 = Set[ 4, 5, 12, 13, 16, 21, 30, 34, 38, 41 ]
    TOKENS_FOLLOWING_relation_IN_relation_1359 = Set[ 1 ]
    TOKENS_FOLLOWING_relation_IN_expression_1389 = Set[ 1, 33, 54 ]
    TOKENS_FOLLOWING_set_IN_expression_1400 = Set[ 4, 5, 12, 13, 16, 21, 30, 34, 38, 41 ]
    TOKENS_FOLLOWING_expression_IN_expression_1410 = Set[ 1 ]
    TOKENS_FOLLOWING_function_call_statement_IN_synpred1_Entity_591 = Set[ 37, 39, 42, 45, 49 ]
    TOKENS_FOLLOWING_assignment_type_IN_synpred1_Entity_593 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
