import 'dart:async';
import 'dart:convert';
import 'dart:io';


import 'package:http/http.dart' as http;
import 'package:news/src/features/home/model/new_model.dart';

class ApiService {
  static final String appleurl =
      'https://newsapi.org/v2/everything?q=apple&from=2026-04-28&to=2026-04-28&sortBy=popularity';
 static String get teslauri {
  final now = DateTime.now();
  final from = now.subtract(const Duration(days: 30));
  return 'https://newsapi.org/v2/everything?q=tesla&from=${from.toIso8601String().split('T').first}&sortBy=publishedAt';
}

static String get countryuri {
  return 'https://newsapi.org/v2/top-headlines?country=us&category=business';
}

  
     
  static  String  techcrunchuri =
      "https://newsapi.org/v2/top-headlines?sources=techcrunch";
  static final String domainsuri =
      "https://newsapi.org/v2/everything?domains=wsj.com";
  static final String key = 'be2c3487be0743f2acad434aeb40928d';
  static Future<NewModel> getApple() async {
    try {
      final response = await http.get(Uri.parse('$appleurl&apiKey=$key'));

      if (response.statusCode >= 200 && response.statusCode < 300) {
        print('Malumot keldi ${response.statusCode}');
        return NewModel.fromJson(jsonDecode(response.body));
      } else {
        print('status code error ${response.statusCode} ${response.body}');
        throw HttpException("Error ${response.body}");
      }
    } on TimeoutException catch (_) {
      throw TimeoutException("Check your internet try again !");
    } on SocketException catch (_) {
      throw SocketException("No internet try again !");
    } on HttpException catch (_) {
      throw HttpException('Try again please !');
    } catch (_) {
      throw Exception('something went wrong !');
    }
  }

  static Future<NewModel> gettesla() async {
    try {
      final response = await http.get(Uri.parse('$teslauri&apiKey=$key'));

      if (response.statusCode >= 200 && response.statusCode < 300) {
        print('Malumot keldi ${response.statusCode}');
        return NewModel.fromJson(jsonDecode(response.body));
      } else {
        print('status code error ${response.statusCode} ${response.body}');
        throw HttpException("Error ${response.body}");
      }
    } on TimeoutException catch (_) {
      throw TimeoutException("Check your internet try again !");
    } on SocketException catch (_) {
      throw SocketException("No internet try again !");
    } on HttpException catch (_) {
      throw HttpException('Try again please !');
    } catch (_) {
      throw Exception('something went wrong !');
    }
  }

  static Future<NewModel> getcountry() async {
    try {
      final response = await http.get(Uri.parse('$countryuri&apiKey=$key'));

      if (response.statusCode >= 200 && response.statusCode < 300) {
        print('Malumot keldi ${response.statusCode}');
        return NewModel.fromJson(jsonDecode(response.body));
      } else {
        print('status code error ${response.statusCode} ${response.body}');
        throw HttpException("Error ${response.body}");
      }
    } on TimeoutException catch (_) {
      throw TimeoutException("Check your internet try again !");
    } on SocketException catch (_) {
      throw SocketException("No internet try again !");
    } on HttpException catch (_) {
      throw HttpException('Try again please !');
    } catch (_) {
      throw Exception('something went wrong !');
    }
  }

  // Внутри класса ApiService
static Future<NewModel> gettechcrunchuri() async {
  // Используем только techcrunchuri и apiKey
  final response = await http.get(Uri.parse('$techcrunchuri&apiKey=$key'));
  
  if (response.statusCode == 200) {
    return NewModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load techcrunch news');
  }
}


  static Future<NewModel> getdomains() async {
    try {
      final response = await http.get(Uri.parse('$domainsuri&apiKey=$key'));

      if (response.statusCode >= 200 && response.statusCode < 300) {
        print('Malumot keldi ${response.statusCode}');
        return NewModel.fromJson(jsonDecode(response.body));
      } else {
        print('status code error ${response.statusCode} ${response.body}');
        throw HttpException("Error ${response.body}");
      }
    } on TimeoutException catch (_) {
      throw TimeoutException("Check your internet try again !");
    } on SocketException catch (_) {
      throw SocketException("No internet try again !");
    } on HttpException catch (_) {
      throw HttpException('Try again please !');
    } catch (e, stacktrace) {
  print('Error: $e');
  print('Stacktrace: $stacktrace');
  throw Exception(e.toString());
}

  }
}
