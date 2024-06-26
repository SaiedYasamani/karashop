import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'verify_response.g.dart';

@JsonSerializable()
class VerifyResponse extends Equatable {
  final bool? status;
  final String? message;
  final Data? data;

  const VerifyResponse({this.status, this.message, this.data});

  factory VerifyResponse.fromJson(Map<String, dynamic> json) {
    return _$VerifyResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VerifyResponseToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [status, message, data];
}
