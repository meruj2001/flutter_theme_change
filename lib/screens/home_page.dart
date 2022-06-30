import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/preference");
            },
            icon: const Icon(Icons.settings),
          )
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: const Center(
        child: Text(
          "Home",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
