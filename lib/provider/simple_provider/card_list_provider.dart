import 'package:memorize/model/card_data_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'card_list_provider.g.dart';

@riverpod
class CardList extends _$CardList {
  @override
  FutureOr<List<CardModel>> build() {
    return [];
  }

  Future<void> addCardList({required CardModel newCard}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      return [...state.value!, newCard];
    });
  }
}
