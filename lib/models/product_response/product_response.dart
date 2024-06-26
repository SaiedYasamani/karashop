import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'product_response.g.dart';

@JsonSerializable()
class ProductResponse extends Equatable {
  final bool? status;
  final String? message;
  final Data? data;

  const ProductResponse({this.status, this.message, this.data});

  factory ProductResponse.fromJson(Map<String, dynamic> json) {
    return _$ProductResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductResponseToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [status, message, data];
}
