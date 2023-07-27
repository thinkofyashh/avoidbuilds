import 'package:flutter/material.dart';

class UIUpdateDemo extends StatefulWidget {
  const UIUpdateDemo({Key? key}) : super(key: key);

  @override
  StatefulElement createElement() {
    print('UIUpdate Create element called');
    return super.createElement();
  }

  @override
  State<UIUpdateDemo> createState() => _UIUpdateDemoState();


}

class _UIUpdateDemoState extends State<UIUpdateDemo> {
  var _isUnderstood = false;

  @override
  Widget build(BuildContext context) {
    print("UIUpdatedemo BUIld called");

    return Padding(padding:
    const EdgeInsets.all(8.0),
      child: Center(child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "every flutter dev have a basic understanding of flutter basic",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),),
          const SizedBox(height: 16),
          const Text(
            "Do you understand how flutter ui update UI?",
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () {
                setState(() {
                  _isUnderstood = false;
                });
              }, child: const Text("no"),),
              TextButton(onPressed: () {
                setState(() {
                  _isUnderstood = true;
                });
              }, child: const Text("Yes"),),


            ],
          ),
          if(_isUnderstood) const Text('Awesome!'),

        ],),
      ),
      );
  }
}
