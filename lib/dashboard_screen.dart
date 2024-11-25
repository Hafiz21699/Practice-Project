// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(217, 31, 109, 1),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              maxRadius: 13,
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            ),
          ),
          title: Text(
            'easypaisa',
            style: TextStyle(
                color: Colors.white.withOpacity(1),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: <Widget>[
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.notifications_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        backgroundColor: Colors.grey.shade300,
        body: Column(
          children: <Widget>[
            Divider(
              color: Colors.grey.shade700,
              thickness: 2,
              height: 0,
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(217, 31, 109, 1),
              ),
              child: Center(
                child: Container(
                  height: 180,
                  width: 370,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            )
          ],
        ));
  }
}
