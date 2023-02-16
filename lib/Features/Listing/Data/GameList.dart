class GameListModel {
  GameListModel({
    required this.count,
    required this.next,
    this.previous,
    required this.results,
    required this.seoTitle,
    required this.seoDescription,
    required this.seoKeywords,
    required this.seoH1,
    required this.noindex,
    required this.nofollow,
    required this.description,
    required this.filters,
    required this.nofollowCollections,
  });
  late final int count;
  late final String next;
  late final Null previous;
  late final List<Results> results;
  late final String seoTitle;
  late final String seoDescription;
  late final String seoKeywords;
  late final String seoH1;
  late final bool noindex;
  late final bool nofollow;
  late final String description;
  late final Filters filters;
  late final List<String> nofollowCollections;

  GameListModel.fromJson(Map<String, dynamic> json){
    count = json['count'];
    next = json['next'];
    previous = null;
    results = List.from(json['results']).map((e)=>Results.fromJson(e)).toList();
    seoTitle = json['seo_title'];
    seoDescription = json['seo_description'];
    seoKeywords = json['seo_keywords'];
    seoH1 = json['seo_h1'];
    noindex = json['noindex'];
    nofollow = json['nofollow'];
    description = json['description'];
    filters = Filters.fromJson(json['filters']);
    nofollowCollections = List.castFrom<dynamic, String>(json['nofollow_collections']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['count'] = count;
    _data['next'] = next;
    _data['previous'] = previous;
    _data['results'] = results.map((e)=>e.toJson()).toList();
    _data['seo_title'] = seoTitle;
    _data['seo_description'] = seoDescription;
    _data['seo_keywords'] = seoKeywords;
    _data['seo_h1'] = seoH1;
    _data['noindex'] = noindex;
    _data['nofollow'] = nofollow;
    _data['description'] = description;
    _data['filters'] = filters.toJson();
    _data['nofollow_collections'] = nofollowCollections;
    return _data;
  }
}

class Results {
  Results({
    required this.id,
    required this.slug,
    required this.name,
    required this.released,
    required this.tba,
    required this.backgroundImage,
    required this.rating,
    required this.ratingTop,
    required this.ratings,
    required this.ratingsCount,
    required this.reviewsTextCount,
    required this.added,
    required this.addedByStatus,
    required this.metacritic,
    required this.playtime,
    required this.suggestionsCount,
    required this.updated,
    this.userGame,
    required this.reviewsCount,
    required this.saturatedColor,
    required this.dominantColor,
    required this.platforms,
    required this.parentPlatforms,
    required this.genres,
    required this.stores,
    this.clip,
    required this.tags,
    required this.esrbRating,
    required this.shortScreenshots,
  });
  late final int id;
  late final String slug;
  late final String name;
  late final String released;
  late final bool tba;
  late final String backgroundImage;
  late final double rating;
  late final int ratingTop;
  late final List<Ratings> ratings;
  late final int ratingsCount;
  late final int reviewsTextCount;
  late final int added;
  late final AddedByStatus addedByStatus;
  late final int metacritic;
  late final int playtime;
  late final int suggestionsCount;
  late final String updated;
  late final Null userGame;
  late final int reviewsCount;
  late final String saturatedColor;
  late final String dominantColor;
  late final List<Platforms> platforms;
  late final List<ParentPlatforms> parentPlatforms;
  late final List<Genres> genres;
  late final List<Stores> stores;
  late final Null clip;
  late final List<Tags> tags;
  late final EsrbRating esrbRating;
  late final List<ShortScreenshots> shortScreenshots;

  Results.fromJson(Map<String, dynamic> json){
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
    released = json['released'];
    tba = json['tba'];
    backgroundImage = json['background_image'];
    rating = json['rating'];
    ratingTop = json['rating_top'];
    ratings = List.from(json['ratings']).map((e)=>Ratings.fromJson(e)).toList();
    ratingsCount = json['ratings_count'];
    reviewsTextCount = json['reviews_text_count'];
    added = json['added'];
    addedByStatus = AddedByStatus.fromJson(json['added_by_status']);
    metacritic = json['metacritic'];
    playtime = json['playtime'];
    suggestionsCount = json['suggestions_count'];
    updated = json['updated'];
    userGame = null;
    reviewsCount = json['reviews_count'];
    saturatedColor = json['saturated_color'];
    dominantColor = json['dominant_color'];
    platforms = List.from(json['platforms']).map((e)=>Platforms.fromJson(e)).toList();
    parentPlatforms = List.from(json['parent_platforms']).map((e)=>ParentPlatforms.fromJson(e)).toList();
    genres = List.from(json['genres']).map((e)=>Genres.fromJson(e)).toList();
    stores = List.from(json['stores']).map((e)=>Stores.fromJson(e)).toList();
    clip = null;
    tags = List.from(json['tags']).map((e)=>Tags.fromJson(e)).toList();
    esrbRating = EsrbRating.fromJson(json['esrb_rating']);
    shortScreenshots = List.from(json['short_screenshots']).map((e)=>ShortScreenshots.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['slug'] = slug;
    _data['name'] = name;
    _data['released'] = released;
    _data['tba'] = tba;
    _data['background_image'] = backgroundImage;
    _data['rating'] = rating;
    _data['rating_top'] = ratingTop;
    _data['ratings'] = ratings.map((e)=>e.toJson()).toList();
    _data['ratings_count'] = ratingsCount;
    _data['reviews_text_count'] = reviewsTextCount;
    _data['added'] = added;
    _data['added_by_status'] = addedByStatus.toJson();
    _data['metacritic'] = metacritic;
    _data['playtime'] = playtime;
    _data['suggestions_count'] = suggestionsCount;
    _data['updated'] = updated;
    _data['user_game'] = userGame;
    _data['reviews_count'] = reviewsCount;
    _data['saturated_color'] = saturatedColor;
    _data['dominant_color'] = dominantColor;
    _data['platforms'] = platforms.map((e)=>e.toJson()).toList();
    _data['parent_platforms'] = parentPlatforms.map((e)=>e.toJson()).toList();
    _data['genres'] = genres.map((e)=>e.toJson()).toList();
    _data['stores'] = stores.map((e)=>e.toJson()).toList();
    _data['clip'] = clip;
    _data['tags'] = tags.map((e)=>e.toJson()).toList();
    _data['esrb_rating'] = esrbRating.toJson();
    _data['short_screenshots'] = shortScreenshots.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Ratings {
  Ratings({
    required this.id,
    required this.title,
    required this.count,
    required this.percent,
  });
  late final int id;
  late final String title;
  late final int count;
  late final double percent;

  Ratings.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    count = json['count'];
    percent = json['percent'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['count'] = count;
    _data['percent'] = percent;
    return _data;
  }
}

class AddedByStatus {
  AddedByStatus({
    required this.yet,
    required this.owned,
    required this.beaten,
    required this.toplay,
    required this.dropped,
    required this.playing,
  });
  late final int yet;
  late final int owned;
  late final int beaten;
  late final int toplay;
  late final int dropped;
  late final int playing;

  AddedByStatus.fromJson(Map<String, dynamic> json){
    yet = json['yet'];
    owned = json['owned'];
    beaten = json['beaten'];
    toplay = json['toplay'];
    dropped = json['dropped'];
    playing = json['playing'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['yet'] = yet;
    _data['owned'] = owned;
    _data['beaten'] = beaten;
    _data['toplay'] = toplay;
    _data['dropped'] = dropped;
    _data['playing'] = playing;
    return _data;
  }
}

class Platforms {
  Platforms({
    required this.platform,
    required this.releasedAt,
    this.requirementsEn,
    this.requirementsRu,
  });
  late final Platform platform;
  late final String releasedAt;
  late final RequirementsEn? requirementsEn;
  late final Null requirementsRu;

  Platforms.fromJson(Map<String, dynamic> json){
    platform = Platform.fromJson(json['platform']);
    releasedAt = json['released_at'];
    requirementsEn = null;
    requirementsRu = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['platform'] = platform.toJson();
    _data['released_at'] = releasedAt;
    _data['requirements_en'] = requirementsEn;
    _data['requirements_ru'] = requirementsRu;
    return _data;
  }
}

class Platform {
  Platform({
    required this.id,
    required this.name,
    required this.slug,
    this.image,
    this.yearEnd,
    this.yearStart,
    required this.gamesCount,
    required this.imageBackground,
  });
  late final int id;
  late final String name;
  late final String slug;
  late final Null image;
  late final Null yearEnd;
  late final int? yearStart;
  late final int gamesCount;
  late final String imageBackground;

  Platform.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    image = null;
    yearEnd = null;
    yearStart = null;
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['slug'] = slug;
    _data['image'] = image;
    _data['year_end'] = yearEnd;
    _data['year_start'] = yearStart;
    _data['games_count'] = gamesCount;
    _data['image_background'] = imageBackground;
    return _data;
  }
}

class RequirementsEn {
  RequirementsEn({
    required this.minimum,
    required this.recommended,
  });
  late final String minimum;
  late final String recommended;

  RequirementsEn.fromJson(Map<String, dynamic> json){
    minimum = json['minimum'];
    recommended = json['recommended'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['minimum'] = minimum;
    _data['recommended'] = recommended;
    return _data;
  }
}

class ParentPlatforms {
  ParentPlatforms({
    required this.platform,
  });
  late final Platform platform;

  ParentPlatforms.fromJson(Map<String, dynamic> json){
    platform = Platform.fromJson(json['platform']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['platform'] = platform.toJson();
    return _data;
  }
}

class Genres {
  Genres({
    required this.id,
    required this.name,
    required this.slug,
    required this.gamesCount,
    required this.imageBackground,
  });
  late final int id;
  late final String name;
  late final String slug;
  late final int gamesCount;
  late final String imageBackground;

  Genres.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['slug'] = slug;
    _data['games_count'] = gamesCount;
    _data['image_background'] = imageBackground;
    return _data;
  }
}

class Stores {
  Stores({
    required this.id,
    required this.store,
  });
  late final int id;
  late final Store store;

  Stores.fromJson(Map<String, dynamic> json){
    id = json['id'];
    store = Store.fromJson(json['store']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['store'] = store.toJson();
    return _data;
  }
}

class Store {
  Store({
    required this.id,
    required this.name,
    required this.slug,
    required this.domain,
    required this.gamesCount,
    required this.imageBackground,
  });
  late final int id;
  late final String name;
  late final String slug;
  late final String domain;
  late final int gamesCount;
  late final String imageBackground;

  Store.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    domain = json['domain'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['slug'] = slug;
    _data['domain'] = domain;
    _data['games_count'] = gamesCount;
    _data['image_background'] = imageBackground;
    return _data;
  }
}

class Tags {
  Tags({
    required this.id,
    required this.name,
    required this.slug,
    required this.language,
    required this.gamesCount,
    required this.imageBackground,
  });
  late final int id;
  late final String name;
  late final String slug;
  late final String language;
  late final int gamesCount;
  late final String imageBackground;

  Tags.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    language = json['language'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['slug'] = slug;
    _data['language'] = language;
    _data['games_count'] = gamesCount;
    _data['image_background'] = imageBackground;
    return _data;
  }
}

class EsrbRating {
  EsrbRating({
    required this.id,
    required this.name,
    required this.slug,
  });
  late final int id;
  late final String name;
  late final String slug;

  EsrbRating.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['slug'] = slug;
    return _data;
  }
}

class ShortScreenshots {
  ShortScreenshots({
    required this.id,
    required this.image,
  });
  late final int id;
  late final String image;

  ShortScreenshots.fromJson(Map<String, dynamic> json){
    id = json['id'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['image'] = image;
    return _data;
  }
}

class Filters {
  Filters({
    required this.years,
  });
  late final List<Years> years;

  Filters.fromJson(Map<String, dynamic> json){
    years = List.from(json['years']).map((e)=>Years.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['years'] = years.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Years {
  Years({
    required this.from,
    required this.to,
    required this.filter,
    required this.decade,
    required this.years,
    required this.nofollow,
    required this.count,
  });
  late final int from;
  late final int to;
  late final String filter;
  late final int decade;
  late final List<Years> years;
  late final bool nofollow;
  late final int count;

  Years.fromJson(Map<String, dynamic> json){
    from = json['from'];
    to = json['to'];
    filter = json['filter'];
    decade = json['decade'];
    years = List.from(json['years']).map((e)=>Years.fromJson(e)).toList();
    nofollow = json['nofollow'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['from'] = from;
    _data['to'] = to;
    _data['filter'] = filter;
    _data['decade'] = decade;
    _data['years'] = years.map((e)=>e.toJson()).toList();
    _data['nofollow'] = nofollow;
    _data['count'] = count;
    return _data;
  }
}