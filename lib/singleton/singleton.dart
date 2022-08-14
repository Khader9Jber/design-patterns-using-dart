class Singleton {
  static Singleton? instance;
  // Private constructor to prevent instantiation from outside the class.
  Singleton._();
  static Singleton getInstance() {
    instance ??= Singleton._();
    return instance!;
  }
}
