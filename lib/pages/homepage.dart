import 'package:flutter/material.dart';

class Homepage extends StatelessWidget
{
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {

    const String name = 'Lalit';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
      ),
        body: Material(
          child: Center(
            child: Container(
              child: const Text('Hello $name'),
            ),
          ),
        ),
      drawer: const Drawer(),
    );
  }
}