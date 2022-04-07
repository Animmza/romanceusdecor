import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:romanceusdecor/models/job.dart';

class AssignmentServices {
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  Future<bool> addJobToDb(Job job) async {
    try {
      await _firebaseFirestore.collection('jobs').add(job.toJson());
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  Future<int> getJobId() async {
    return (await (await _firebaseFirestore
                    .collection('jobs')
                    .snapshots()
                    .first)
                .docs)
            .length +
        1;
  }
}
