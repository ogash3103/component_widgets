import 'package:flutter/material.dart';

class SnackBarPractice extends StatelessWidget {
  const SnackBarPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SnackBar')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://i.pravatar.cc/300",
                        ),
                      ),

                      title: Text(
                        "Text Title",
                        style: TextStyle(color: Colors.white),
                      ),

                      subtitle: Text(
                        "enter description text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    elevation: 2,
                    backgroundColor: Colors.black54,
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    action: SnackBarAction(
                      textColor: Colors.green,
                      label: "Button",
                      onPressed: () {
                        ScaffoldMessenger.of(context).removeCurrentSnackBar();
                      },
                    ),
                  ),
                );
              },
              child: Text("show snack_bar - 1"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: ListTile(
                      title: Text(
                        "Text Title",
                        style: TextStyle(color: Colors.white),
                      ),

                      subtitle: Text(
                        "enter description text",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: IconButton(onPressed: () {
                        ScaffoldMessenger.of(context).removeCurrentSnackBar();
                      }, icon: Icon(Icons.arrow_forward_ios), color: Colors.white,),
                    ),
                    dismissDirection: DismissDirection.horizontal,
                    elevation: 2,
                    backgroundColor: Colors.black54,
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                );
              },
              child: Text("show snack_bar - 2"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: ListTile(
                      leading: Icon(Icons.error_outline, size: 32, color: Colors.white,),

                      title: Text(
                        "Text Title",
                        style: TextStyle(color: Colors.white),
                      ),

                      subtitle: Text(
                        "enter description text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    elevation: 2,
                    backgroundColor: Colors.black54,
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    dismissDirection: DismissDirection.vertical,
                  ),
                );
              },
              child: Text("show snack_bar - 3"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: ListTile(
                      leading: Image.network(
                          "https://i.pravatar.cc/300",
                        ),


                      title: Text(
                        "Text Title",
                        style: TextStyle(color: Colors.white),
                      ),

                      subtitle: Text(
                        "enter description text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    elevation: 2,
                    backgroundColor: Colors.black54,
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    dismissDirection: DismissDirection.down,
                  ),
                );
              },
              child: Text("show snack_bar - 4"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: ListTile(

                      title: Text(
                        "Text Title",
                        style: TextStyle(color: Colors.white),
                      ),

                      subtitle: Text(
                        "enter description text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    elevation: 2,
                    backgroundColor: Colors.black54,
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    dismissDirection: DismissDirection.horizontal,
                  ),
                );
              },
              child: Text("show snack_bar - 5"),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
