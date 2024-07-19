import 'package:flutter/material.dart';
import 'package:json_data_ch8/screen/8.1%20Json%20Parsing/provider/json_provider.dart';
import 'package:provider/provider.dart';

class JsonPage extends StatelessWidget {
  const JsonPage({super.key});

  @override
  Widget build(BuildContext context) {
    PhotoProvider photoProvider =
        Provider.of<PhotoProvider>(context, listen: false);
    PhotoProvider photoProviderTrue =
        Provider.of<PhotoProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON Parsing'),
      ),
      body: ListView.builder(
        itemCount: photoProvider.photoList.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image:NetworkImage ('${photoProvider.photoList[index].url}'),
                )
              ),
            ),
            subtitle: Text('${photoProvider.photoList[index].title}'),
          ),
        ),
      ),
    );
  }
}
