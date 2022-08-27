/*
Strategy - defines a family of algorithms, encapsulates each one, and makes them 
interchangeable. Strategy lets the algorithm 
vary independently from clients that use it.
*/

abstract class Duck {
  // dynamic (almost generic) return Type for these abstract methods.
  fly();
  quack();
  swim();
  display();
}

/* Each duck subtype is responsible for implementing its own display()
behavior for how it looks on the screen. */


/* Drawbacks:
    1- Harder to edit, remove, and add features.
    (e.g. By putting fly() in the superclass, you gave the flying ability to ALL ducks 
    -you have to implement this ability in all subclasses- including those that shouldn’t fly.)
    2- Sometimes it is not logical. 
    (e.g. RubberDuck cannot quack and fly but it still have to implement these methods)
    3- A lot of code rewriting instead reusing.
    (e.g. MallardDuck and RedHeadDuck have the same implement for swim and fly methods, 
    hence you need to copy and past this implementation)
    4- Runtime behavior changes are difficult.
*/