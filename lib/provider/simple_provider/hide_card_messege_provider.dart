import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hide_card_messege_provider.g.dart';

@riverpod
class HideCardMessege extends _$HideCardMessege {
  @override
  bool build() {
    return false;
  }

  void clickedHideButton() {
    state = !state;
  }
}
