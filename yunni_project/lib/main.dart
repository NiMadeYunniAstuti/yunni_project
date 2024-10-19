import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Made Yunni'),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(children: [
        Align(
          alignment: Alignment.centerLeft, // Menempatkan teks di sebelah kiri
          child: Text(
            "Pembimbing Akademik (PA)",
            style: TextStyle(fontSize: 20),
          ),
        ),
        ClipOval(
          child: Image.network(
            ("https://tse2.mm.bing.net/th?id=OIP.1WvMqXll5UzDlHH01-0pGgHaEU&pid=Api&P=0&h=180"),
            height: 200, // Disesuaikan agar proporsional dengan bentuk bulat
            width: 200,
            fit: BoxFit.cover, // Menyesuaikan gambar dengan bingkai bulat
          ),
        ),
        Row(
          children: [
            Icon(Icons.person),
            Text("Ni Made Yunni Astuti"),
          ],
        ),
        Row(children: [
          Icon(Icons.email),
          Text("astutinimadeyunni@gmail.com"),
        ]),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
