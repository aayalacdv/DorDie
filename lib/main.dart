import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'dart:math';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(GetUserName('YZsLFiI1SAjOVv0Z3FH7'));
}

class GetUserName extends StatefulWidget {
  final String documentId;

  GetUserName(this.documentId);

  @override
  State<GetUserName> createState() => _GetUserNameState();
}

class _GetUserNameState extends State<GetUserName> {
  @override
  Widget build(BuildContext context) {
    CollectionReference yoNunca =
        FirebaseFirestore.instance.collection('Yo nunca');
    Random random = Random();
    int index = 0;
    List<DQuestion> questions = [];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: FutureBuilder<QuerySnapshot>(
            future: yoNunca.get(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return Text("Something went wrong");
              }

              if (snapshot.connectionState == ConnectionState.done) {
                questions = snapshot.data!.docs
                    .map((question) => DQuestion(question['Pregunta']))
                    .toList();

                return Column(
                  children: [
                    ListTile(
                      style: ListTileStyle.list,
                      title: Text(
                          "Pregunta : ${questions[random.nextInt(questions.length)].question}"),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {});
                      },
                      icon: Icon(Icons.change_circle),
                    )
                  ],
                );
              }

              return Text("loading");
            },
          ),
        ),
      ),
    );
  }
}

class DQuestion {
  String question;

  DQuestion(this.question);
}
