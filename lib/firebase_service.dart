import 'package:cloud_firestore/cloud_firestore.dart';
    FirebaseFirestore db=FirebaseFirestore.instance;

    Future<List>getHojas_de_vida()async{
      List Hojas_de_vida=[];
      CollectionReference collectionReferenceHojasDeVida  = db.collection('Hojas_de_vida');
      QuerySnapshot ConsultaHojas_de_vida =await collectionReferenceHojasDeVida.get();
      ConsultaHojas_de_vida.docs.forEach((documento){
        Hojas_de_vida.add(documento.data());
      });
      return Hojas_de_vida;
    }
