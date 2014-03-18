# Entity

Entity is a programming language specifically designed with game development and the entity-component-system design pattern in mind.

This is still very much a work in progress, I am currently still in the process of getting the initial language constructs fleshed out.

## Compiling

### Unix-like

**Dependancies:**
- ruby
- rake
- antlr4ruby
- gcc

$ rake mac:antlr:generate
$ ruby lib\entity
$ rake mac:compiler:run

### Windows

**Dependancies:**
- ruby
- rake
- antlr4ruby
- [Nuwen MinGW distro](http://nuwen.net/mingw.html)

$ rake windows:antlr:generate
$ ruby lib\entity
$ rake windows:compilr:run

## Language Spec (WIP)

*It is suggested, although not required, that all entity source files use the file extension .e*
Each file may contain as many class definitions as the creator sees fit, the compiler does not care.

### Referencing other source files {Unimplemented}

To make use of class definitions from other source files, you reference them by using:

	!require "<path>"

For example:

    !require "path/to/file.e"


### Class Definitions {In Progress}

There are 3 main types of "classes" in Entity, based directly off of the entity-component-system design pattern:
- component classes : Defines the data and methods for one aspect of an entity.
- entity classes : The general purpose class which will generally contain implementations of different components.
- system classes : Specify a set of components, and continually processes all active entities that implement them.

It is not the goal of this document to educate you on the full idea of this design pattern, if you wish to learn more
check out [the wiki artical](http://en.wikipedia.org/wiki/Entity_component_system).

#### Component Classes {Unimplemented}

    component <name>
      <instance variable and method declarations>
    end

For example:

    component Physical
      Vector2 position, velocity

      def void position_update()
        position += velocity
      end
    end

### Entity Classes {In Progress}

    entity <name>
      <component references>
      <instance variable and method definitions>
    end

For example:

    entity Player
      - Physical
      - Visible
      - UserControlled

      def void do_something()
        ...
      end
    end

### System Classes {Unimplemented}

    << Spec undecided >>

## Instance Variable Declaration {DONE}

    <type> <name> (',' <name>)*

For example:

    Vector2 position, velocity

## Constructors {In Progress}

    init(<params>)
      <statements>
    end

For example:

    init(float x, float y)
      this.x = x
      this.y = y
    end

Because constructors of the form seen above are so common, a shortcut notation is provided:

    init(float @x, float @y)
    end

**This document is also a work in progress**