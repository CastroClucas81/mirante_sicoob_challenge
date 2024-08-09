class IndexPokemonParams {
  final int offset;
  final int limit;
  final String? search;

  IndexPokemonParams({
    required this.offset,
    required this.limit,
    this.search,
  });

  IndexPokemonParams copyWith({
    int? offset,
    int? limit,
    String? search,
  }) {
    return IndexPokemonParams(
      offset: offset ?? this.offset,
      limit: limit ?? this.limit,
      search: search ?? this.search,
    );
  }
}
