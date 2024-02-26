import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Terms extends StatefulWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Terms & conditions'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia sapien sed interdum pharetra. Donec nibh ante, hendrerit eu tellus sed, viverra varius ligula. Maecenas diam nunc, elementum commodo facilisis vel, accumsan scelerisque quam. Mauris pharetra, tortor vitae viverra placerat, massa diam tempor lorem, vel maximus magna sapien mattis lectus. Pellentesque fermentum dapibus nisl non auctor. Aliquam malesuada aliquam ligula eget ullamcorper. Mauris posuere vel odio ut luctus. Proin efficitur dui vitae justo tempus, pulvinar sollicitudin dui feugiat. Vestibulum ultricies purus odio, ut eleifend lacus egestas eget. Pellentesque auctor molestie fermentum \n\n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia sapien sed interdum pharetra. Donec nibh ante, hendrerit eu tellus sed, viverra varius ligula. Maecenas diam nunc, elementum commodo facilisis vel, accumsan scelerisque quam. Mauris pharetra, tortor vitae viverra placerat, massa diam tempor lorem, vel maximus magna sapien mattis lectus. Pellentesque fermentum dapibus nisl non auctor. Aliquam malesuada aliq \n\n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia sapien sed interdum pharetra. Donec nibh ante, hendrerit eu tellus sed, viverra varius ligula. Maecenas diam nunc, elementum commodo facilisis vel, accumsan scelerisque quam. Mauris pharetra, tortor vitae viverra placerat, massa diam tempor lorem, vel maximus magna sapien mattis lectus. Pellentesque fermentum dapibus nisl non auctor. Aliquam malesuada aliq \n\n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia sapien sed interdum pharetra. Donec nibh ante, hendrerit eu tellus sed, viverra varius ligula. Maecenas diam nunc, elementum commodo facilisis vel, accumsan scelerisque quam. Mauris pharetra, tortor vitae viverra placerat, massa diam tempor lorem, vel maximus magna sapien mattis lectus. Pellentesque fermentum dapibus nisl non auctor. Aliquam malesuada aliq"),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextButton(
                onPressed: () {
                  print('Le bouton a été pressé !');
                },
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.blue), // Couleur de fond du bouton
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.all(16.0)), // Padding autour du bouton
                ),
                child: const Text('Appuyez ici'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
