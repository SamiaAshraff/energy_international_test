import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:energy_test/injection.dart';
import 'package:energy_test/logic/constants/api_constants.dart';
import 'package:energy_test/logic/core/api_client.dart';
import 'package:energy_test/logic/core/api_failure.dart';
import 'package:energy_test/logic/data/model/task_model.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

abstract class TasksRepo {
  Future<Either<ApiFailure, List<TaskModel>>> getTasks();

  Future<Either<ApiFailure, String>> submitTask(
      {required String name, required String desc, required int id});
}

@LazySingleton(as: TasksRepo)
class TasksRepoImpl implements TasksRepo {
  Dio get _client => getIt<ApiClient>().client;

  @override
  Future<Either<ApiFailure, List<TaskModel>>> getTasks() async {
    try {
      log("31");

      final response =
          await http.get(Uri.parse('${APIConstants.testBaseUrl}/tasks'));
      log("21");
      if (response.statusCode == 200) {
        final e = jsonDecode(response.body) as List;
        // log("res " + e.toString());

        final data = e
            .map((e) => TaskModel(
                id: e['_id'].toString(),
                taskName: e['taskName'].toString(),
                taskDescription: e['taskDescription'].toString(),
                empId: e['empId'].toString()))
            .toList();
        return right(data);
      } else {
        return left(const ApiFailure.serverError());
      }
    } catch (e) {
      return left(const ApiFailure.serverError());
    }
  }

  @override
  Future<Either<ApiFailure, String>> submitTask(
      {required String name, required String desc, required int id}) async {
    try {
      log("31" + name.toString());

      final response = await http
          .post(Uri.parse('${APIConstants.testBaseUrl}/tasks'), body: {
        "taskName": name,
        "taskDescription": desc,
        "empId": id.toString(),
      });
      if (response.statusCode == 200) {
        return right('Success');
      } else {
        return left(const ApiFailure.serverError());
      }
    } catch (e) {
      return left(const ApiFailure.serverError());
    }
  }

  // Future<Either<ApiFailure, String>> getNotesMediaUrl(int id) async {
  //   try {
  //     final Response response = await _client.get(
  //       "${APIConstants.notesFileUrl}/$id",
  //     );

  //     if (response.statusCode == 200) {
  //       final data = response.data;

  //       return right(data['files'] == [] ? '' : data['files'][0]);
  //     } else {
  //       return left(const ApiFailure.serverError());
  //     }
  //   } catch (e) {
  //     return left(const ApiFailure.serverError());
  //   }
  // }
  // @override
  // Future<Either<ApiFailure, List<BulletinModel?>>> getBulletin(
  //     {String? pageNo}) async {
  //   try {
  //     final Response response = await _client.get(APIConstants.blogUrl);

  //     if (response.statusCode == 200) {
  //       final data = response.data as List;

  //       final groupData = data.map((e) => BulletinModel.fromJson(e)).toList();
  //       log("response from Blog is $groupData");

  //       if (groupData.isEmpty) {
  //         return right([]);
  //       }
  //       log("response fromdsadsa");
  //       // Create a list to store the results of API calls for each bulletin
  //       final List<Future<Either<dynamic, dynamic>>> apiCallFutures = [];

  //       // Loop through each bulletin object and make an API call for each
  //       for (BulletinModel bulletin in groupData) {
  //         final String bulletinId = bulletin.id
  //             .toString(); // Assuming you have an 'id' property in the BulletinModel
  //         final String apiUrl = "${APIConstants.baseUrl}/media/$bulletinId";
  //         log("response from bulletinId is $bulletinId");
  //         // Make the API call and add the future to the list
  //         // Make the API call and add the future to the list
  //         apiCallFutures.add(_client.get(apiUrl).then((response) {
  //           if (response.statusCode == 200) {
  //             final data = response.data as List<String>;
  //             final List<String> stringList =
  //                 data.map((e) => e.toString()).toList();
  //             return right(stringList);
  //           } else {
  //             return left(const ApiFailure.serverError());
  //           }
  //         }).catchError((e) {
  //           return left(const ApiFailure.serverError());
  //         }));
  //       }

  //       // Wait for all the API calls to finish
  //       final List<Either<dynamic, dynamic>> results =
  //           await Future.wait(apiCallFutures);

  //       // Update each bulletin object with the list of strings returned from the API calls
  //       for (int i = 0; i < groupData.length; i++) {
  //         if (results[i].isRight()) {
  //           groupData[i].attachmentList = results[i].getOrElse(() => []);
  //         }
  //       }

  //       return right(groupData);
  //     } else {
  //       return left(const ApiFailure.serverError());
  //     }
  //   } catch (e) {
  //     return left(const ApiFailure.serverError());
  //   }
  // }
}
