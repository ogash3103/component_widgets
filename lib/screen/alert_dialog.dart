import 'package:flutter/material.dart';

class AlertDialogPractice extends StatelessWidget {
  const AlertDialogPractice({super.key});

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,

      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.grey.shade100,

          title: Row(
            children: const [
              Icon(Icons.image, size: 28),

              SizedBox(width: 12),

              Text(
                "Pick Image",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ],
          ),

          content: Column(
            mainAxisSize: MainAxisSize.min,

            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt_outlined),

                title: const Text("Camera"),

                onTap: () {
                  Navigator.pop(context);

                  debugPrint("Camera selected");
                },
              ),

              ListTile(
                leading: const Icon(Icons.browse_gallery_outlined),

                title: const Text("Gallery"),

                onTap: () {
                  Navigator.pop(context);

                  debugPrint("Gallery selected");
                },
              ),
            ],
          ),

          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },

              child: const Text("Cancel"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Alert Dialog")),

      body: Center(
        child: ElevatedButton(
          onPressed: () => showAlertDialog(context),

          child: const Text('Show Dialog'),
        ),
      ),
    );
  }
}
