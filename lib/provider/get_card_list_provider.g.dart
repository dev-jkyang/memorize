// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_card_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCardListHash() => r'94660868e7a476172bc70e35241195ba59cf6e7e';

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

abstract class _$GetCardList
    extends BuildlessAutoDisposeAsyncNotifier<List<CardModel>> {
  late final String id;

  FutureOr<List<CardModel>> build({
    required String id,
  });
}

/// See also [GetCardList].
@ProviderFor(GetCardList)
const getCardListProvider = GetCardListFamily();

/// See also [GetCardList].
class GetCardListFamily extends Family<AsyncValue<List<CardModel>>> {
  /// See also [GetCardList].
  const GetCardListFamily();

  /// See also [GetCardList].
  GetCardListProvider call({
    required String id,
  }) {
    return GetCardListProvider(
      id: id,
    );
  }

  @override
  GetCardListProvider getProviderOverride(
    covariant GetCardListProvider provider,
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
  String? get name => r'getCardListProvider';
}

/// See also [GetCardList].
class GetCardListProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GetCardList, List<CardModel>> {
  /// See also [GetCardList].
  GetCardListProvider({
    required String id,
  }) : this._internal(
          () => GetCardList()..id = id,
          from: getCardListProvider,
          name: r'getCardListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCardListHash,
          dependencies: GetCardListFamily._dependencies,
          allTransitiveDependencies:
              GetCardListFamily._allTransitiveDependencies,
          id: id,
        );

  GetCardListProvider._internal(
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
    covariant GetCardList notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }

  @override
  Override overrideWith(GetCardList Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetCardListProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<GetCardList, List<CardModel>>
      createElement() {
    return _GetCardListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCardListProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetCardListRef on AutoDisposeAsyncNotifierProviderRef<List<CardModel>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetCardListProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GetCardList,
        List<CardModel>> with GetCardListRef {
  _GetCardListProviderElement(super.provider);

  @override
  String get id => (origin as GetCardListProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
