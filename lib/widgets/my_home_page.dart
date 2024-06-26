import 'package:app1/main.dart';
import 'package:app1/widgets/custom_botton.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage(this.title, {super.key, this.size});

  final String title;
  final double? size;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // backgroundColor: Colors.amber,
        backgroundColor: Colors.amber.shade200,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador, suma, resta hasta 0 y reset',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 30),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       // FloatingActionButton(
            //       //   onPressed: () {
            //       //     setState(() {});
            //       //     _counter++;
            //       //   },
            //       //   child: const Icon(Icons.exposure_plus_1),
            //       // ),
            //       CustomBotton.optional(Icon(Icons.exposure_plus_1), () {
            //         setState(() {
            //           _counter++;
            //         });
            //       }),
            //       const SizedBox(
            //         width: 30,
            //       ),
            //       CustomBotton.named(
            //           icon: const Icon(Icons.exposure_minus_1),
            //           onPress: () {
            //             if (_counter == 0) return;
            //             setState(() {
            //               _counter--;
            //             });
            //           }),
            //       const SizedBox(
            //         width: 30,
            //       ),
            //       CustomBotton(const Icon(Icons.update), () {
            //         setState(() {
            //           _counter = 0;
            //         });
            //       })
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomBotton.optional(const Icon(Icons.exposure_plus_1), () {
            setState(() {
              _counter++;
            });
          }),
          const SizedBox(
            height: 15,
          ),
          CustomBotton.named(
              icon: const Icon(Icons.exposure_minus_1),
              onPress: () {
                if (_counter == 0) return;
                setState(() {
                  _counter--;
                });
              }),
          const SizedBox(
            height: 15,
          ),
          CustomBotton(const Icon(Icons.update), () {
            setState(() {
              _counter = 0;
            });
          })
        ],
      ),
    );
  }
}
