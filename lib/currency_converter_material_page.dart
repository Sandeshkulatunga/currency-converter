import 'package:flutter/material.dart';

class MaterialHomePage extends StatefulWidget {
  const MaterialHomePage({super.key});

  @override
  State<MaterialHomePage> createState() => _MaterialHomePageState();
}

class _MaterialHomePageState extends State<MaterialHomePage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = double.parse(textEditingController.text) * 81;
    setState(() {});
    // print(result);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 238, 238),
        elevation: 0,
        title: const Text(
          "Corrency Converter",
          style: TextStyle(
              color: Color.fromARGB(123, 23, 38, 80),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        actions: const [Icon(Icons.add)],
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result != 0 ? result.toStringAsFixed(2) : "",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 56, 56, 56),
                ),
              ),
              TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Color.fromARGB(255, 58, 58, 58),
                ),
                decoration: const InputDecoration(
                  hintText: "Please enter amount",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 112, 112, 112),
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.amber,
                  filled: true,
                  fillColor: Colors.white,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: convert,
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 245, 186, 9),
                  foregroundColor: (Colors.white),
                  minimumSize: const Size(550, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text("Convert"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
