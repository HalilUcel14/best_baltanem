class FileConstants {
  static FileConstants? _instance;

  static FileConstants? get instance {
    _instance ??= FileConstants._init();
    return _instance;
  }

  FileConstants._init();
}
