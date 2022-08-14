/*
We use this pattern when we are sure that we do not need to make more than one instance of a specific class.
This happened when all possible objects from a specific class do not differ from each other.
e.g. When we need to manage global access for shared resource/instance.
such as Logging, Connection, or File Managing instances. 
*/

class Singleton {
  static Singleton? _instance; // private field
  // Private constructor to prevent instantiation from outside the class.
  Singleton._();

  // Getter function that responsible for getting a single in every call.
  static Singleton get instance {
    /*
    Check if the singleton instance is null, if yes => put a new instance inside it
    This will happen only on the first call for this method but after that...
    it will only return the same instance that was created previously in the first call.
    */
    _instance ??= Singleton._();
    return _instance!; // I am sure this field is not null, because I check this before.
  }
}

/*
Now to be able to create (or access this singleton instance), We have to do this:
Singleton.getInstance(); 
This will return only the same single instance each time for calling
*/
