import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'term.dart';

part 'data.g.dart';

@JsonSerializable()
class Data extends Equatable {
  final int? count;
  final List<Term>? terms;

  const Data({this.count, this.terms});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [count, terms];
}
