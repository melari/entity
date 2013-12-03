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

  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Entity
    include TokenData

    begin
      generated_using( "lib/Entity.g", "3.5", "1.10.0" )
    rescue NoMethodError => error
      # ignore
    end

    RULE_NAMES   = [ "DIGIT", "TRUE", "FALSE", "OPEN", "CLOSE", "ENTITY", 
                     "COMPONENT", "SYSTEM", "ENUM", "IF", "ELSE", "MINUS", 
                     "IDENT", "WS", "NL" ].freeze
    RULE_METHODS = [ :digit!, :true!, :false!, :open!, :close!, :entity!, 
                     :component!, :system!, :enum!, :if!, :else!, :minus!, 
                     :ident!, :ws!, :nl! ].freeze

    def initialize( input=nil, options = {} )
      super( input, options )
    end


    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule digit! (DIGIT)
    # (in lib/Entity.g)
    def digit!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )



      type = DIGIT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 
      if @input.peek( 1 ).between?( 0x30, 0x39 )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end




      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 1 )


    end

    # lexer rule true! (TRUE)
    # (in lib/Entity.g)
    def true!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )



      type = TRUE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 69:7: 'true'
      match( "true" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 2 )


    end

    # lexer rule false! (FALSE)
    # (in lib/Entity.g)
    def false!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )



      type = FALSE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 70:8: 'false'
      match( "false" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 3 )


    end

    # lexer rule open! (OPEN)
    # (in lib/Entity.g)
    def open!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )



      type = OPEN
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 72:7: 'def'
      match( "def" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 4 )


    end

    # lexer rule close! (CLOSE)
    # (in lib/Entity.g)
    def close!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )



      type = CLOSE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 73:8: 'end'
      match( "end" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 5 )


    end

    # lexer rule entity! (ENTITY)
    # (in lib/Entity.g)
    def entity!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )



      type = ENTITY
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 75:9: 'entity'
      match( "entity" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 6 )


    end

    # lexer rule component! (COMPONENT)
    # (in lib/Entity.g)
    def component!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )



      type = COMPONENT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 76:12: 'component'
      match( "component" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 7 )


    end

    # lexer rule system! (SYSTEM)
    # (in lib/Entity.g)
    def system!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )



      type = SYSTEM
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 77:9: 'system'
      match( "system" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 8 )


    end

    # lexer rule enum! (ENUM)
    # (in lib/Entity.g)
    def enum!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )



      type = ENUM
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 78:7: 'enum'
      match( "enum" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 9 )


    end

    # lexer rule if! (IF)
    # (in lib/Entity.g)
    def if!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )



      type = IF
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 80:5: 'if'
      match( "if" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 10 )


    end

    # lexer rule else! (ELSE)
    # (in lib/Entity.g)
    def else!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )



      type = ELSE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 81:7: 'else'
      match( "else" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 11 )


    end

    # lexer rule minus! (MINUS)
    # (in lib/Entity.g)
    def minus!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )



      type = MINUS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 83:8: '-'
      match( 0x2d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 12 )


    end

    # lexer rule ident! (IDENT)
    # (in lib/Entity.g)
    def ident!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )



      type = IDENT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 85:8: ( 'a' .. 'z' | 'A' .. 'Z' ) ( 'a' .. 'z' | 'A' .. 'Z' | DIGIT | '_' )*
      if @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek( 1 ).between?( 0x61, 0x7a )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end


      # at line 85:34: ( 'a' .. 'z' | 'A' .. 'Z' | DIGIT | '_' )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0.between?( 0x30, 0x39 ) || look_1_0.between?( 0x41, 0x5a ) || look_1_0 == 0x5f || look_1_0.between?( 0x61, 0x7a ) )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          break # out of loop for decision 1
        end
      end # loop for decision 1



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 13 )


    end

    # lexer rule ws! (WS)
    # (in lib/Entity.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )



      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 86:5: ( ' ' | '\\t' )+
      # at file 86:5: ( ' ' | '\\t' )+
      match_count_2 = 0
      while true
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0 == 0x9 || look_2_0 == 0x20 )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 
          if @input.peek(1) == 0x9 || @input.peek(1) == 0x20
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          match_count_2 > 0 and break
          eee = EarlyExit(2)


          raise eee
        end
        match_count_2 += 1
      end



      # --> action
      channel = HIDDEN
      # <-- action



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 14 )


    end

    # lexer rule nl! (NL)
    # (in lib/Entity.g)
    def nl!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )



      type = NL
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 87:5: ( '\\n' )+
      # at file 87:5: ( '\\n' )+
      match_count_3 = 0
      while true
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0 == 0xa )
          alt_3 = 1

        end
        case alt_3
        when 1
          # at line 87:5: '\\n'
          match( 0xa )

        else
          match_count_3 > 0 and break
          eee = EarlyExit(3)


          raise eee
        end
        match_count_3 += 1
      end




      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 15 )


    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    #
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( DIGIT | TRUE | FALSE | OPEN | CLOSE | ENTITY | COMPONENT | SYSTEM | ENUM | IF | ELSE | MINUS | IDENT | WS | NL )
      alt_4 = 15
      case look_4 = @input.peek( 1 )
      when 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39 then alt_4 = 1
      when 0x74 then look_4_2 = @input.peek( 2 )

      if ( look_4_2 == 0x72 )
        look_4_13 = @input.peek( 3 )

        if ( look_4_13 == 0x75 )
          look_4_21 = @input.peek( 4 )

          if ( look_4_21 == 0x65 )
            look_4_31 = @input.peek( 5 )

            if ( look_4_31.between?( 0x30, 0x39 ) || look_4_31.between?( 0x41, 0x5a ) || look_4_31 == 0x5f || look_4_31.between?( 0x61, 0x7a ) )
              alt_4 = 13
            else
              alt_4 = 2

            end
          else
            alt_4 = 13

          end
        else
          alt_4 = 13

        end
      else
        alt_4 = 13

      end
      when 0x66 then look_4_3 = @input.peek( 2 )

      if ( look_4_3 == 0x61 )
        look_4_14 = @input.peek( 3 )

        if ( look_4_14 == 0x6c )
          look_4_22 = @input.peek( 4 )

          if ( look_4_22 == 0x73 )
            look_4_32 = @input.peek( 5 )

            if ( look_4_32 == 0x65 )
              look_4_41 = @input.peek( 6 )

              if ( look_4_41.between?( 0x30, 0x39 ) || look_4_41.between?( 0x41, 0x5a ) || look_4_41 == 0x5f || look_4_41.between?( 0x61, 0x7a ) )
                alt_4 = 13
              else
                alt_4 = 3

              end
            else
              alt_4 = 13

            end
          else
            alt_4 = 13

          end
        else
          alt_4 = 13

        end
      else
        alt_4 = 13

      end
      when 0x64 then look_4_4 = @input.peek( 2 )

      if ( look_4_4 == 0x65 )
        look_4_15 = @input.peek( 3 )

        if ( look_4_15 == 0x66 )
          look_4_23 = @input.peek( 4 )

          if ( look_4_23.between?( 0x30, 0x39 ) || look_4_23.between?( 0x41, 0x5a ) || look_4_23 == 0x5f || look_4_23.between?( 0x61, 0x7a ) )
            alt_4 = 13
          else
            alt_4 = 4

          end
        else
          alt_4 = 13

        end
      else
        alt_4 = 13

      end
      when 0x65 then case look_4 = @input.peek( 2 )
      when 0x6e then case look_4 = @input.peek( 3 )
      when 0x64 then look_4_24 = @input.peek( 4 )

      if ( look_4_24.between?( 0x30, 0x39 ) || look_4_24.between?( 0x41, 0x5a ) || look_4_24 == 0x5f || look_4_24.between?( 0x61, 0x7a ) )
        alt_4 = 13
      else
        alt_4 = 5

      end
      when 0x74 then look_4_25 = @input.peek( 4 )

      if ( look_4_25 == 0x69 )
        look_4_35 = @input.peek( 5 )

        if ( look_4_35 == 0x74 )
          look_4_42 = @input.peek( 6 )

          if ( look_4_42 == 0x79 )
            look_4_48 = @input.peek( 7 )

            if ( look_4_48.between?( 0x30, 0x39 ) || look_4_48.between?( 0x41, 0x5a ) || look_4_48 == 0x5f || look_4_48.between?( 0x61, 0x7a ) )
              alt_4 = 13
            else
              alt_4 = 6

            end
          else
            alt_4 = 13

          end
        else
          alt_4 = 13

        end
      else
        alt_4 = 13

      end
      when 0x75 then look_4_26 = @input.peek( 4 )

      if ( look_4_26 == 0x6d )
        look_4_36 = @input.peek( 5 )

        if ( look_4_36.between?( 0x30, 0x39 ) || look_4_36.between?( 0x41, 0x5a ) || look_4_36 == 0x5f || look_4_36.between?( 0x61, 0x7a ) )
          alt_4 = 13
        else
          alt_4 = 9

        end
      else
        alt_4 = 13

      end
      else
        alt_4 = 13

      end
      when 0x6c then look_4_17 = @input.peek( 3 )

      if ( look_4_17 == 0x73 )
        look_4_27 = @input.peek( 4 )

        if ( look_4_27 == 0x65 )
          look_4_37 = @input.peek( 5 )

          if ( look_4_37.between?( 0x30, 0x39 ) || look_4_37.between?( 0x41, 0x5a ) || look_4_37 == 0x5f || look_4_37.between?( 0x61, 0x7a ) )
            alt_4 = 13
          else
            alt_4 = 11

          end
        else
          alt_4 = 13

        end
      else
        alt_4 = 13

      end
      else
        alt_4 = 13

      end
      when 0x63 then look_4_6 = @input.peek( 2 )

      if ( look_4_6 == 0x6f )
        look_4_18 = @input.peek( 3 )

        if ( look_4_18 == 0x6d )
          look_4_28 = @input.peek( 4 )

          if ( look_4_28 == 0x70 )
            look_4_38 = @input.peek( 5 )

            if ( look_4_38 == 0x6f )
              look_4_45 = @input.peek( 6 )

              if ( look_4_45 == 0x6e )
                look_4_49 = @input.peek( 7 )

                if ( look_4_49 == 0x65 )
                  look_4_52 = @input.peek( 8 )

                  if ( look_4_52 == 0x6e )
                    look_4_54 = @input.peek( 9 )

                    if ( look_4_54 == 0x74 )
                      look_4_55 = @input.peek( 10 )

                      if ( look_4_55.between?( 0x30, 0x39 ) || look_4_55.between?( 0x41, 0x5a ) || look_4_55 == 0x5f || look_4_55.between?( 0x61, 0x7a ) )
                        alt_4 = 13
                      else
                        alt_4 = 7

                      end
                    else
                      alt_4 = 13

                    end
                  else
                    alt_4 = 13

                  end
                else
                  alt_4 = 13

                end
              else
                alt_4 = 13

              end
            else
              alt_4 = 13

            end
          else
            alt_4 = 13

          end
        else
          alt_4 = 13

        end
      else
        alt_4 = 13

      end
      when 0x73 then look_4_7 = @input.peek( 2 )

      if ( look_4_7 == 0x79 )
        look_4_19 = @input.peek( 3 )

        if ( look_4_19 == 0x73 )
          look_4_29 = @input.peek( 4 )

          if ( look_4_29 == 0x74 )
            look_4_39 = @input.peek( 5 )

            if ( look_4_39 == 0x65 )
              look_4_46 = @input.peek( 6 )

              if ( look_4_46 == 0x6d )
                look_4_50 = @input.peek( 7 )

                if ( look_4_50.between?( 0x30, 0x39 ) || look_4_50.between?( 0x41, 0x5a ) || look_4_50 == 0x5f || look_4_50.between?( 0x61, 0x7a ) )
                  alt_4 = 13
                else
                  alt_4 = 8

                end
              else
                alt_4 = 13

              end
            else
              alt_4 = 13

            end
          else
            alt_4 = 13

          end
        else
          alt_4 = 13

        end
      else
        alt_4 = 13

      end
      when 0x69 then look_4_8 = @input.peek( 2 )

      if ( look_4_8 == 0x66 )
        look_4_20 = @input.peek( 3 )

        if ( look_4_20.between?( 0x30, 0x39 ) || look_4_20.between?( 0x41, 0x5a ) || look_4_20 == 0x5f || look_4_20.between?( 0x61, 0x7a ) )
          alt_4 = 13
        else
          alt_4 = 10

        end
      else
        alt_4 = 13

      end
      when 0x2d then alt_4 = 12
      when 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x67, 0x68, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a then alt_4 = 13
      when 0x9, 0x20 then alt_4 = 14
      when 0xa then alt_4 = 15
      else
        raise NoViableAlternative( "", 4, 0 )

      end
      case alt_4
      when 1
        # at line 1:10: DIGIT
        digit!


      when 2
        # at line 1:16: TRUE
        true!


      when 3
        # at line 1:21: FALSE
        false!


      when 4
        # at line 1:27: OPEN
        open!


      when 5
        # at line 1:32: CLOSE
        close!


      when 6
        # at line 1:38: ENTITY
        entity!


      when 7
        # at line 1:45: COMPONENT
        component!


      when 8
        # at line 1:55: SYSTEM
        system!


      when 9
        # at line 1:62: ENUM
        enum!


      when 10
        # at line 1:67: IF
        if!


      when 11
        # at line 1:70: ELSE
        else!


      when 12
        # at line 1:75: MINUS
        minus!


      when 13
        # at line 1:81: IDENT
        ident!


      when 14
        # at line 1:87: WS
        ws!


      when 15
        # at line 1:90: NL
        nl!


      end
    end

  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0

end
