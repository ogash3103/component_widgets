import 'package:flutter/material.dart';

class Dialog1 extends StatelessWidget {
  const Dialog1({super.key});

  void showDialogFunny(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.green,
          child: SizedBox(
            height: 270,
            width: 350,
            child: Column(
              children: [
                SizedBox(height: 14),
                Icon(Icons.mood, size: 130, color: Colors.white),
                SizedBox(height: 7.5),
                Text(
                  "YES!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 7.5),
                Text(
                  "Everything is woking..",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  void showDialogSad(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.red,
          child: SizedBox(
            height: 270,
            width: 350,
            child: Column(
              children: [
                SizedBox(height: 14),
                Icon(Icons.mood_bad, size: 130, color: Colors.white),
                SizedBox(height: 7.5),
                Text(
                  "UH-SNAP!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 7.5),
                Text(
                  "Something just broke..",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'GO BACK',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialog 1")),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => showDialogFunny(context),
              child: Text('Happy Dialog'),
            ),
            SizedBox(width: 10,),
            ElevatedButton(
              onPressed: () => showDialogSad(context),
              child: Text('SAD Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
