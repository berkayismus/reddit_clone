import 'package:flutter/material.dart';

enum MessageType { warning, error }

class MessageWidget extends StatelessWidget {
  const MessageWidget(
      {super.key, this.type = MessageType.error, required this.message});

  final MessageType type;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}
