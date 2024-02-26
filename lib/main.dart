import 'package:flutter/material.dart';
import 'package:app/screen/terms.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'App Arnaud'),
        routes: {
          '/terms': (context) => const Terms()
        }
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final regexEmail = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  @override
  Widget build(BuildContext context) {
    String _email = "";

    return SafeArea(child: Scaffold(body:Center(
      child: Column(
        children: [
          RichText(text: const TextSpan(
              text: "Bienvenue\n",
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30.0
              ),
              children: [
                TextSpan(
                    text: "chez nous",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                    )
                )
              ]
          )
          ),
          Form(key: _formKey,child: Column(
            children: [
              const Text("Welcome"),
              TextFormField(
                onChanged: (value)=> setState(()=>_email = value),
                validator: (value)=> value!.isEmpty || !regexEmail.hasMatch(value)?'entrer un email value':null,
                decoration: const InputDecoration(
                    hintText: 'felix.lablanch@exemple.com'
                ),
              ),
              ElevatedButton(onPressed: ()=>{
                if(_formKey.currentState!.validate()){Navigator.pushNamed(context, '/terms')}
              }, child: Text('press me'))
            ],
          ),
          )
        ],
      ),
    ))
    );
  }
}