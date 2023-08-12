import 'package:flutter/material.dart';

import 'package:weather_bloc/nodata.dart';
import 'package:weather_bloc/search.dart';

class failur extends StatelessWidget {
  const failur({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          elevation: 50,
          backgroundColor: Colors.blue,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Search(),
                    ));
              },
              icon: const Icon(Icons.search, size: 30),
            )
          ],
          title: const Text(
            " Weather ",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )),

      body: nodata(),
    );
  }
}
