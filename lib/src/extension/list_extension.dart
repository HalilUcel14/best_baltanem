extension ListExtension on List? {
  bool get isNullorEmpty => !isNotNullorEmpty;

  bool get isNotNullorEmpty {
    if (this is List) {
      return this!.isNotEmpty;
    } else {
      return false;
    }
  }
}
