// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'model.dart';

class ApodList extends StatefulWidget {
  final ApodModel model;

  const ApodList({Key? key, required this.model}) : super(key: key);

  @override
  _ApodListState createState() => _ApodListState();
}

class _ApodListState extends State<ApodList> {
  late Future<List<Apod>> _apodList;

  @override
  void initState() {
    super.initState();
    _apodList = widget.model.getApodList(10);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Apod>>(
      future: _apodList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final apod = snapshot.data![index];
              return Card(
                child: Column(
                  children: [
                    Image.network(apod.imageUrl),
                    ListTile(
                      title: Text(apod.title),
                      subtitle: Text(apod.date),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(apod.description),
                    ),
                  ],
                ),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('${snapshot.error}'),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}