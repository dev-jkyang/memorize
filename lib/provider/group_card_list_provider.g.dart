// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_card_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$groupCardListHash() => r'8cce4ceb295e751f1a4214a2388beea48fbb746a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$GroupCardList
    extends BuildlessAutoDisposeAsyncNotifier<List<CardModel>> {
  late final String id;

  FutureOr<List<CardModel>> build({
    required String id,
  });
}

/// See also [GroupCardList].
@ProviderFor(GroupCardList)
const groupCardListProvider = GroupCardListFamily();

/// See also [GroupCardList].
class GroupCardListFamily extends Family<AsyncValue<List<CardModel>>> {
  /// See also [GroupCardList].
  const GroupCardListFamily();

  /// See also [GroupCardList].
  GroupCardListProvider call({
    required String id,
  }) {
    return GroupCardListProvider(
      id: id,
    );
  }

  @override
  GroupCardListProvider getProviderOverride(
    covariant GroupCardListProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'groupCardListProvider';
}

/// See also [GroupCardList].
class GroupCardListProvider extends AutoDisposeAsyncNotifierProviderImpl<
    GroupCardList, List<CardModel>> {
  /// See also [GroupCardList].
  GroupCardListProvider({
    required String id,
  }) : this._internal(
          () => GroupCardList()..id = id,
          from: groupCardListProvider,
          name: r'groupCardListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$groupCardListHash,
          dependencies: GroupCardListFamily._dependencies,
          allTransitiveDependencies:
              GroupCardListFamily._allTransitiveDependencies,
          id: id,
        );

  GroupCardListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  FutureOr<List<CardModel>> runNotifierBuild(
    covariant GroupCardList notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }

  @override
  Override overrideWith(GroupCardList Function() create) {
    return ProviderOverride(
      origin: this,
      override: GroupCardListProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GroupCardList, List<CardModel>>
      createElement() {
    return _GroupCardListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GroupCardListProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GroupCardListRef on AutoDisposeAsyncNotifierProviderRef<List<CardModel>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GroupCardListProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GroupCardList,
        List<CardModel>> with GroupCardListRef {
  _GroupCardListProviderElement(super.provider);

  @override
  String get id => (origin as GroupCardListProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
