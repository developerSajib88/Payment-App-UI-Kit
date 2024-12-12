class GlobalFunctions {

  static String formatNumber(String number) {
    String formatted = number.replaceAllMapped(RegExp(r".{1,4}"), (match) => "${match.group(0)} ");
    return formatted.trim();
  }

}