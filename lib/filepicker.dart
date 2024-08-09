import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';

class Filepicker extends StatefulWidget {
  const Filepicker({super.key});

  @override
  State<Filepicker> createState() => _FilepickerState();
}

class _FilepickerState extends State<Filepicker> {
  List<File?> files = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // ElevatedButton(
              //     onPressed: () async {
              //       final result = await FilePicker.platform.pickFiles();
              //       if (result == null) return;
              //       final file = result.files.first;
              //       openfile(file);
              //     },
              //     child: Icon(Icons.add_photo_alternate_rounded)),

              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: files.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12),
                  itemBuilder: (BuildContext context, int index) {
                    return Image.file(
                      fit: BoxFit.cover,
                      files[index]!,
                    );
                  })
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add_a_photo),
            onPressed: () {
              MultifilePick();
            }),
      ),
    );
  }

  MultifilePick() async {
    final multiresult = await FilePicker.platform.pickFiles(
        allowMultiple: true, type: FileType.custom, allowedExtensions: ["png"]);
    if (multiresult != null) {
      files = multiresult.paths.map((path) => File(path!)).toList();
      setState(() {});
    } else {
      return;
    }
  }

  void openfile(PlatformFile file) {
    OpenFile.open(file.path!);
  }
}
