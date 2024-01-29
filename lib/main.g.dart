// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$beersHash() => r'696aba37a53c4dd1f058d9571a42180098568b59';

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

/// See also [beers].
@ProviderFor(beers)
const beersProvider = BeersFamily();

/// See also [beers].
class BeersFamily extends Family<AsyncValue<List<Beer>>> {
  /// See also [beers].
  const BeersFamily();

  /// See also [beers].
  BeersProvider call({
    required int page,
  }) {
    return BeersProvider(
      page: page,
    );
  }

  @override
  BeersProvider getProviderOverride(
    covariant BeersProvider provider,
  ) {
    return call(
      page: provider.page,
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
  String? get name => r'beersProvider';
}

/// See also [beers].
class BeersProvider extends AutoDisposeFutureProvider<List<Beer>> {
  /// See also [beers].
  BeersProvider({
    required int page,
  }) : this._internal(
          (ref) => beers(
            ref as BeersRef,
            page: page,
          ),
          from: beersProvider,
          name: r'beersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$beersHash,
          dependencies: BeersFamily._dependencies,
          allTransitiveDependencies: BeersFamily._allTransitiveDependencies,
          page: page,
        );

  BeersProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<List<Beer>> Function(BeersRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BeersProvider._internal(
        (ref) => create(ref as BeersRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Beer>> createElement() {
    return _BeersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BeersProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BeersRef on AutoDisposeFutureProviderRef<List<Beer>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _BeersProviderElement extends AutoDisposeFutureProviderElement<List<Beer>>
    with BeersRef {
  _BeersProviderElement(super.provider);

  @override
  int get page => (origin as BeersProvider).page;
}

String _$beerHash() => r'e73a6aba5e15ac1d39861c3769f78a82721490f6';

/// See also [beer].
@ProviderFor(beer)
const beerProvider = BeerFamily();

/// See also [beer].
class BeerFamily extends Family<AsyncValue<Beer?>> {
  /// See also [beer].
  const BeerFamily();

  /// See also [beer].
  BeerProvider call(
    int index,
  ) {
    return BeerProvider(
      index,
    );
  }

  @override
  BeerProvider getProviderOverride(
    covariant BeerProvider provider,
  ) {
    return call(
      provider.index,
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
  String? get name => r'beerProvider';
}

/// See also [beer].
class BeerProvider extends AutoDisposeFutureProvider<Beer?> {
  /// See also [beer].
  BeerProvider(
    int index,
  ) : this._internal(
          (ref) => beer(
            ref as BeerRef,
            index,
          ),
          from: beerProvider,
          name: r'beerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$beerHash,
          dependencies: BeerFamily._dependencies,
          allTransitiveDependencies: BeerFamily._allTransitiveDependencies,
          index: index,
        );

  BeerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
  }) : super.internal();

  final int index;

  @override
  Override overrideWith(
    FutureOr<Beer?> Function(BeerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BeerProvider._internal(
        (ref) => create(ref as BeerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Beer?> createElement() {
    return _BeerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BeerProvider && other.index == index;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BeerRef on AutoDisposeFutureProviderRef<Beer?> {
  /// The parameter `index` of this provider.
  int get index;
}

class _BeerProviderElement extends AutoDisposeFutureProviderElement<Beer?>
    with BeerRef {
  _BeerProviderElement(super.provider);

  @override
  int get index => (origin as BeerProvider).index;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
