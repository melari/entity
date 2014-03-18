#!/usr/bin/env ruby
#
# lib/Entity.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: lib/Entity.g
# Generated at: 2014-03-17 10:23:07
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

  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Entity
    include TokenData

    begin
      generated_using( "lib/Entity.g", "3.5", "1.10.0" )
    rescue NoMethodError => error
      # ignore
    end

    RULE_NAMES   = [ "T__30", "T__31", "T__32", "T__33", "T__34", "T__35", 
                     "T__36", "T__37", "T__38", "T__39", "T__40", "T__41", 
                     "T__42", "T__43", "T__44", "T__45", "T__46", "T__47", 
                     "T__48", "T__49", "T__50", "T__51", "T__52", "T__53", 
                     "T__54", "INTEGER", "FLOAT", "BOOLEAN", "STRING", "CHAR", 
                     "INIT", "OPEN", "CLOSE", "TYPE_INT", "TYPE_FLOAT", 
                     "TYPE_STRING", "TYPE_BOOL", "TYPE_VOID", "ENTITY", 
                     "COMPONENT", "SYSTEM", "ENUM", "IF", "ELSE", "RETURN", 
                     "WHILE", "IDENT", "WS", "COMMENT", "MULTILINE_COMMENT", 
                     "NL" ].freeze
    RULE_METHODS = [ :t__30!, :t__31!, :t__32!, :t__33!, :t__34!, :t__35!, 
                     :t__36!, :t__37!, :t__38!, :t__39!, :t__40!, :t__41!, 
                     :t__42!, :t__43!, :t__44!, :t__45!, :t__46!, :t__47!, 
                     :t__48!, :t__49!, :t__50!, :t__51!, :t__52!, :t__53!, 
                     :t__54!, :integer!, :float!, :boolean!, :string!, :char!, 
                     :init!, :open!, :close!, :type_int!, :type_float!, 
                     :type_string!, :type_bool!, :type_void!, :entity!, 
                     :component!, :system!, :enum!, :if!, :else!, :return!, 
                     :while!, :ident!, :ws!, :comment!, :multiline_comment!, 
                     :nl! ].freeze

    def initialize( input=nil, options = {} )
      super( input, options )
    end


    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule t__30! (T__30)
    # (in lib/Entity.g)
    def t__30!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )



      type = T__30
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

    # lexer rule t__31! (T__31)
    # (in lib/Entity.g)
    def t__31!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )



      type = T__31
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 8:9: '!='
      match( "!=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 2 )


    end

    # lexer rule t__32! (T__32)
    # (in lib/Entity.g)
    def t__32!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )



      type = T__32
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 9:9: '%'
      match( 0x25 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 3 )


    end

    # lexer rule t__33! (T__33)
    # (in lib/Entity.g)
    def t__33!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )



      type = T__33
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 10:9: '&&'
      match( "&&" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 4 )


    end

    # lexer rule t__34! (T__34)
    # (in lib/Entity.g)
    def t__34!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )



      type = T__34
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 11:9: '('
      match( 0x28 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 5 )


    end

    # lexer rule t__35! (T__35)
    # (in lib/Entity.g)
    def t__35!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )



      type = T__35
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 12:9: ')'
      match( 0x29 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 6 )


    end

    # lexer rule t__36! (T__36)
    # (in lib/Entity.g)
    def t__36!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )



      type = T__36
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 13:9: '*'
      match( 0x2a )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 7 )


    end

    # lexer rule t__37! (T__37)
    # (in lib/Entity.g)
    def t__37!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )



      type = T__37
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 14:9: '*='
      match( "*=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 8 )


    end

    # lexer rule t__38! (T__38)
    # (in lib/Entity.g)
    def t__38!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )



      type = T__38
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 15:9: '+'
      match( 0x2b )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 9 )


    end

    # lexer rule t__39! (T__39)
    # (in lib/Entity.g)
    def t__39!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )



      type = T__39
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 16:9: '+='
      match( "+=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 10 )


    end

    # lexer rule t__40! (T__40)
    # (in lib/Entity.g)
    def t__40!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )



      type = T__40
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 17:9: ','
      match( 0x2c )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 11 )


    end

    # lexer rule t__41! (T__41)
    # (in lib/Entity.g)
    def t__41!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )



      type = T__41
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 18:9: '-'
      match( 0x2d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 12 )


    end

    # lexer rule t__42! (T__42)
    # (in lib/Entity.g)
    def t__42!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )



      type = T__42
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 19:9: '-='
      match( "-=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 13 )


    end

    # lexer rule t__43! (T__43)
    # (in lib/Entity.g)
    def t__43!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )



      type = T__43
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 20:9: '.'
      match( 0x2e )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 14 )


    end

    # lexer rule t__44! (T__44)
    # (in lib/Entity.g)
    def t__44!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )



      type = T__44
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 21:9: '/'
      match( 0x2f )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 15 )


    end

    # lexer rule t__45! (T__45)
    # (in lib/Entity.g)
    def t__45!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )



      type = T__45
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 22:9: '/='
      match( "/=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 16 )


    end

    # lexer rule t__46! (T__46)
    # (in lib/Entity.g)
    def t__46!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )



      type = T__46
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 23:9: '::'
      match( "::" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 17 )


    end

    # lexer rule t__47! (T__47)
    # (in lib/Entity.g)
    def t__47!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )



      type = T__47
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 24:9: '<'
      match( 0x3c )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 18 )


    end

    # lexer rule t__48! (T__48)
    # (in lib/Entity.g)
    def t__48!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )



      type = T__48
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 25:9: '<='
      match( "<=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 19 )


    end

    # lexer rule t__49! (T__49)
    # (in lib/Entity.g)
    def t__49!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )



      type = T__49
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 26:9: '='
      match( 0x3d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 20 )


    end

    # lexer rule t__50! (T__50)
    # (in lib/Entity.g)
    def t__50!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )



      type = T__50
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 27:9: '=='
      match( "==" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 21 )


    end

    # lexer rule t__51! (T__51)
    # (in lib/Entity.g)
    def t__51!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )



      type = T__51
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 28:9: '>'
      match( 0x3e )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 22 )


    end

    # lexer rule t__52! (T__52)
    # (in lib/Entity.g)
    def t__52!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )



      type = T__52
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 29:9: '>='
      match( ">=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 23 )


    end

    # lexer rule t__53! (T__53)
    # (in lib/Entity.g)
    def t__53!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )



      type = T__53
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 30:9: '^'
      match( 0x5e )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 24 )


    end

    # lexer rule t__54! (T__54)
    # (in lib/Entity.g)
    def t__54!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )



      type = T__54
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 31:9: '||'
      match( "||" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 25 )


    end

    # lexer rule integer! (INTEGER)
    # (in lib/Entity.g)
    def integer!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )



      type = INTEGER
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 191:10: ( '0' .. '9' )+
      # at file 191:10: ( '0' .. '9' )+
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
      # trace_out( __method__, 26 )


    end

    # lexer rule float! (FLOAT)
    # (in lib/Entity.g)
    def float!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )



      type = FLOAT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 192:8: INTEGER '.' INTEGER
      integer!

      match( 0x2e )

      integer!



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 27 )


    end

    # lexer rule boolean! (BOOLEAN)
    # (in lib/Entity.g)
    def boolean!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )



      type = BOOLEAN
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 193:8: ( 'true' | 'false' )
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
        # at line 193:10: 'true'
        match( "true" )


      when 2
        # at line 193:19: 'false'
        match( "false" )


      end

      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 28 )


    end

    # lexer rule string! (STRING)
    # (in lib/Entity.g)
    def string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )



      type = STRING
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 195:5: '\"' ( '\\\\' '\"' |~ ( '\"' | '\\r' | '\\n' ) )* '\"'
      match( 0x22 )
      # at line 196:5: ( '\\\\' '\"' |~ ( '\"' | '\\r' | '\\n' ) )*
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
          # at line 196:7: '\\\\' '\"'
          match( 0x5c )
          match( 0x22 )

        when 2
          # at line 197:7: ~ ( '\"' | '\\r' | '\\n' )
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
      # trace_out( __method__, 29 )


    end

    # lexer rule char! (CHAR)
    # (in lib/Entity.g)
    def char!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )



      type = CHAR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 203:5: '\\'' . '\\''
      match( 0x27 )
      match_any
      match( 0x27 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 30 )


    end

    # lexer rule init! (INIT)
    # (in lib/Entity.g)
    def init!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )



      type = INIT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 206:7: 'init'
      match( "init" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 31 )


    end

    # lexer rule open! (OPEN)
    # (in lib/Entity.g)
    def open!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )



      type = OPEN
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 207:7: 'def'
      match( "def" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 32 )


    end

    # lexer rule close! (CLOSE)
    # (in lib/Entity.g)
    def close!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )



      type = CLOSE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 208:8: 'end'
      match( "end" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 33 )


    end

    # lexer rule type_int! (TYPE_INT)
    # (in lib/Entity.g)
    def type_int!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )



      type = TYPE_INT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 210:11: 'int'
      match( "int" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 34 )


    end

    # lexer rule type_float! (TYPE_FLOAT)
    # (in lib/Entity.g)
    def type_float!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )



      type = TYPE_FLOAT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 211:13: 'float'
      match( "float" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 35 )


    end

    # lexer rule type_string! (TYPE_STRING)
    # (in lib/Entity.g)
    def type_string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )



      type = TYPE_STRING
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 212:14: 'string'
      match( "string" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 36 )


    end

    # lexer rule type_bool! (TYPE_BOOL)
    # (in lib/Entity.g)
    def type_bool!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )



      type = TYPE_BOOL
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 213:12: 'bool'
      match( "bool" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 37 )


    end

    # lexer rule type_void! (TYPE_VOID)
    # (in lib/Entity.g)
    def type_void!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )



      type = TYPE_VOID
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 214:12: 'void'
      match( "void" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 38 )


    end

    # lexer rule entity! (ENTITY)
    # (in lib/Entity.g)
    def entity!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )



      type = ENTITY
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 216:9: 'entity'
      match( "entity" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 39 )


    end

    # lexer rule component! (COMPONENT)
    # (in lib/Entity.g)
    def component!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 40 )



      type = COMPONENT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 217:12: 'component'
      match( "component" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 40 )


    end

    # lexer rule system! (SYSTEM)
    # (in lib/Entity.g)
    def system!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 41 )



      type = SYSTEM
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 218:9: 'system'
      match( "system" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 41 )


    end

    # lexer rule enum! (ENUM)
    # (in lib/Entity.g)
    def enum!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 42 )



      type = ENUM
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 219:7: 'enum'
      match( "enum" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 42 )


    end

    # lexer rule if! (IF)
    # (in lib/Entity.g)
    def if!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 43 )



      type = IF
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 221:5: 'if'
      match( "if" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 43 )


    end

    # lexer rule else! (ELSE)
    # (in lib/Entity.g)
    def else!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 44 )



      type = ELSE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 222:7: 'else'
      match( "else" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 44 )


    end

    # lexer rule return! (RETURN)
    # (in lib/Entity.g)
    def return!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 45 )



      type = RETURN
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 223:9: 'return'
      match( "return" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 45 )


    end

    # lexer rule while! (WHILE)
    # (in lib/Entity.g)
    def while!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 46 )



      type = WHILE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 224:8: 'while'
      match( "while" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 46 )


    end

    # lexer rule ident! (IDENT)
    # (in lib/Entity.g)
    def ident!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 47 )



      type = IDENT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 226:8: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
      if @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end


      # at line 226:40: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
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
      # trace_out( __method__, 47 )


    end

    # lexer rule ws! (WS)
    # (in lib/Entity.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 48 )



      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 227:5: ( ' ' | '\\t' )+
      # at file 227:5: ( ' ' | '\\t' )+
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
      # trace_out( __method__, 48 )


    end

    # lexer rule comment! (COMMENT)
    # (in lib/Entity.g)
    def comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 49 )



      type = COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 228:11: '//' ( . )* ( '\\n' | '\\r' )
      match( "//" )

      # at line 228:16: ( . )*
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
          # at line 228:16: .
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
      # trace_out( __method__, 49 )


    end

    # lexer rule multiline_comment! (MULTILINE_COMMENT)
    # (in lib/Entity.g)
    def multiline_comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 50 )



      type = MULTILINE_COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 229:21: '/*' ( . )* '*/'
      match( "/*" )

      # at line 229:26: ( . )*
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
          # at line 229:26: .
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
      # trace_out( __method__, 50 )


    end

    # lexer rule nl! (NL)
    # (in lib/Entity.g)
    def nl!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 51 )



      type = NL
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 230:5: ( '\\n' )+
      # at file 230:5: ( '\\n' )+
      match_count_8 = 0
      while true
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0 == 0xa )
          alt_8 = 1

        end
        case alt_8
        when 1
          # at line 230:5: '\\n'
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
      # trace_out( __method__, 51 )


    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    #
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | INTEGER | FLOAT | BOOLEAN | STRING | CHAR | INIT | OPEN | CLOSE | TYPE_INT | TYPE_FLOAT | TYPE_STRING | TYPE_BOOL | TYPE_VOID | ENTITY | COMPONENT | SYSTEM | ENUM | IF | ELSE | RETURN | WHILE | IDENT | WS | COMMENT | MULTILINE_COMMENT | NL )
      alt_9 = 51
      alt_9 = @dfa9.predict( @input )
      case alt_9
      when 1
        # at line 1:10: T__30
        t__30!


      when 2
        # at line 1:16: T__31
        t__31!


      when 3
        # at line 1:22: T__32
        t__32!


      when 4
        # at line 1:28: T__33
        t__33!


      when 5
        # at line 1:34: T__34
        t__34!


      when 6
        # at line 1:40: T__35
        t__35!


      when 7
        # at line 1:46: T__36
        t__36!


      when 8
        # at line 1:52: T__37
        t__37!


      when 9
        # at line 1:58: T__38
        t__38!


      when 10
        # at line 1:64: T__39
        t__39!


      when 11
        # at line 1:70: T__40
        t__40!


      when 12
        # at line 1:76: T__41
        t__41!


      when 13
        # at line 1:82: T__42
        t__42!


      when 14
        # at line 1:88: T__43
        t__43!


      when 15
        # at line 1:94: T__44
        t__44!


      when 16
        # at line 1:100: T__45
        t__45!


      when 17
        # at line 1:106: T__46
        t__46!


      when 18
        # at line 1:112: T__47
        t__47!


      when 19
        # at line 1:118: T__48
        t__48!


      when 20
        # at line 1:124: T__49
        t__49!


      when 21
        # at line 1:130: T__50
        t__50!


      when 22
        # at line 1:136: T__51
        t__51!


      when 23
        # at line 1:142: T__52
        t__52!


      when 24
        # at line 1:148: T__53
        t__53!


      when 25
        # at line 1:154: T__54
        t__54!


      when 26
        # at line 1:160: INTEGER
        integer!


      when 27
        # at line 1:168: FLOAT
        float!


      when 28
        # at line 1:174: BOOLEAN
        boolean!


      when 29
        # at line 1:182: STRING
        string!


      when 30
        # at line 1:189: CHAR
        char!


      when 31
        # at line 1:194: INIT
        init!


      when 32
        # at line 1:199: OPEN
        open!


      when 33
        # at line 1:204: CLOSE
        close!


      when 34
        # at line 1:210: TYPE_INT
        type_int!


      when 35
        # at line 1:219: TYPE_FLOAT
        type_float!


      when 36
        # at line 1:230: TYPE_STRING
        type_string!


      when 37
        # at line 1:242: TYPE_BOOL
        type_bool!


      when 38
        # at line 1:252: TYPE_VOID
        type_void!


      when 39
        # at line 1:262: ENTITY
        entity!


      when 40
        # at line 1:269: COMPONENT
        component!


      when 41
        # at line 1:279: SYSTEM
        system!


      when 42
        # at line 1:286: ENUM
        enum!


      when 43
        # at line 1:291: IF
        if!


      when 44
        # at line 1:294: ELSE
        else!


      when 45
        # at line 1:299: RETURN
        return!


      when 46
        # at line 1:306: WHILE
        while!


      when 47
        # at line 1:312: IDENT
        ident!


      when 48
        # at line 1:318: WS
        ws!


      when 49
        # at line 1:321: COMMENT
        comment!


      when 50
        # at line 1:329: MULTILINE_COMMENT
        multiline_comment!


      when 51
        # at line 1:347: NL
        nl!


      end
    end


    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA9 < ANTLR3::DFA
      EOT = unpack( 1, -1, 1, 36, 4, -1, 1, 38, 1, 40, 1, -1, 1, 42, 1, 
                    -1, 1, 46, 1, -1, 1, 48, 1, 50, 1, 52, 2, -1, 1, 53, 
                    2, 32, 2, -1, 9, 32, 23, -1, 4, 32, 1, 75, 14, 32, 1, 
                    92, 1, -1, 1, 93, 1, 94, 10, 32, 1, 105, 2, 32, 1, 108, 
                    3, -1, 1, 32, 1, 110, 1, 111, 2, 32, 1, 114, 1, 115, 
                    3, 32, 1, -1, 1, 105, 1, 119, 1, -1, 1, 32, 2, -1, 2, 
                    32, 2, -1, 2, 32, 1, 125, 1, -1, 1, 126, 1, 127, 1, 
                    128, 1, 32, 1, 130, 4, -1, 1, 32, 1, -1, 1, 32, 1, 133, 
                    1, -1 )
      EOF = unpack( 134, -1 )
      MIN = unpack( 1, 9, 1, 61, 4, -1, 2, 61, 1, -1, 1, 61, 1, -1, 1, 42, 
                    1, -1, 3, 61, 2, -1, 1, 46, 1, 114, 1, 97, 2, -1, 1, 
                    102, 1, 101, 1, 108, 1, 116, 3, 111, 1, 101, 1, 104, 
                    23, -1, 1, 117, 1, 108, 1, 111, 1, 105, 1, 48, 1, 102, 
                    1, 100, 1, 115, 1, 114, 1, 115, 1, 111, 1, 105, 1, 109, 
                    1, 116, 1, 105, 1, 101, 1, 115, 1, 97, 1, 116, 1, 48, 
                    1, -1, 2, 48, 1, 105, 1, 109, 1, 101, 1, 105, 1, 116, 
                    1, 108, 1, 100, 1, 112, 1, 117, 1, 108, 1, 48, 1, 101, 
                    1, 116, 1, 48, 3, -1, 1, 116, 2, 48, 1, 110, 1, 101, 
                    2, 48, 1, 111, 1, 114, 1, 101, 1, -1, 2, 48, 1, -1, 
                    1, 121, 2, -1, 1, 103, 1, 109, 2, -1, 2, 110, 1, 48, 
                    1, -1, 3, 48, 1, 101, 1, 48, 4, -1, 1, 110, 1, -1, 1, 
                    116, 1, 48, 1, -1 )
      MAX = unpack( 1, 124, 1, 61, 4, -1, 2, 61, 1, -1, 1, 61, 1, -1, 1, 
                    61, 1, -1, 3, 61, 2, -1, 1, 57, 1, 114, 1, 108, 2, -1, 
                    1, 110, 1, 101, 1, 110, 1, 121, 3, 111, 1, 101, 1, 104, 
                    23, -1, 1, 117, 1, 108, 1, 111, 1, 116, 1, 122, 1, 102, 
                    1, 117, 1, 115, 1, 114, 1, 115, 1, 111, 1, 105, 1, 109, 
                    1, 116, 1, 105, 1, 101, 1, 115, 1, 97, 1, 116, 1, 122, 
                    1, -1, 2, 122, 1, 105, 1, 109, 1, 101, 1, 105, 1, 116, 
                    1, 108, 1, 100, 1, 112, 1, 117, 1, 108, 1, 122, 1, 101, 
                    1, 116, 1, 122, 3, -1, 1, 116, 2, 122, 1, 110, 1, 101, 
                    2, 122, 1, 111, 1, 114, 1, 101, 1, -1, 2, 122, 1, -1, 
                    1, 121, 2, -1, 1, 103, 1, 109, 2, -1, 2, 110, 1, 122, 
                    1, -1, 3, 122, 1, 101, 1, 122, 4, -1, 1, 110, 1, -1, 
                    1, 116, 1, 122, 1, -1 )
      ACCEPT = unpack( 2, -1, 1, 3, 1, 4, 1, 5, 1, 6, 2, -1, 1, 11, 1, -1, 
                       1, 14, 1, -1, 1, 17, 3, -1, 1, 24, 1, 25, 3, -1, 
                       1, 29, 1, 30, 9, -1, 1, 47, 1, 48, 1, 51, 1, 2, 1, 
                       1, 1, 8, 1, 7, 1, 10, 1, 9, 1, 13, 1, 12, 1, 16, 
                       1, 49, 1, 50, 1, 15, 1, 19, 1, 18, 1, 21, 1, 20, 
                       1, 23, 1, 22, 1, 26, 1, 27, 20, -1, 1, 43, 16, -1, 
                       1, 34, 1, 32, 1, 33, 10, -1, 1, 28, 2, -1, 1, 31, 
                       1, -1, 1, 42, 1, 44, 2, -1, 1, 37, 1, 38, 3, -1, 
                       1, 35, 5, -1, 1, 46, 1, 39, 1, 36, 1, 41, 1, -1, 
                       1, 45, 2, -1, 1, 40 )
      SPECIAL = unpack( 134, -1 )
      TRANSITION = [
        unpack( 1, 33, 1, 34, 21, -1, 1, 33, 1, 1, 1, 21, 2, -1, 1, 2, 1, 
                3, 1, 22, 1, 4, 1, 5, 1, 6, 1, 7, 1, 8, 1, 9, 1, 10, 1, 
                11, 10, 18, 1, 12, 1, -1, 1, 13, 1, 14, 1, 15, 2, -1, 26, 
                32, 3, -1, 1, 16, 1, 32, 1, -1, 1, 32, 1, 27, 1, 29, 1, 
                24, 1, 25, 1, 20, 2, 32, 1, 23, 8, 32, 1, 30, 1, 26, 1, 
                19, 1, 32, 1, 28, 1, 31, 3, 32, 1, -1, 1, 17 ),
        unpack( 1, 35 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 37 ),
        unpack( 1, 39 ),
        unpack(  ),
        unpack( 1, 41 ),
        unpack(  ),
        unpack( 1, 45, 4, -1, 1, 44, 13, -1, 1, 43 ),
        unpack(  ),
        unpack( 1, 47 ),
        unpack( 1, 49 ),
        unpack( 1, 51 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 54, 1, -1, 10, 18 ),
        unpack( 1, 55 ),
        unpack( 1, 56, 10, -1, 1, 57 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 59, 7, -1, 1, 58 ),
        unpack( 1, 60 ),
        unpack( 1, 62, 1, -1, 1, 61 ),
        unpack( 1, 63, 4, -1, 1, 64 ),
        unpack( 1, 65 ),
        unpack( 1, 66 ),
        unpack( 1, 67 ),
        unpack( 1, 68 ),
        unpack( 1, 69 ),
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
        unpack( 1, 70 ),
        unpack( 1, 71 ),
        unpack( 1, 72 ),
        unpack( 1, 73, 10, -1, 1, 74 ),
        unpack( 10, 32, 7, -1, 26, 32, 4, -1, 1, 32, 1, -1, 26, 32 ),
        unpack( 1, 76 ),
        unpack( 1, 77, 15, -1, 1, 78, 1, 79 ),
        unpack( 1, 80 ),
        unpack( 1, 81 ),
        unpack( 1, 82 ),
        unpack( 1, 83 ),
        unpack( 1, 84 ),
        unpack( 1, 85 ),
        unpack( 1, 86 ),
        unpack( 1, 87 ),
        unpack( 1, 88 ),
        unpack( 1, 89 ),
        unpack( 1, 90 ),
        unpack( 1, 91 ),
        unpack( 10, 32, 7, -1, 26, 32, 4, -1, 1, 32, 1, -1, 26, 32 ),
        unpack(  ),
        unpack( 10, 32, 7, -1, 26, 32, 4, -1, 1, 32, 1, -1, 26, 32 ),
        unpack( 10, 32, 7, -1, 26, 32, 4, -1, 1, 32, 1, -1, 26, 32 ),
        unpack( 1, 95 ),
        unpack( 1, 96 ),
        unpack( 1, 97 ),
        unpack( 1, 98 ),
        unpack( 1, 99 ),
        unpack( 1, 100 ),
        unpack( 1, 101 ),
        unpack( 1, 102 ),
        unpack( 1, 103 ),
        unpack( 1, 104 ),
        unpack( 10, 32, 7, -1, 26, 32, 4, -1, 1, 32, 1, -1, 26, 32 ),
        unpack( 1, 106 ),
        unpack( 1, 107 ),
        unpack( 10, 32, 7, -1, 26, 32, 4, -1, 1, 32, 1, -1, 26, 32 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 109 ),
        unpack( 10, 32, 7, -1, 26, 32, 4, -1, 1, 32, 1, -1, 26, 32 ),
        unpack( 10, 32, 7, -1, 26, 32, 4, -1, 1, 32, 1, -1, 26, 32 ),
        unpack( 1, 112 ),
        unpack( 1, 113 ),
        unpack( 10, 32, 7, -1, 26, 32, 4, -1, 1, 32, 1, -1, 26, 32 ),
        unpack( 10, 32, 7, -1, 26, 32, 4, -1, 1, 32, 1, -1, 26, 32 ),
        unpack( 1, 116 ),
        unpack( 1, 117 ),
        unpack( 1, 118 ),
        unpack(  ),
        unpack( 10, 32, 7, -1, 26, 32, 4, -1, 1, 32, 1, -1, 26, 32 ),
        unpack( 10, 32, 7, -1, 26, 32, 4, -1, 1, 32, 1, -1, 26, 32 ),
        unpack(  ),
        unpack( 1, 120 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 121 ),
        unpack( 1, 122 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 123 ),
        unpack( 1, 124 ),
        unpack( 10, 32, 7, -1, 26, 32, 4, -1, 1, 32, 1, -1, 26, 32 ),
        unpack(  ),
        unpack( 10, 32, 7, -1, 26, 32, 4, -1, 1, 32, 1, -1, 26, 32 ),
        unpack( 10, 32, 7, -1, 26, 32, 4, -1, 1, 32, 1, -1, 26, 32 ),
        unpack( 10, 32, 7, -1, 26, 32, 4, -1, 1, 32, 1, -1, 26, 32 ),
        unpack( 1, 129 ),
        unpack( 10, 32, 7, -1, 26, 32, 4, -1, 1, 32, 1, -1, 26, 32 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 131 ),
        unpack(  ),
        unpack( 1, 132 ),
        unpack( 10, 32, 7, -1, 26, 32, 4, -1, 1, 32, 1, -1, 26, 32 ),
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
          1:1: Tokens : ( T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | INTEGER | FLOAT | BOOLEAN | STRING | CHAR | INIT | OPEN | CLOSE | TYPE_INT | TYPE_FLOAT | TYPE_STRING | TYPE_BOOL | TYPE_VOID | ENTITY | COMPONENT | SYSTEM | ENUM | IF | ELSE | RETURN | WHILE | IDENT | WS | COMMENT | MULTILINE_COMMENT | NL );
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
