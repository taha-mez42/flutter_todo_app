import 'package:flutter/material.dart';
import 'package:learning/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController _controller; // give it a proper type
  final VoidCallback onSave; // for Save button
  final VoidCallback onCancel; // for Cancel button

  // ✅ Correct constructor syntax
  const DialogBox({
    super.key,
    required TextEditingController controller,
    required this.onSave,
    required this.onCancel,
  }) : _controller = controller;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFF3E5F44),
      content: SizedBox(
        height: 130,
        child: Column(
          children: [
            // get the user input
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task',
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                // save button
                MyButton(text: "save", onPressed: onSave),
                const SizedBox(width: 10),
                MyButton(text: "cancel", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
