enum Flavor {
  free,
  paid,
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.free:
        return 'Story App Submission Free';
      case Flavor.paid:
        return 'Story App Submission Paid';
    }
  }

}
