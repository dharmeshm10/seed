import 'package:flutter/material.dart';
import 'package:seed/presentation/journey/todo/create_todo/create_todo_constants.dart';

class CreateTodoScreen extends StatefulWidget {
  final Function onCreate;

  const CreateTodoScreen({
    super.key,
    required this.onCreate,
  });

  @override
  _CreateTodoScreenState createState() => _CreateTodoScreenState();
}

class _CreateTodoScreenState extends State<CreateTodoScreen> {
  final descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext buildContext) => Scaffold(
        appBar: AppBar(
          title: const Text('Create Todo'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                width: 200,
                child: TextField(
                  key: CreateTodoConstants.descriptionFieldKey,
                  controller: descriptionController,
                  decoration: const InputDecoration(labelText: 'Description'),
                ),
              ),
              const SizedBox(height: 20),
              // RaisedButton(
              //   key: CreateTodoConstants.createTodoButton,
              //   onPressed: () {
              //     widget.onCreate(descriptionController.text);
              //   },
              //   child: const Text('Create'),
              // )
            ],
          ),
        ),
      );
}
