import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(GetUserName('YZsLFiI1SAjOVv0Z3FH7'));
}

class GetUserName extends StatelessWidget {
  final String documentId;

  GetUserName(this.documentId);

  @override
  Widget build(BuildContext context) {
    CollectionReference yoNunca =
        FirebaseFirestore.instance.collection('Yo nunca');
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
                List<DQuestion> questions = snapshot.data!.docs
                    .map((question) => DQuestion(question['Pregunta']))
                    .toList();

                return ListTile(
                  style: ListTileStyle.list,
                  title: Text("Pregunta : ${questions[98].Pregunta}"),
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
  String Pregunta;

  DQuestion(this.Pregunta);
}
