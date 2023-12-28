import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:energy_test/logic/data/task_model.dart';
import 'package:injectable/injectable.dart';

class Task {
   List<TaskModel> taskList = [
    TaskModel(
        taskName: 'Task 1', taskDescription: 'Task  desc 1', emp: 'Emp 1'),
    TaskModel(
        taskName: 'Task 2', taskDescription: 'Task  desc 2', emp: 'Emp 2'),
    TaskModel(taskName: 'Task 3', taskDescription: 'Task  desc 3', emp: 'Emp 3')
  ];
  addTask(String name, String desc, String emp, List<TaskModel> taskList) {
    TaskModel task = TaskModel(taskName: name, taskDescription: desc, emp: emp);
    taskList.add(task);
  }
  // getTasks(){
  //   return 
  // }
}

// abstract class BulletinRepo {
//   Future<Either<ApiFailure, BulletinModel>> getBulletin(
//       {required int id, String? pageNo});
// }

// @LazySingleton(as: BulletinRepo)
// class QuizRepoImpl implements BulletinRepo {
//   Dio get _client => getIt<ApiClient>().client;

//   @override
//   Future<Either<ApiFailure, BulletinModel>> getBulletin(
//       {required int id, String? pageNo}) async {
//     try {
//       final Response response =
//           await _client.get('${APIConstants.blogUrl}/$id');
//       log("id is $id");
//       if (response.statusCode == 200) {
//         final media = await getNotesMediaUrl(id);
//         final mediaUrl = media.fold((l) => '', (r) => r);
//         final e = response.data;

//         final data = BulletinModel(
//             id: e['id'],
//             title: e['title'],
//             content: e['content'],
//             authorId: e['authorId'],
//             createdAt: e['createdAt'].toString().substring(0, 10),
//             updatedAt: e['updatedAt'].toString().substring(0, 10),
//             blogBlogQuizID: e['blogBlogQuiz'][0]['quizId'],
//             mediaUrl:mediaUrl==''?'':
//                 'https://safetytouchbackend.bbarray.com/blog/$id/$mediaUrl');
//         log("title is ${data.title}");
//         return right(data);
//       } else {
//         return left(const ApiFailure.serverError());
//       }
//     } catch (e) {
//       return left(const ApiFailure.serverError());
//     }
//   }

//   Future<Either<ApiFailure, String>> getNotesMediaUrl(int id) async {
//     try {
//       final Response response = await _client.get(
//         "${APIConstants.notesFileUrl}/$id",
//       );

//       if (response.statusCode == 200) {
//         final data = response.data;

//         return right(data['files'] == [] ? '' : data['files'][0]);
//       } else {
//         return left(const ApiFailure.serverError());
//       }
//     } catch (e) {
//       return left(const ApiFailure.serverError());
//     }
//   }
//   // @override
//   // Future<Either<ApiFailure, List<BulletinModel?>>> getBulletin(
//   //     {String? pageNo}) async {
//   //   try {
//   //     final Response response = await _client.get(APIConstants.blogUrl);

//   //     if (response.statusCode == 200) {
//   //       final data = response.data as List;

//   //       final groupData = data.map((e) => BulletinModel.fromJson(e)).toList();
//   //       log("response from Blog is $groupData");

//   //       if (groupData.isEmpty) {
//   //         return right([]);
//   //       }
//   //       log("response fromdsadsa");
//   //       // Create a list to store the results of API calls for each bulletin
//   //       final List<Future<Either<dynamic, dynamic>>> apiCallFutures = [];

//   //       // Loop through each bulletin object and make an API call for each
//   //       for (BulletinModel bulletin in groupData) {
//   //         final String bulletinId = bulletin.id
//   //             .toString(); // Assuming you have an 'id' property in the BulletinModel
//   //         final String apiUrl = "${APIConstants.baseUrl}/media/$bulletinId";
//   //         log("response from bulletinId is $bulletinId");
//   //         // Make the API call and add the future to the list
//   //         // Make the API call and add the future to the list
//   //         apiCallFutures.add(_client.get(apiUrl).then((response) {
//   //           if (response.statusCode == 200) {
//   //             final data = response.data as List<String>;
//   //             final List<String> stringList =
//   //                 data.map((e) => e.toString()).toList();
//   //             return right(stringList);
//   //           } else {
//   //             return left(const ApiFailure.serverError());
//   //           }
//   //         }).catchError((e) {
//   //           return left(const ApiFailure.serverError());
//   //         }));
//   //       }

//   //       // Wait for all the API calls to finish
//   //       final List<Either<dynamic, dynamic>> results =
//   //           await Future.wait(apiCallFutures);

//   //       // Update each bulletin object with the list of strings returned from the API calls
//   //       for (int i = 0; i < groupData.length; i++) {
//   //         if (results[i].isRight()) {
//   //           groupData[i].attachmentList = results[i].getOrElse(() => []);
//   //         }
//   //       }

//   //       return right(groupData);
//   //     } else {
//   //       return left(const ApiFailure.serverError());
//   //     }
//   //   } catch (e) {
//   //     return left(const ApiFailure.serverError());
//   //   }
//   // }
// }
