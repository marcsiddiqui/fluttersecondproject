import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
      home: const MyHomePage(title: 'Arsalans App'),
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
  int _counter = 0;
  DateTime startDate = DateTime.now();

  void _incrementDate() {
    setState(() {
      startDate = startDate.add(const Duration(days: 1));
    });
    print(startDate);
  }

  void _incrementDateByWeek() {
    setState(() {
      startDate = startDate.add(const Duration(days: 7));
    });
    print(startDate);
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: startDate,
      firstDate: DateTime(2023, 07, 22),
      lastDate: DateTime(2060, 07, 22),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // const Text(
            //   'Counter 1:',
            // ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
            // const Text(
            //   'Counter 2:',
            // ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
            // FloatingActionButton(onPressed: _incrementDate, tooltip: 'Increase Date', child: const Icon(Icons.arrow_outward)),
            // FloatingActionButton(onPressed: _incrementDateByWeek, tooltip: 'Increase Date by Week', child: const Icon(Icons.arrow_downward)),
            // FloatingActionButton(onPressed: _decrementCounter, tooltip: 'Decrement', child: const Icon(Icons.arrow_back)),
            // FloatingActionButton(
            //   onPressed: () => _selectDate(context),
            //    tooltip: 'Select Date',
            //     child: const Icon(Icons.calendar_today)),
            SizedBox(
              width: 150,
              height: 150,
              child: Image.asset("assets/images/3.jpg"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      
    );
  }
}
