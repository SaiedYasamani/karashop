import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'product.dart';

part 'data.g.dart';

@JsonSerializable()
class Data extends Equatable {
  final int? count;
  final List<Product>? products;

  const Data({this.count, this.products});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [count, products];
}
