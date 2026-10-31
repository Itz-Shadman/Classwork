import 'package:flutter/material.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  @override
  Widget build(BuildContext context) {
    var myItems = [
      {
        "image": "https://picsum.photos/300/200?random=1",
        "title": "Length Converter",
      },
      {
        "image": "https://picsum.photos/300/200?random=2",
        "title": "Weight Converter",
      },
      {
        "image": "https://picsum.photos/300/200?random=3",
        "title": "Temperature Converter",
      },
      {
        "image": "https://picsum.photos/300/200?random=4",
        "title": "Currency Converter",
      },
      {
        "image": "https://picsum.photos/300/200?random=5",
        "title": "Time Converter",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Converter Page"),
        backgroundColor: const Color(0xFF2A9D8F),
      ),
      body: ListView.builder(
        itemCount: myItems.length,
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                Image.network(myItems[index]["image"]!,height: 100,width: 100,fit: BoxFit.cover,),
                Expanded(
                  child: Text(myItems[index]["title"]!),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
  