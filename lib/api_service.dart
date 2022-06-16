import 'dart:async' show Future;
import 'dart:convert';
import 'package:nhlproj/models/api_model.dart';
import 'package:nhlproj/models/models_json.dart';
import 'package:http/http.dart' as http;

const _baseUrl = 'https://statsapi.web.nhl.com/api/v1/teams';

abstract class ApiService {
  Future<ApiModel<List<Teams>, Failure>> getTeams();
}

class ApiServiceImpl implements ApiService {
  static final ApiServiceImpl _instance = ApiServiceImpl._();
  ApiServiceImpl._();
  static ApiServiceImpl get instance => _instance;
  @override
  Future<ApiModel<List<Teams>, Failure>> getTeams() async {
    try {
      final url = Uri.parse(_baseUrl);
      final response = await http.get(url);
      if (response.statusCode != 200) {
        ApiModel.error(Failure());
      }
      await Future.delayed(const Duration(seconds: 3));
      final json = jsonDecode(response.body);
      AutoGenerate generate = AutoGenerate.fromJson(json);
      return ApiModel.success(generate.teams);
    } catch (error) {
      return ApiModel.error(Failure());
    }
  }
}
