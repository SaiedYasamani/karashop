import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'category_response.g.dart';

@JsonSerializable()
class CategoryResponse extends Equatable {
  final bool? status;
  final String? message;
  final Data? data;

  const CategoryResponse({this.status, this.message, this.data});

  factory CategoryResponse.fromJson(Map<String, dynamic> json) {
    return _$CategoryResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoryResponseToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [status, message, data];
}
