import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/models/postResponse.dart';
import 'package:flutter_application_1/models/user.dart';
import 'package:image_picker/image_picker.dart';

import '../data/data.dart';
import '../models/post.dart';

class AddPost extends StatefulWidget {
  Function setStateFunction;
  AddPost(this.setStateFunction);
  @override
  State<AddPost> createState() => _Screen2State();
}

class _Screen2State extends State<AddPost> {
  TextEditingController controller = TextEditingController();
  File? selectedImage;
  bool firstSubmit = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (Navigator.canPop(context)) {
          Navigator.pop(context, "hello");
          return Future.value(true);
        } else {
          return Future.value(false);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          title: const Text("ADD POST"),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              autovalidateMode: firstSubmit
                  ? AutovalidateMode.onUserInteraction
                  : AutovalidateMode.disabled,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      getImage();
                    },
                    child: Container(
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20)),
                      child: selectedImage == null
                          ? const Icon(
                              Icons.add,
                              size: 40,
                            )
                          : Image.file(
                              selectedImage!,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'required value';
                      } else {
                        return 'your content must be 10 charactrs long';
                      }
                    },
                    controller: controller,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.2),
                        hintText: 'Post Content',
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        firstSubmit = true;
                        setState(() {});
                        if (selectedImage == null) {
                          showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: const Text(
                                      'You have to select a photo first'),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('OK'))
                                  ],
                                );
                              });
                        } else if (formKey.currentState!.validate()) {
                          Post post =
                              Post.fromFile(selectedImage, controller.text);
                          User user = User('Mumen');
                          list.add(postResponse.fromFile(user, post));
                          widget.setStateFunction();
                          Navigator.pop(context);
                        }
                      },
                      child: const Text('Add new Post'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  getImage() async {
    XFile? file = await ImagePicker().pickImage(source: ImageSource.gallery);
    selectedImage = File(file!.path);
    setState(() {});
  }
}
