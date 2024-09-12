import 'package:memorize/model/card_data_model.dart';
import 'package:memorize/repositotries/provider/cards_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'group_list_provider.g.dart';

@riverpod
class GroupList extends _$GroupList {
  @override
  FutureOr<List<ChildGroup>> build() {
    return _getGroupList();
  }

  Future<List<ChildGroup>> _getGroupList() async {
    return ref.read(cardsRepositoryProvider).getChild();
  }

  //add, delete, update
  Future<void> addCardList(
      {required List<CardModel> cardList, required String title}) async {
    state = const AsyncLoading();

    final newCardList =
        ChildGroup.add(depth: Depth.main, title: title, keywordList: cardList);

    await ref
        .read(cardsRepositoryProvider)
        .addCardList(childGroupData: newCardList);

    state = await AsyncValue.guard(() async {
      return [...state.value!, newCardList];
    });
  }
}

///메인 히스토리 리스트 : 삭제, 위치이동
///플래시 카드 리스트 : CRUD, 북마크
///
