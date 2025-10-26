import 'package:flutter/material.dart';
import 'package:github_repository_searcher/presentation/const/strings.dart';

class BaseDialog extends StatelessWidget {
  const BaseDialog({
    super.key,
    required this.title,
    this.message,
    this.positiveButtonText,
    this.onPositiveButtonTap,
    this.negativeButtonText,
    this.onNegativeButtonTap,
  });

  final String title;
  final String? message;
  final String? positiveButtonText;
  final VoidCallback? onPositiveButtonTap;
  final String? negativeButtonText;
  final VoidCallback? onNegativeButtonTap;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      content: (message != null)
          ? Text(message ?? '', style: const TextStyle(fontSize: 16))
          : null,
      actions: [
        TextButton(
          onPressed: onPositiveButtonTap ?? () => Navigator.pop(context),
          child: Text(positiveButtonText ?? StringConsts.ok),
        ),
        if (negativeButtonText != null) ...[
          TextButton(
            onPressed: onNegativeButtonTap ?? () => Navigator.pop(context),
            child: Text(negativeButtonText ?? StringConsts.cancel),
          ),
        ],
      ],
    );
  }
}
