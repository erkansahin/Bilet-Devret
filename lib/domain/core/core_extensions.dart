extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }

  bool isNumeric() {
    if (this == null) {
      return false;
    }
    return double.parse(this) != null;
  }

  String truncateTo(int maxLenght) =>
      (length <= maxLenght) ? this : '${substring(0, maxLenght)}...';
}
