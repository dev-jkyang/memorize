import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_group_id_provider.g.dart';

@Riverpod(keepAlive: true)
class CurrentGroupId extends _$CurrentGroupId {
  @override
  String build() {
    ref.onDispose(() {
      log('onDispos');
    });

    return '';
  }

  void currentId({required String id}) {
    state = id;
  }
}
