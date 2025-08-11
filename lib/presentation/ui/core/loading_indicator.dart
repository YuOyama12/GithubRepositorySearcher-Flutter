import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    super.key,
    required this.isLoading,
  });

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return (!isLoading)
      ? SizedBox.shrink()
      : SizedBox.expand(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}