import 'package:json_annotation/json_annotation.dart';

part 'rating_vo.g.dart';

@JsonSerializable()
class RatingVO {
  @JsonKey(name: 'rate')
  num? rate;

  @JsonKey(name: 'count')
  int? count;

  RatingVO(this.rate, this.count);

  factory RatingVO.fromJson(Map<String, dynamic> json) {
    return _$RatingVOFromJson(json);
  }
}
