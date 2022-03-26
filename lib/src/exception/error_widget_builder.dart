import 'package:flutter/material.dart';

/// void main() {
///  ErrorWidget.builder = (FlutterErrorDetails details) {
///    return ErrorMaterialWidget(
///      details: details,
///    );
///  };
///  runApp(const MyApp());
/// }
class ErrorMaterialWidget extends StatelessWidget {
  //
  final FlutterErrorDetails details;
  //
  const ErrorMaterialWidget({
    required this.details,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              details.exception.toString(),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
