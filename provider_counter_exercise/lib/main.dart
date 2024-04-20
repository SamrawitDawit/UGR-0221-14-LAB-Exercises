
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exercise/counter_module.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
        create: (context) => Counter(),
        child: const MyApp(),
      ) );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Consumer<Counter>(builder:
        (context, value, child) => Scaffold(
          appBar: AppBar(

            backgroundColor: Theme.of(context).colorScheme.inversePrimary,

            title: Text(widget.title),
          ),
          body: Center(

            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  value.count.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: (){
                  final counter = context.read<Counter>();
                  counter.increment();
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),

              ),
              SizedBox(height: 10,),
              FloatingActionButton(
                onPressed: (){
                  final counter = context.read<Counter>();
                  counter.decrement();
                },
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            ],
          ),

         )
    );
  }
}
