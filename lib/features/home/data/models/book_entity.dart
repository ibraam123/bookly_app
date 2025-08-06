import 'package:bookly_app/generated/json/base/json_field.dart';
import 'package:bookly_app/generated/json/book_entity.g.dart';
import 'dart:convert';
export 'package:bookly_app/generated/json/book_entity.g.dart';

@JsonSerializable()
class BookEntity {
	String? id;
	String? title;
	List<String>? authors;
	String? publisher;
	String? publishedDate;
	String? description;
	List<String>? categories;
	String? language;
	int? pageCount;
	String? printType;
	String? maturityRating;
	String? previewLink;
	String? infoLink;
	String? canonicalVolumeLink;
	List<BookIndustryIdentifiers>? industryIdentifiers;
	BookImageLinks? imageLinks;
	BookSaleInfo? saleInfo;
	BookAccessInfo? accessInfo;
	String? searchSnippet;

	BookEntity();

	factory BookEntity.fromJson(Map<String, dynamic> json) => $BookEntityFromJson(json);

	Map<String, dynamic> toJson() => $BookEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookIndustryIdentifiers {
	String? type;
	String? identifier;

	BookIndustryIdentifiers();

	factory BookIndustryIdentifiers.fromJson(Map<String, dynamic> json) => $BookIndustryIdentifiersFromJson(json);

	Map<String, dynamic> toJson() => $BookIndustryIdentifiersToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookImageLinks {
	String? smallThumbnail;
	String? thumbnail;

	BookImageLinks();

	factory BookImageLinks.fromJson(Map<String, dynamic> json) => $BookImageLinksFromJson(json);

	Map<String, dynamic> toJson() => $BookImageLinksToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookSaleInfo {
	String? country;
	String? saleability;
	bool? isEbook;

	BookSaleInfo();

	factory BookSaleInfo.fromJson(Map<String, dynamic> json) => $BookSaleInfoFromJson(json);

	Map<String, dynamic> toJson() => $BookSaleInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookAccessInfo {
	String? viewability;
	bool? embeddable;
	bool? publicDomain;
	String? textToSpeechPermission;
	BookAccessInfoPdf? pdf;
	String? webReaderLink;

	BookAccessInfo();

	factory BookAccessInfo.fromJson(Map<String, dynamic> json) => $BookAccessInfoFromJson(json);

	Map<String, dynamic> toJson() => $BookAccessInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookAccessInfoPdf {
	bool? isAvailable;
	String? acsTokenLink;

	BookAccessInfoPdf();

	factory BookAccessInfoPdf.fromJson(Map<String, dynamic> json) => $BookAccessInfoPdfFromJson(json);

	Map<String, dynamic> toJson() => $BookAccessInfoPdfToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}