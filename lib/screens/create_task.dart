import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateTaskScreen extends StatefulWidget {
  @override
  _CreateTaskScreenState createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  bool _remindMe = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.grey[800],
        ),
        // title: Text('Add more task'),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Text(
              'Create new task',
              style: TextStyle(
                  fontSize: 50,
                  height: 1.2,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey[800]),
            ),
            Spacer(),
            TextField(
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[800]),
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey[100]),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey[100])),
                  hintText: 'Task Name',
                  hintStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[400])),
            ),
            Spacer(),
            Container(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(255, 240, 240, 1)),
                    padding: const EdgeInsets.all(16),
                    child: Icon(
                      Icons.calendar_today,
                      color: Colors.redAccent,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(255, 250, 240, 1)),
                    child: Icon(
                      Icons.alarm,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Text(
                    "1:00 - 3:00 PM",
                    style: TextStyle(
                        fontSize: 18,
                        height: 1.2,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[700]),
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey[100]),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(255, 250, 240, 1)),
                    padding: const EdgeInsets.all(16),
                    child: Icon(
                      Icons.web_asset,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Text(
                    'Work',
                    style: TextStyle(
                        fontSize: 18,
                        height: 1.2,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[700]),
                  ),
                  Spacer(),
                  IconButton(
                      icon: Icon(Icons.arrow_forward_ios), onPressed: () {})
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey[100]),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(240, 235, 255, 1)),
                    padding: const EdgeInsets.all(16),
                    child: Icon(
                      Icons.alarm_on,
                      color: Colors.purpleAccent,
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Text(
                    "Remind me",
                    style: TextStyle(
                        fontSize: 18,
                        height: 1.2,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[700]),
                  ),
                  Spacer(),
                  Switch(
                    value: _remindMe,
                    onChanged: (value) {
                      setState(() {
                        _remindMe = value;
                      });
                    },
                    activeColor: Colors.lightBlueAccent,
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.symmetric(vertical: 16),
                color: Colors.black,
                child: Text(
                  'Create Task',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: Colors.white),
                ),
                onPressed: () {
                  print('create task clicked');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
