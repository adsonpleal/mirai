import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/ui/mirai_alignment/mirai_alignment.dart';
import 'package:mirai/src/ui/mirai_edge_insets/mirai_edge_insets.dart';

export 'mirai_container_parser.dart';

part 'mirai_container.freezed.dart';
part 'mirai_container.g.dart';

@freezed
class MiraiContainer with _$MiraiContainer {
  const factory MiraiContainer({
    MiraiAlignment? alignment,
    MiraiEdgeInsets? padding,
    String? color,
    double? width,
    double? height,
    MiraiEdgeInsets? margin,
    Map<String, dynamic>? child,
    @Default(Clip.none) Clip clipBehavior,
  }) = _MiraiContainer;

  factory MiraiContainer.fromJson(Map<String, dynamic> json) =>
      _$MiraiContainerFromJson(json);
}