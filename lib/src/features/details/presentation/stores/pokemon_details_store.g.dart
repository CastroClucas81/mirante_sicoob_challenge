// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PokemonDetailsStore on PokemonDetailsStoreBase, Store {
  late final _$stateAtom =
      Atom(name: 'PokemonDetailsStoreBase.state', context: context);

  @override
  DetailsState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(DetailsState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  late final _$startAsyncAction =
      AsyncAction('PokemonDetailsStoreBase.start', context: context);

  @override
  Future<void> start({required String pokemonName}) {
    return _$startAsyncAction.run(() => super.start(pokemonName: pokemonName));
  }

  @override
  String toString() {
    return '''
state: ${state}
    ''';
  }
}
