enum Flavor {
  dev,
  staging,
  prod,
}

class FlavorConfig {
  static Flavor? flavor;
  static String get name => flavor?.name ?? '';
}
