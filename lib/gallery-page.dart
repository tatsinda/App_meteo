import 'package:flutter/material.dart';

class GalleryPage extends StatefulWidget {
  GalleryPage() {}

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery Page'),
      ),
      body: Center(
        child: Text('Gallery Page'),
      ),
    );
  }
}
