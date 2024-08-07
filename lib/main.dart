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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.baseline,
            children: <Widget>[
              Container(
                color: const Color.fromARGB(255, 196, 113, 6),
                width: 100,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset("assets/images/3.jpg"),
                    ),
                    Text(
                      'Test',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 196, 255, 6),
                width: 100,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset("assets/images/3.jpg"),
                    ),
                    Text(
                      'Test',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 255, 113, 6),
                width: 100,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset("assets/images/3.jpg"),
                    ),
                    Text(
                      'Test',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 0, 113, 6),
                width: 100,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset("assets/images/3.jpg"),
                    ),
                    Text(
                      'Test',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(0, 196, 113, 6),
                width: 100,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset("assets/images/3.jpg"),
                    ),
                    Text(
                      'Test',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 196, 0, 6),
                width: 100,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset("assets/images/3.jpg"),
                    ),
                    Text(
                      'Test',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 196, 113, 6),
                width: 100,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset("assets/images/3.jpg"),
                    ),
                    Text(
                      'Test',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),

              // const Text( 
              //   'Counter 1:',
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
              // SizedBox(
              //   width: 150,
              //   height: 150,
              //   child: Image.asset("assets/images/3.jpg"),
              // )
            
            ],
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      
    );
  }
}
