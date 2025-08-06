import 'package:bookly_app/generated/json/base/json_convert_content.dart';
import 'package:bookly_app/features/home/data/models/book_entity.dart';

BookEntity $BookEntityFromJson(Map<String, dynamic> json) {
  final BookEntity bookEntity = BookEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    bookEntity.id = id;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    bookEntity.title = title;
  }
  final List<String>? authors = (json['authors'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (authors != null) {
    bookEntity.authors = authors;
  }
  final String? publisher = jsonConvert.convert<String>(json['publisher']);
  if (publisher != null) {
    bookEntity.publisher = publisher;
  }
  final String? publishedDate = jsonConvert.convert<String>(
      json['publishedDate']);
  if (publishedDate != null) {
    bookEntity.publishedDate = publishedDate;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    bookEntity.description = description;
  }
  final List<String>? categories = (json['categories'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (categories != null) {
    bookEntity.categories = categories;
  }
  final String? language = jsonConvert.convert<String>(json['language']);
  if (language != null) {
    bookEntity.language = language;
  }
  final int? pageCount = jsonConvert.convert<int>(json['pageCount']);
  if (pageCount != null) {
    bookEntity.pageCount = pageCount;
  }
  final String? printType = jsonConvert.convert<String>(json['printType']);
  if (printType != null) {
    bookEntity.printType = printType;
  }
  final String? maturityRating = jsonConvert.convert<String>(
      json['maturityRating']);
  if (maturityRating != null) {
    bookEntity.maturityRating = maturityRating;
  }
  final String? previewLink = jsonConvert.convert<String>(json['previewLink']);
  if (previewLink != null) {
    bookEntity.previewLink = previewLink;
  }
  final String? infoLink = jsonConvert.convert<String>(json['infoLink']);
  if (infoLink != null) {
    bookEntity.infoLink = infoLink;
  }
  final String? canonicalVolumeLink = jsonConvert.convert<String>(
      json['canonicalVolumeLink']);
  if (canonicalVolumeLink != null) {
    bookEntity.canonicalVolumeLink = canonicalVolumeLink;
  }
  final List<
      BookIndustryIdentifiers>? industryIdentifiers = (json['industryIdentifiers'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<BookIndustryIdentifiers>(
          e) as BookIndustryIdentifiers).toList();
  if (industryIdentifiers != null) {
    bookEntity.industryIdentifiers = industryIdentifiers;
  }
  final BookImageLinks? imageLinks = jsonConvert.convert<BookImageLinks>(
      json['imageLinks']);
  if (imageLinks != null) {
    bookEntity.imageLinks = imageLinks;
  }
  final BookSaleInfo? saleInfo = jsonConvert.convert<BookSaleInfo>(
      json['saleInfo']);
  if (saleInfo != null) {
    bookEntity.saleInfo = saleInfo;
  }
  final BookAccessInfo? accessInfo = jsonConvert.convert<BookAccessInfo>(
      json['accessInfo']);
  if (accessInfo != null) {
    bookEntity.accessInfo = accessInfo;
  }
  final String? searchSnippet = jsonConvert.convert<String>(
      json['searchSnippet']);
  if (searchSnippet != null) {
    bookEntity.searchSnippet = searchSnippet;
  }
  return bookEntity;
}

Map<String, dynamic> $BookEntityToJson(BookEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['title'] = entity.title;
  data['authors'] = entity.authors;
  data['publisher'] = entity.publisher;
  data['publishedDate'] = entity.publishedDate;
  data['description'] = entity.description;
  data['categories'] = entity.categories;
  data['language'] = entity.language;
  data['pageCount'] = entity.pageCount;
  data['printType'] = entity.printType;
  data['maturityRating'] = entity.maturityRating;
  data['previewLink'] = entity.previewLink;
  data['infoLink'] = entity.infoLink;
  data['canonicalVolumeLink'] = entity.canonicalVolumeLink;
  data['industryIdentifiers'] =
      entity.industryIdentifiers?.map((v) => v.toJson()).toList();
  data['imageLinks'] = entity.imageLinks?.toJson();
  data['saleInfo'] = entity.saleInfo?.toJson();
  data['accessInfo'] = entity.accessInfo?.toJson();
  data['searchSnippet'] = entity.searchSnippet;
  return data;
}

extension BookEntityExtension on BookEntity {
  BookEntity copyWith({
    String? id,
    String? title,
    List<String>? authors,
    String? publisher,
    String? publishedDate,
    String? description,
    List<String>? categories,
    String? language,
    int? pageCount,
    String? printType,
    String? maturityRating,
    String? previewLink,
    String? infoLink,
    String? canonicalVolumeLink,
    List<BookIndustryIdentifiers>? industryIdentifiers,
    BookImageLinks? imageLinks,
    BookSaleInfo? saleInfo,
    BookAccessInfo? accessInfo,
    String? searchSnippet,
  }) {
    return BookEntity()
      ..id = id ?? this.id
      ..title = title ?? this.title
      ..authors = authors ?? this.authors
      ..publisher = publisher ?? this.publisher
      ..publishedDate = publishedDate ?? this.publishedDate
      ..description = description ?? this.description
      ..categories = categories ?? this.categories
      ..language = language ?? this.language
      ..pageCount = pageCount ?? this.pageCount
      ..printType = printType ?? this.printType
      ..maturityRating = maturityRating ?? this.maturityRating
      ..previewLink = previewLink ?? this.previewLink
      ..infoLink = infoLink ?? this.infoLink
      ..canonicalVolumeLink = canonicalVolumeLink ?? this.canonicalVolumeLink
      ..industryIdentifiers = industryIdentifiers ?? this.industryIdentifiers
      ..imageLinks = imageLinks ?? this.imageLinks
      ..saleInfo = saleInfo ?? this.saleInfo
      ..accessInfo = accessInfo ?? this.accessInfo
      ..searchSnippet = searchSnippet ?? this.searchSnippet;
  }
}

BookIndustryIdentifiers $BookIndustryIdentifiersFromJson(
    Map<String, dynamic> json) {
  final BookIndustryIdentifiers bookIndustryIdentifiers = BookIndustryIdentifiers();
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    bookIndustryIdentifiers.type = type;
  }
  final String? identifier = jsonConvert.convert<String>(json['identifier']);
  if (identifier != null) {
    bookIndustryIdentifiers.identifier = identifier;
  }
  return bookIndustryIdentifiers;
}

Map<String, dynamic> $BookIndustryIdentifiersToJson(
    BookIndustryIdentifiers entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['type'] = entity.type;
  data['identifier'] = entity.identifier;
  return data;
}

extension BookIndustryIdentifiersExtension on BookIndustryIdentifiers {
  BookIndustryIdentifiers copyWith({
    String? type,
    String? identifier,
  }) {
    return BookIndustryIdentifiers()
      ..type = type ?? this.type
      ..identifier = identifier ?? this.identifier;
  }
}

BookImageLinks $BookImageLinksFromJson(Map<String, dynamic> json) {
  final BookImageLinks bookImageLinks = BookImageLinks();
  final String? smallThumbnail = jsonConvert.convert<String>(
      json['smallThumbnail']);
  if (smallThumbnail != null) {
    bookImageLinks.smallThumbnail = smallThumbnail;
  }
  final String? thumbnail = jsonConvert.convert<String>(json['thumbnail']);
  if (thumbnail != null) {
    bookImageLinks.thumbnail = thumbnail;
  }
  return bookImageLinks;
}

Map<String, dynamic> $BookImageLinksToJson(BookImageLinks entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['smallThumbnail'] = entity.smallThumbnail;
  data['thumbnail'] = entity.thumbnail;
  return data;
}

extension BookImageLinksExtension on BookImageLinks {
  BookImageLinks copyWith({
    String? smallThumbnail,
    String? thumbnail,
  }) {
    return BookImageLinks()
      ..smallThumbnail = smallThumbnail ?? this.smallThumbnail
      ..thumbnail = thumbnail ?? this.thumbnail;
  }
}

BookSaleInfo $BookSaleInfoFromJson(Map<String, dynamic> json) {
  final BookSaleInfo bookSaleInfo = BookSaleInfo();
  final String? country = jsonConvert.convert<String>(json['country']);
  if (country != null) {
    bookSaleInfo.country = country;
  }
  final String? saleability = jsonConvert.convert<String>(json['saleability']);
  if (saleability != null) {
    bookSaleInfo.saleability = saleability;
  }
  final bool? isEbook = jsonConvert.convert<bool>(json['isEbook']);
  if (isEbook != null) {
    bookSaleInfo.isEbook = isEbook;
  }
  return bookSaleInfo;
}

Map<String, dynamic> $BookSaleInfoToJson(BookSaleInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['country'] = entity.country;
  data['saleability'] = entity.saleability;
  data['isEbook'] = entity.isEbook;
  return data;
}

extension BookSaleInfoExtension on BookSaleInfo {
  BookSaleInfo copyWith({
    String? country,
    String? saleability,
    bool? isEbook,
  }) {
    return BookSaleInfo()
      ..country = country ?? this.country
      ..saleability = saleability ?? this.saleability
      ..isEbook = isEbook ?? this.isEbook;
  }
}

BookAccessInfo $BookAccessInfoFromJson(Map<String, dynamic> json) {
  final BookAccessInfo bookAccessInfo = BookAccessInfo();
  final String? viewability = jsonConvert.convert<String>(json['viewability']);
  if (viewability != null) {
    bookAccessInfo.viewability = viewability;
  }
  final bool? embeddable = jsonConvert.convert<bool>(json['embeddable']);
  if (embeddable != null) {
    bookAccessInfo.embeddable = embeddable;
  }
  final bool? publicDomain = jsonConvert.convert<bool>(json['publicDomain']);
  if (publicDomain != null) {
    bookAccessInfo.publicDomain = publicDomain;
  }
  final String? textToSpeechPermission = jsonConvert.convert<String>(
      json['textToSpeechPermission']);
  if (textToSpeechPermission != null) {
    bookAccessInfo.textToSpeechPermission = textToSpeechPermission;
  }
  final BookAccessInfoPdf? pdf = jsonConvert.convert<BookAccessInfoPdf>(
      json['pdf']);
  if (pdf != null) {
    bookAccessInfo.pdf = pdf;
  }
  final String? webReaderLink = jsonConvert.convert<String>(
      json['webReaderLink']);
  if (webReaderLink != null) {
    bookAccessInfo.webReaderLink = webReaderLink;
  }
  return bookAccessInfo;
}

Map<String, dynamic> $BookAccessInfoToJson(BookAccessInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['viewability'] = entity.viewability;
  data['embeddable'] = entity.embeddable;
  data['publicDomain'] = entity.publicDomain;
  data['textToSpeechPermission'] = entity.textToSpeechPermission;
  data['pdf'] = entity.pdf?.toJson();
  data['webReaderLink'] = entity.webReaderLink;
  return data;
}

extension BookAccessInfoExtension on BookAccessInfo {
  BookAccessInfo copyWith({
    String? viewability,
    bool? embeddable,
    bool? publicDomain,
    String? textToSpeechPermission,
    BookAccessInfoPdf? pdf,
    String? webReaderLink,
  }) {
    return BookAccessInfo()
      ..viewability = viewability ?? this.viewability
      ..embeddable = embeddable ?? this.embeddable
      ..publicDomain = publicDomain ?? this.publicDomain
      ..textToSpeechPermission = textToSpeechPermission ??
          this.textToSpeechPermission
      ..pdf = pdf ?? this.pdf
      ..webReaderLink = webReaderLink ?? this.webReaderLink;
  }
}

BookAccessInfoPdf $BookAccessInfoPdfFromJson(Map<String, dynamic> json) {
  final BookAccessInfoPdf bookAccessInfoPdf = BookAccessInfoPdf();
  final bool? isAvailable = jsonConvert.convert<bool>(json['isAvailable']);
  if (isAvailable != null) {
    bookAccessInfoPdf.isAvailable = isAvailable;
  }
  final String? acsTokenLink = jsonConvert.convert<String>(
      json['acsTokenLink']);
  if (acsTokenLink != null) {
    bookAccessInfoPdf.acsTokenLink = acsTokenLink;
  }
  return bookAccessInfoPdf;
}

Map<String, dynamic> $BookAccessInfoPdfToJson(BookAccessInfoPdf entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['isAvailable'] = entity.isAvailable;
  data['acsTokenLink'] = entity.acsTokenLink;
  return data;
}

extension BookAccessInfoPdfExtension on BookAccessInfoPdf {
  BookAccessInfoPdf copyWith({
    bool? isAvailable,
    String? acsTokenLink,
  }) {
    return BookAccessInfoPdf()
      ..isAvailable = isAvailable ?? this.isAvailable
      ..acsTokenLink = acsTokenLink ?? this.acsTokenLink;
  }
}