class IZIValidate {
  ///
  /// Check nullOrEmpty
  ///
  static bool nullOrEmpty(dynamic value) {
    if (value == null ||
        value.toString().isEmpty ||
        value.toString() == 'null' ||
        value.toString() == '{}' ||
        (value is List && value.isEmpty == true)) return true;
    return false;
  }
}
