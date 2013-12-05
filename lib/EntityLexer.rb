#!/usr/bin/env ruby
#
# lib/Entity.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: lib/Entity.g
# Generated at: 2013-12-05 08:52:09
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

  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Entity
    include TokenData

    begin
      generated_using( "lib/Entity.g", "3.5", "1.10.0" )
    rescue NoMethodError => error
      # ignore
    end

    RULE_NAMES   = [ "T__23", "T__24", "T__25", "T__26", "T__27", "T__28", 
                     "T__29", "T__30", "T__31", "T__32", "T__33", "T__34", 
                     "T__35", "T__36", "T__37", "T__38", "T__39", "T__40", 
                     "T__41", "INTEGER", "FLOAT", "BOOLEAN", "STRING", "CHAR", 
                     "OPEN", "CLOSE", "ENTITY", "COMPONENT", "SYSTEM", "ENUM", 
                     "IF", "ELSE", "RETURN", "IDENT", "WS", "COMMENT", "MULTILINE_COMMENT", 
                     "NL" ].freeze
    RULE_METHODS = [ :t__23!, :t__24!, :t__25!, :t__26!, :t__27!, :t__28!, 
                     :t__29!, :t__30!, :t__31!, :t__32!, :t__33!, :t__34!, 
                     :t__35!, :t__36!, :t__37!, :t__38!, :t__39!, :t__40!, 
                     :t__41!, :integer!, :float!, :boolean!, :string!, :char!, 
                     :open!, :close!, :entity!, :component!, :system!, :enum!, 
                     :if!, :else!, :return!, :ident!, :ws!, :comment!, :multiline_comment!, 
                     :nl! ].freeze

    def initialize( input=nil, options = {} )
      super( input, options )
    end


    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule t__23! (T__23)
    # (in lib/Entity.g)
    def t__23!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )



      type = T__23
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 7:9: '!'
      match( 0x21 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 1 )


    end

    # lexer rule t__24! (T__24)
    # (in lib/Entity.g)
    def t__24!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )



      type = T__24
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 8:9: '%'
      match( 0x25 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 2 )


    end

    # lexer rule t__25! (T__25)
    # (in lib/Entity.g)
    def t__25!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )



      type = T__25
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 9:9: '&&'
      match( "&&" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 3 )


    end

    # lexer rule t__26! (T__26)
    # (in lib/Entity.g)
    def t__26!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )



      type = T__26
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 10:9: '('
      match( 0x28 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 4 )


    end

    # lexer rule t__27! (T__27)
    # (in lib/Entity.g)
    def t__27!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )



      type = T__27
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 11:9: ')'
      match( 0x29 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 5 )


    end

    # lexer rule t__28! (T__28)
    # (in lib/Entity.g)
    def t__28!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )



      type = T__28
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 12:9: '*'
      match( 0x2a )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 6 )


    end

    # lexer rule t__29! (T__29)
    # (in lib/Entity.g)
    def t__29!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )



      type = T__29
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 13:9: '+'
      match( 0x2b )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 7 )


    end

    # lexer rule t__30! (T__30)
    # (in lib/Entity.g)
    def t__30!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )



      type = T__30
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 14:9: ','
      match( 0x2c )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 8 )


    end

    # lexer rule t__31! (T__31)
    # (in lib/Entity.g)
    def t__31!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )



      type = T__31
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 15:9: '-'
      match( 0x2d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 9 )


    end

    # lexer rule t__32! (T__32)
    # (in lib/Entity.g)
    def t__32!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )



      type = T__32
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 16:9: '.'
      match( 0x2e )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 10 )


    end

    # lexer rule t__33! (T__33)
    # (in lib/Entity.g)
    def t__33!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )



      type = T__33
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 17:9: '/'
      match( 0x2f )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 11 )


    end

    # lexer rule t__34! (T__34)
    # (in lib/Entity.g)
    def t__34!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )



      type = T__34
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 18:9: '/='
      match( "/=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 12 )


    end

    # lexer rule t__35! (T__35)
    # (in lib/Entity.g)
    def t__35!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )



      type = T__35
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 19:9: '::'
      match( "::" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 13 )


    end

    # lexer rule t__36! (T__36)
    # (in lib/Entity.g)
    def t__36!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )



      type = T__36
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 20:9: '<'
      match( 0x3c )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 14 )


    end

    # lexer rule t__37! (T__37)
    # (in lib/Entity.g)
    def t__37!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )



      type = T__37
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 21:9: '<='
      match( "<=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 15 )


    end

    # lexer rule t__38! (T__38)
    # (in lib/Entity.g)
    def t__38!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )



      type = T__38
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 22:9: '='
      match( 0x3d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 16 )


    end

    # lexer rule t__39! (T__39)
    # (in lib/Entity.g)
    def t__39!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )



      type = T__39
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 23:9: '>'
      match( 0x3e )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 17 )


    end

    # lexer rule t__40! (T__40)
    # (in lib/Entity.g)
    def t__40!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )



      type = T__40
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 24:9: '>='
      match( ">=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 18 )


    end

    # lexer rule t__41! (T__41)
    # (in lib/Entity.g)
    def t__41!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )



      type = T__41
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 25:9: '||'
      match( "||" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 19 )


    end

    # lexer rule integer! (INTEGER)
    # (in lib/Entity.g)
    def integer!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )



      type = INTEGER
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 135:10: ( '0' .. '9' )+
      # at file 135:10: ( '0' .. '9' )+
      match_count_1 = 0
      while true
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0.between?( 0x30, 0x39 ) )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x39 )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          match_count_1 > 0 and break
          eee = EarlyExit(1)


          raise eee
        end
        match_count_1 += 1
      end




      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 20 )


    end

    # lexer rule float! (FLOAT)
    # (in lib/Entity.g)
    def float!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )



      type = FLOAT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 136:8: INTEGER '.' INTEGER
      integer!

      match( 0x2e )

      integer!



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 21 )


    end

    # lexer rule boolean! (BOOLEAN)
    # (in lib/Entity.g)
    def boolean!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )



      type = BOOLEAN
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 137:8: ( 'true' | 'false' )
      alt_2 = 2
      look_2_0 = @input.peek( 1 )

      if ( look_2_0 == 0x74 )
        alt_2 = 1
      elsif ( look_2_0 == 0x66 )
        alt_2 = 2
      else
        raise NoViableAlternative( "", 2, 0 )

      end
      case alt_2
      when 1
        # at line 137:10: 'true'
        match( "true" )


      when 2
        # at line 137:19: 'false'
        match( "false" )


      end

      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 22 )


    end

    # lexer rule string! (STRING)
    # (in lib/Entity.g)
    def string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )



      type = STRING
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 139:5: '\"' ( '\\\\' '\"' |~ ( '\"' | '\\r' | '\\n' ) )* '\"'
      match( 0x22 )
      # at line 140:5: ( '\\\\' '\"' |~ ( '\"' | '\\r' | '\\n' ) )*
      while true # decision 3
        alt_3 = 3
        look_3_0 = @input.peek( 1 )

        if ( look_3_0 == 0x5c )
          look_3_2 = @input.peek( 2 )

          if ( look_3_2 == 0x22 )
            look_3_4 = @input.peek( 3 )

            if ( look_3_4.between?( 0x0, 0x9 ) || look_3_4.between?( 0xb, 0xc ) || look_3_4.between?( 0xe, 0xffff ) )
              alt_3 = 1

            else
              alt_3 = 2

            end
          elsif ( look_3_2.between?( 0x0, 0x9 ) || look_3_2.between?( 0xb, 0xc ) || look_3_2.between?( 0xe, 0x21 ) || look_3_2.between?( 0x23, 0xffff ) )
            alt_3 = 2

          end
        elsif ( look_3_0.between?( 0x0, 0x9 ) || look_3_0.between?( 0xb, 0xc ) || look_3_0.between?( 0xe, 0x21 ) || look_3_0.between?( 0x23, 0x5b ) || look_3_0.between?( 0x5d, 0xffff ) )
          alt_3 = 2

        end
        case alt_3
        when 1
          # at line 140:7: '\\\\' '\"'
          match( 0x5c )
          match( 0x22 )

        when 2
          # at line 141:7: ~ ( '\"' | '\\r' | '\\n' )
          if @input.peek( 1 ).between?( 0x0, 0x9 ) || @input.peek( 1 ).between?( 0xb, 0xc ) || @input.peek( 1 ).between?( 0xe, 0x21 ) || @input.peek( 1 ).between?( 0x23, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          break # out of loop for decision 3
        end
      end # loop for decision 3

      match( 0x22 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 23 )


    end

    # lexer rule char! (CHAR)
    # (in lib/Entity.g)
    def char!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )



      type = CHAR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 147:5: '\\'' . '\\''
      match( 0x27 )
      match_any
      match( 0x27 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 24 )


    end

    # lexer rule open! (OPEN)
    # (in lib/Entity.g)
    def open!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )



      type = OPEN
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 150:7: 'def'
      match( "def" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 25 )


    end

    # lexer rule close! (CLOSE)
    # (in lib/Entity.g)
    def close!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )



      type = CLOSE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 151:8: 'end'
      match( "end" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 26 )


    end

    # lexer rule entity! (ENTITY)
    # (in lib/Entity.g)
    def entity!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )



      type = ENTITY
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 153:9: 'entity'
      match( "entity" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 27 )


    end

    # lexer rule component! (COMPONENT)
    # (in lib/Entity.g)
    def component!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )



      type = COMPONENT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 154:12: 'component'
      match( "component" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 28 )


    end

    # lexer rule system! (SYSTEM)
    # (in lib/Entity.g)
    def system!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )



      type = SYSTEM
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 155:9: 'system'
      match( "system" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 29 )


    end

    # lexer rule enum! (ENUM)
    # (in lib/Entity.g)
    def enum!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )



      type = ENUM
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 156:7: 'enum'
      match( "enum" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 30 )


    end

    # lexer rule if! (IF)
    # (in lib/Entity.g)
    def if!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )



      type = IF
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 158:5: 'if'
      match( "if" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 31 )


    end

    # lexer rule else! (ELSE)
    # (in lib/Entity.g)
    def else!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )



      type = ELSE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 159:7: 'else'
      match( "else" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 32 )


    end

    # lexer rule return! (RETURN)
    # (in lib/Entity.g)
    def return!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )



      type = RETURN
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 160:9: 'return'
      match( "return" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 33 )


    end

    # lexer rule ident! (IDENT)
    # (in lib/Entity.g)
    def ident!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )



      type = IDENT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 162:8: ( 'a' .. 'z' | 'A' .. 'Z' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
      if @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek( 1 ).between?( 0x61, 0x7a )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end


      # at line 162:34: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
      while true # decision 4
        alt_4 = 2
        look_4_0 = @input.peek( 1 )

        if ( look_4_0.between?( 0x30, 0x39 ) || look_4_0.between?( 0x41, 0x5a ) || look_4_0 == 0x5f || look_4_0.between?( 0x61, 0x7a ) )
          alt_4 = 1

        end
        case alt_4
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
          break # out of loop for decision 4
        end
      end # loop for decision 4



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 34 )


    end

    # lexer rule ws! (WS)
    # (in lib/Entity.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )



      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 163:5: ( ' ' | '\\t' )+
      # at file 163:5: ( ' ' | '\\t' )+
      match_count_5 = 0
      while true
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0 == 0x9 || look_5_0 == 0x20 )
          alt_5 = 1

        end
        case alt_5
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
          match_count_5 > 0 and break
          eee = EarlyExit(5)


          raise eee
        end
        match_count_5 += 1
      end



      # --> action
      channel = HIDDEN
      # <-- action



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 35 )


    end

    # lexer rule comment! (COMMENT)
    # (in lib/Entity.g)
    def comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )



      type = COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 164:11: '//' ( . )* ( '\\n' | '\\r' )
      match( "//" )

      # at line 164:16: ( . )*
      while true # decision 6
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0 == 0xa || look_6_0 == 0xd )
          alt_6 = 2
        elsif ( look_6_0.between?( 0x0, 0x9 ) || look_6_0.between?( 0xb, 0xc ) || look_6_0.between?( 0xe, 0xffff ) )
          alt_6 = 1

        end
        case alt_6
        when 1
          # at line 164:16: .
          match_any

        else
          break # out of loop for decision 6
        end
      end # loop for decision 6

      if @input.peek(1) == 0xa || @input.peek(1) == 0xd
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end



      # --> action
      channel = HIDDEN;
      # <-- action



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 36 )


    end

    # lexer rule multiline_comment! (MULTILINE_COMMENT)
    # (in lib/Entity.g)
    def multiline_comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )



      type = MULTILINE_COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 165:21: '/*' ( . )* '*/'
      match( "/*" )

      # at line 165:26: ( . )*
      while true # decision 7
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0 == 0x2a )
          look_7_1 = @input.peek( 2 )

          if ( look_7_1 == 0x2f )
            alt_7 = 2
          elsif ( look_7_1.between?( 0x0, 0x2e ) || look_7_1.between?( 0x30, 0xffff ) )
            alt_7 = 1

          end
        elsif ( look_7_0.between?( 0x0, 0x29 ) || look_7_0.between?( 0x2b, 0xffff ) )
          alt_7 = 1

        end
        case alt_7
        when 1
          # at line 165:26: .
          match_any

        else
          break # out of loop for decision 7
        end
      end # loop for decision 7


      match( "*/" )


      # --> action
      channel = HIDDEN;
      # <-- action



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 37 )


    end

    # lexer rule nl! (NL)
    # (in lib/Entity.g)
    def nl!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )



      type = NL
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 166:5: ( '\\n' )+
      # at file 166:5: ( '\\n' )+
      match_count_8 = 0
      while true
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0 == 0xa )
          alt_8 = 1

        end
        case alt_8
        when 1
          # at line 166:5: '\\n'
          match( 0xa )

        else
          match_count_8 > 0 and break
          eee = EarlyExit(8)


          raise eee
        end
        match_count_8 += 1
      end




      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 38 )


    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    #
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | INTEGER | FLOAT | BOOLEAN | STRING | CHAR | OPEN | CLOSE | ENTITY | COMPONENT | SYSTEM | ENUM | IF | ELSE | RETURN | IDENT | WS | COMMENT | MULTILINE_COMMENT | NL )
      alt_9 = 38
      alt_9 = @dfa9.predict( @input )
      case alt_9
      when 1
        # at line 1:10: T__23
        t__23!


      when 2
        # at line 1:16: T__24
        t__24!


      when 3
        # at line 1:22: T__25
        t__25!


      when 4
        # at line 1:28: T__26
        t__26!


      when 5
        # at line 1:34: T__27
        t__27!


      when 6
        # at line 1:40: T__28
        t__28!


      when 7
        # at line 1:46: T__29
        t__29!


      when 8
        # at line 1:52: T__30
        t__30!


      when 9
        # at line 1:58: T__31
        t__31!


      when 10
        # at line 1:64: T__32
        t__32!


      when 11
        # at line 1:70: T__33
        t__33!


      when 12
        # at line 1:76: T__34
        t__34!


      when 13
        # at line 1:82: T__35
        t__35!


      when 14
        # at line 1:88: T__36
        t__36!


      when 15
        # at line 1:94: T__37
        t__37!


      when 16
        # at line 1:100: T__38
        t__38!


      when 17
        # at line 1:106: T__39
        t__39!


      when 18
        # at line 1:112: T__40
        t__40!


      when 19
        # at line 1:118: T__41
        t__41!


      when 20
        # at line 1:124: INTEGER
        integer!


      when 21
        # at line 1:132: FLOAT
        float!


      when 22
        # at line 1:138: BOOLEAN
        boolean!


      when 23
        # at line 1:146: STRING
        string!


      when 24
        # at line 1:153: CHAR
        char!


      when 25
        # at line 1:158: OPEN
        open!


      when 26
        # at line 1:163: CLOSE
        close!


      when 27
        # at line 1:169: ENTITY
        entity!


      when 28
        # at line 1:176: COMPONENT
        component!


      when 29
        # at line 1:186: SYSTEM
        system!


      when 30
        # at line 1:193: ENUM
        enum!


      when 31
        # at line 1:198: IF
        if!


      when 32
        # at line 1:201: ELSE
        else!


      when 33
        # at line 1:206: RETURN
        return!


      when 34
        # at line 1:213: IDENT
        ident!


      when 35
        # at line 1:219: WS
        ws!


      when 36
        # at line 1:222: COMMENT
        comment!


      when 37
        # at line 1:230: MULTILINE_COMMENT
        multiline_comment!


      when 38
        # at line 1:248: NL
        nl!


      end
    end


    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA9 < ANTLR3::DFA
      EOT = unpack( 11, -1, 1, 34, 1, -1, 1, 36, 1, -1, 1, 38, 1, -1, 1, 
                    39, 2, 28, 2, -1, 6, 28, 13, -1, 7, 28, 1, 59, 3, 28, 
                    1, 63, 1, 64, 5, 28, 1, -1, 1, 28, 1, 71, 1, 28, 2, 
                    -1, 1, 28, 1, 74, 1, 75, 3, 28, 1, -1, 1, 71, 1, 28, 
                    2, -1, 3, 28, 1, 83, 1, 28, 1, 85, 1, 86, 1, -1, 1, 
                    28, 2, -1, 1, 28, 1, 89, 1, -1 )
      EOF = unpack( 90, -1 )
      MIN = unpack( 1, 9, 10, -1, 1, 42, 1, -1, 1, 61, 1, -1, 1, 61, 1, 
                    -1, 1, 46, 1, 114, 1, 97, 2, -1, 1, 101, 1, 108, 1, 
                    111, 1, 121, 1, 102, 1, 101, 13, -1, 1, 117, 1, 108, 
                    1, 102, 1, 100, 1, 115, 1, 109, 1, 115, 1, 48, 1, 116, 
                    1, 101, 1, 115, 2, 48, 1, 105, 1, 109, 1, 101, 1, 112, 
                    1, 116, 1, -1, 1, 117, 1, 48, 1, 101, 2, -1, 1, 116, 
                    2, 48, 1, 111, 1, 101, 1, 114, 1, -1, 1, 48, 1, 121, 
                    2, -1, 1, 110, 1, 109, 1, 110, 1, 48, 1, 101, 2, 48, 
                    1, -1, 1, 110, 2, -1, 1, 116, 1, 48, 1, -1 )
      MAX = unpack( 1, 124, 10, -1, 1, 61, 1, -1, 1, 61, 1, -1, 1, 61, 1, 
                    -1, 1, 57, 1, 114, 1, 97, 2, -1, 1, 101, 1, 110, 1, 
                    111, 1, 121, 1, 102, 1, 101, 13, -1, 1, 117, 1, 108, 
                    1, 102, 1, 117, 1, 115, 1, 109, 1, 115, 1, 122, 1, 116, 
                    1, 101, 1, 115, 2, 122, 1, 105, 1, 109, 1, 101, 1, 112, 
                    1, 116, 1, -1, 1, 117, 1, 122, 1, 101, 2, -1, 1, 116, 
                    2, 122, 1, 111, 1, 101, 1, 114, 1, -1, 1, 122, 1, 121, 
                    2, -1, 1, 110, 1, 109, 1, 110, 1, 122, 1, 101, 2, 122, 
                    1, -1, 1, 110, 2, -1, 1, 116, 1, 122, 1, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 
                       1, 8, 1, 9, 1, 10, 1, -1, 1, 13, 1, -1, 1, 16, 1, 
                       -1, 1, 19, 3, -1, 1, 23, 1, 24, 6, -1, 1, 34, 1, 
                       35, 1, 38, 1, 12, 1, 36, 1, 37, 1, 11, 1, 15, 1, 
                       14, 1, 18, 1, 17, 1, 20, 1, 21, 18, -1, 1, 31, 3, 
                       -1, 1, 25, 1, 26, 6, -1, 1, 22, 2, -1, 1, 30, 1, 
                       32, 7, -1, 1, 27, 1, -1, 1, 29, 1, 33, 2, -1, 1, 
                       28 )
      SPECIAL = unpack( 90, -1 )
      TRANSITION = [
        unpack( 1, 29, 1, 30, 21, -1, 1, 29, 1, 1, 1, 20, 2, -1, 1, 2, 1, 
                3, 1, 21, 1, 4, 1, 5, 1, 6, 1, 7, 1, 8, 1, 9, 1, 10, 1, 
                11, 10, 17, 1, 12, 1, -1, 1, 13, 1, 14, 1, 15, 2, -1, 26, 
                28, 6, -1, 2, 28, 1, 24, 1, 22, 1, 23, 1, 19, 2, 28, 1, 
                26, 8, 28, 1, 27, 1, 25, 1, 18, 6, 28, 1, -1, 1, 16 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 33, 4, -1, 1, 32, 13, -1, 1, 31 ),
        unpack(  ),
        unpack( 1, 35 ),
        unpack(  ),
        unpack( 1, 37 ),
        unpack(  ),
        unpack( 1, 40, 1, -1, 10, 17 ),
        unpack( 1, 41 ),
        unpack( 1, 42 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 43 ),
        unpack( 1, 45, 1, -1, 1, 44 ),
        unpack( 1, 46 ),
        unpack( 1, 47 ),
        unpack( 1, 48 ),
        unpack( 1, 49 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 50 ),
        unpack( 1, 51 ),
        unpack( 1, 52 ),
        unpack( 1, 53, 15, -1, 1, 54, 1, 55 ),
        unpack( 1, 56 ),
        unpack( 1, 57 ),
        unpack( 1, 58 ),
        unpack( 10, 28, 7, -1, 26, 28, 4, -1, 1, 28, 1, -1, 26, 28 ),
        unpack( 1, 60 ),
        unpack( 1, 61 ),
        unpack( 1, 62 ),
        unpack( 10, 28, 7, -1, 26, 28, 4, -1, 1, 28, 1, -1, 26, 28 ),
        unpack( 10, 28, 7, -1, 26, 28, 4, -1, 1, 28, 1, -1, 26, 28 ),
        unpack( 1, 65 ),
        unpack( 1, 66 ),
        unpack( 1, 67 ),
        unpack( 1, 68 ),
        unpack( 1, 69 ),
        unpack(  ),
        unpack( 1, 70 ),
        unpack( 10, 28, 7, -1, 26, 28, 4, -1, 1, 28, 1, -1, 26, 28 ),
        unpack( 1, 72 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 73 ),
        unpack( 10, 28, 7, -1, 26, 28, 4, -1, 1, 28, 1, -1, 26, 28 ),
        unpack( 10, 28, 7, -1, 26, 28, 4, -1, 1, 28, 1, -1, 26, 28 ),
        unpack( 1, 76 ),
        unpack( 1, 77 ),
        unpack( 1, 78 ),
        unpack(  ),
        unpack( 10, 28, 7, -1, 26, 28, 4, -1, 1, 28, 1, -1, 26, 28 ),
        unpack( 1, 79 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 80 ),
        unpack( 1, 81 ),
        unpack( 1, 82 ),
        unpack( 10, 28, 7, -1, 26, 28, 4, -1, 1, 28, 1, -1, 26, 28 ),
        unpack( 1, 84 ),
        unpack( 10, 28, 7, -1, 26, 28, 4, -1, 1, 28, 1, -1, 26, 28 ),
        unpack( 10, 28, 7, -1, 26, 28, 4, -1, 1, 28, 1, -1, 26, 28 ),
        unpack(  ),
        unpack( 1, 87 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 88 ),
        unpack( 10, 28, 7, -1, 26, 28, 4, -1, 1, 28, 1, -1, 26, 28 ),
        unpack(  )
      ].freeze

      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end

      @decision = 9


      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | INTEGER | FLOAT | BOOLEAN | STRING | CHAR | OPEN | CLOSE | ENTITY | COMPONENT | SYSTEM | ENUM | IF | ELSE | RETURN | IDENT | WS | COMMENT | MULTILINE_COMMENT | NL );
        __dfa_description__
      end

    end


    private

    def initialize_dfas
      super rescue nil
      @dfa9 = DFA9.new( self, 9 )


    end

  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0

end
