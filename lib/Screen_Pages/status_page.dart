

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:grid/data.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: (){},
        child: Icon(Icons.camera_alt),
      ),
      body: Container(
        padding: EdgeInsets.all(8.8),
        child: Stack(
          children: [
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 ListTile(
                   leading: CircleAvatar(
                     backgroundImage: NetworkImage('https://4.bp.blogspot.com/-TrIhTqIzmGk/Up3uVg4BkaI/AAAAAAAABDw/uKIjtMTLPp8/s1600/boys-profile-pictures-5.jpg'),
                   ),
                   title: Text("My status",
                     style: TextStyle(
                         fontWeight: FontWeight.bold),
                   ),
                   subtitle: Text("Tap to add status update"),
                 ),
                 Divider(),
                 Container(
                   padding: EdgeInsets.only(top: 5,left: 5),
                   height: 28,
                   color: Colors.blueGrey,
                   width:double.infinity,
                   child: Text("Viewed updates",
                   textAlign: TextAlign.left,
                     style: TextStyle(
                     ),
                   ),
                 ),
                 ListView.separated(
                   scrollDirection: Axis.vertical,
                   shrinkWrap: true,
                   itemCount: status.length,
                    separatorBuilder: (BuildContext context, int index) {
                    return Divider(height: 1,
                    thickness: 1,
                      color: Colors.grey,
                    );
                 }, itemBuilder: (BuildContext context, int index) {
                   return ListTile(
                     leading: CircleAvatar(
                       radius: 25,
                       backgroundImage: NetworkImage(status[index].imageUrl),
                     ),
                     title: Text(status[index].name,
                       style: TextStyle(
                           fontWeight: FontWeight.bold),
                     ),
                     subtitle: Text(status[index].time),
                   );
                 },
                 )
               ],
             ),
            Positioned(
              left: 40,
                top: 43,

                child:CircleAvatar(
                radius: 10,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.add,
                    size: 22,
                  ),
                ),
            ),
          ],
        )
      ),
    );
  }
}
