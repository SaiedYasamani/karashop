import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'term.g.dart';

@JsonSerializable()
class Term extends Equatable {
  final String? name;

  const Term({this.name});

  factory Term.fromJson(Map<String, dynamic> json) => _$TermFromJson(json);

  Map<String, dynamic> toJson() => _$TermToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [name];
}
