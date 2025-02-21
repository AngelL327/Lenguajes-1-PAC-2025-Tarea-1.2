import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final estiloTitulo = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi App',
      home: HomePage(estiloTitulo: estiloTitulo),
    );
  }
}

class HomePage extends StatefulWidget {
  final TextStyle estiloTitulo;

  HomePage({super.key, required this.estiloTitulo});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Welcome to\nReminders",
            textAlign: TextAlign.center,
            style: widget.estiloTitulo,
          ),
          SizedBox(height: 20),
          _IconNuevo(Icons.access_time, const Color.fromARGB(255, 24, 136, 2), "Quick Creation",
              "Simply type in your list, ask Siri, or add a reminder from your Calendar app."),
          _IconNuevo(Icons.shopping_cart, const Color.fromARGB(255, 233, 165, 20), "Grocery Shopping",
              "Create a Grocery List that automatically sorts items you add by category."),
          _IconNuevo(Icons.people, const Color.fromARGB(255, 241, 190, 95), "Easy Sharing",
              "Collaborate on a list, and even assign individual tasks."),
          _IconNuevo(Icons.category, const Color.fromARGB(255, 18, 113, 221), "Powerful Organization",
              "Create new lists to match your needs, categorize reminders with tags, and manage reminders around your work flow with Smart Lists."),
          SizedBox(
          height: MediaQuery.of(context).size.height * 0.25, // 25% de la altura de la pantalla
        ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width * 0.9, 
        child: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          label: Text("Continue",
              style: TextStyle(fontSize: 18, color: Colors.white)),
        ),
      ),
    );
  }


  Widget _IconNuevo(IconData icon, Color color, String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListTile(
        leading: Icon(icon, color: color, size: 30),
        title: Text(title,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        subtitle: Text(description, style: TextStyle(color: Colors.black54)),
      ),
    );
  }
}