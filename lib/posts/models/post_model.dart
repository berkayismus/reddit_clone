// To parse this JSON data, do
//
//     final postsModel = postsModelFromJson(jsonString);

import 'dart:convert';

PostsModel postsModelFromJson(String str) =>
    PostsModel.fromJson(json.decode(str));

String postsModelToJson(PostsModel data) => json.encode(data.toJson());

class PostsModel {
  final String? kind;
  final PostsModelData? data;

  PostsModel({
    this.kind,
    this.data,
  });

  factory PostsModel.fromJson(Map<String, dynamic> json) => PostsModel(
        kind: json["kind"],
        data:
            json["data"] == null ? null : PostsModelData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "data": data?.toJson(),
      };
}

class PostsModelData {
  final dynamic after;
  final int? dist;
  final String? modhash;
  final String? geoFilter;
  final List<Child>? children;
  final String? before;

  PostsModelData({
    this.after,
    this.dist,
    this.modhash,
    this.geoFilter,
    this.children,
    this.before,
  });

  factory PostsModelData.fromJson(Map<String, dynamic> json) => PostsModelData(
        after: json["after"],
        dist: json["dist"],
        modhash: json["modhash"],
        geoFilter: json["geo_filter"],
        children: json["children"] == null
            ? []
            : List<Child>.from(json["children"]!.map((x) => Child.fromJson(x))),
        before: json["before"],
      );

  Map<String, dynamic> toJson() => {
        "after": after,
        "dist": dist,
        "modhash": modhash,
        "geo_filter": geoFilter,
        "children": children == null
            ? []
            : List<dynamic>.from(children!.map((x) => x.toJson())),
        "before": before,
      };
}

class Child {
  final Kind? kind;
  final ChildData? data;

  Child({
    this.kind,
    this.data,
  });

  factory Child.fromJson(Map<String, dynamic> json) => Child(
        kind: kindValues.map[json["kind"]]!,
        data: json["data"] == null ? null : ChildData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kindValues.reverse[kind],
        "data": data?.toJson(),
      };
}

class ChildData {
  final dynamic approvedAtUtc;
  final Subreddit? subreddit;
  final String? selftext;
  final String? authorFullname;
  final bool? saved;
  final dynamic modReasonTitle;
  final int? gilded;
  final bool? clicked;
  final String? title;
  final List<dynamic>? linkFlairRichtext;
  final SubredditNamePrefixed? subredditNamePrefixed;
  final bool? hidden;
  final int? pwls;
  final String? linkFlairCssClass;
  final int? downs;
  final int? thumbnailHeight;
  final dynamic topAwardedType;
  final bool? hideScore;
  final String? name;
  final bool? quarantine;
  final LinkFlairTextColor? linkFlairTextColor;
  final double? upvoteRatio;
  final String? authorFlairBackgroundColor;
  final SubredditType? subredditType;
  final int? ups;
  final int? totalAwardsReceived;
  final MediaEmbed? mediaEmbed;
  final int? thumbnailWidth;
  final dynamic authorFlairTemplateId;
  final bool? isOriginalContent;
  final List<dynamic>? userReports;
  final Media? secureMedia;
  final bool? isRedditMediaDomain;
  final bool? isMeta;
  final dynamic category;
  final MediaEmbed? secureMediaEmbed;
  final String? linkFlairText;
  final bool? canModPost;
  final int? score;
  final dynamic approvedBy;
  final bool? isCreatedFromAdsUi;
  final bool? authorPremium;
  final String? thumbnail;
  final bool? edited;
  final AuthorFlairCssClass? authorFlairCssClass;
  final List<dynamic>? authorFlairRichtext;
  final Gildings? gildings;
  final dynamic contentCategories;
  final bool? isSelf;
  final dynamic modNote;
  final int? created;
  final FlairType? linkFlairType;
  final int? wls;
  final dynamic removedByCategory;
  final dynamic bannedBy;
  final FlairType? authorFlairType;
  final Domain? domain;
  final bool? allowLiveComments;
  final String? selftextHtml;
  final dynamic likes;
  final dynamic suggestedSort;
  final dynamic bannedAtUtc;
  final dynamic viewCount;
  final bool? archived;
  final bool? noFollow;
  final bool? isCrosspostable;
  final bool? pinned;
  final bool? over18;
  final List<dynamic>? allAwardings;
  final List<dynamic>? awarders;
  final bool? mediaOnly;
  final String? linkFlairTemplateId;
  final bool? canGild;
  final bool? spoiler;
  final bool? locked;
  final String? authorFlairText;
  final List<dynamic>? treatmentTags;
  final bool? visited;
  final dynamic removedBy;
  final dynamic numReports;
  final dynamic distinguished;
  final SubredditId? subredditId;
  final bool? authorIsBlocked;
  final dynamic modReasonBy;
  final dynamic removalReason;
  final String? linkFlairBackgroundColor;
  final String? id;
  final bool? isRobotIndexable;
  final dynamic reportReasons;
  final String? author;
  final dynamic discussionType;
  final int? numComments;
  final bool? sendReplies;
  final WhitelistStatus? whitelistStatus;
  final bool? contestMode;
  final List<dynamic>? modReports;
  final bool? authorPatreonFlair;
  final AuthorFlairTextColor? authorFlairTextColor;
  final String? permalink;
  final WhitelistStatus? parentWhitelistStatus;
  final bool? stickied;
  final String? url;
  final int? subredditSubscribers;
  final int? createdUtc;
  final int? numCrossposts;
  final Media? media;
  final bool? isVideo;
  final String? postHint;
  final Preview? preview;
  final String? urlOverriddenByDest;

  ChildData({
    this.approvedAtUtc,
    this.subreddit,
    this.selftext,
    this.authorFullname,
    this.saved,
    this.modReasonTitle,
    this.gilded,
    this.clicked,
    this.title,
    this.linkFlairRichtext,
    this.subredditNamePrefixed,
    this.hidden,
    this.pwls,
    this.linkFlairCssClass,
    this.downs,
    this.thumbnailHeight,
    this.topAwardedType,
    this.hideScore,
    this.name,
    this.quarantine,
    this.linkFlairTextColor,
    this.upvoteRatio,
    this.authorFlairBackgroundColor,
    this.subredditType,
    this.ups,
    this.totalAwardsReceived,
    this.mediaEmbed,
    this.thumbnailWidth,
    this.authorFlairTemplateId,
    this.isOriginalContent,
    this.userReports,
    this.secureMedia,
    this.isRedditMediaDomain,
    this.isMeta,
    this.category,
    this.secureMediaEmbed,
    this.linkFlairText,
    this.canModPost,
    this.score,
    this.approvedBy,
    this.isCreatedFromAdsUi,
    this.authorPremium,
    this.thumbnail,
    this.edited,
    this.authorFlairCssClass,
    this.authorFlairRichtext,
    this.gildings,
    this.contentCategories,
    this.isSelf,
    this.modNote,
    this.created,
    this.linkFlairType,
    this.wls,
    this.removedByCategory,
    this.bannedBy,
    this.authorFlairType,
    this.domain,
    this.allowLiveComments,
    this.selftextHtml,
    this.likes,
    this.suggestedSort,
    this.bannedAtUtc,
    this.viewCount,
    this.archived,
    this.noFollow,
    this.isCrosspostable,
    this.pinned,
    this.over18,
    this.allAwardings,
    this.awarders,
    this.mediaOnly,
    this.linkFlairTemplateId,
    this.canGild,
    this.spoiler,
    this.locked,
    this.authorFlairText,
    this.treatmentTags,
    this.visited,
    this.removedBy,
    this.numReports,
    this.distinguished,
    this.subredditId,
    this.authorIsBlocked,
    this.modReasonBy,
    this.removalReason,
    this.linkFlairBackgroundColor,
    this.id,
    this.isRobotIndexable,
    this.reportReasons,
    this.author,
    this.discussionType,
    this.numComments,
    this.sendReplies,
    this.whitelistStatus,
    this.contestMode,
    this.modReports,
    this.authorPatreonFlair,
    this.authorFlairTextColor,
    this.permalink,
    this.parentWhitelistStatus,
    this.stickied,
    this.url,
    this.subredditSubscribers,
    this.createdUtc,
    this.numCrossposts,
    this.media,
    this.isVideo,
    this.postHint,
    this.preview,
    this.urlOverriddenByDest,
  });

  factory ChildData.fromJson(Map<String, dynamic> json) => ChildData(
        approvedAtUtc: json["approved_at_utc"],
        subreddit: subredditValues.map[json["subreddit"]]!,
        selftext: json["selftext"],
        authorFullname: json["author_fullname"],
        saved: json["saved"],
        modReasonTitle: json["mod_reason_title"],
        gilded: json["gilded"],
        clicked: json["clicked"],
        title: json["title"],
        linkFlairRichtext: json["link_flair_richtext"] == null
            ? []
            : List<dynamic>.from(json["link_flair_richtext"]!.map((x) => x)),
        subredditNamePrefixed:
            subredditNamePrefixedValues.map[json["subreddit_name_prefixed"]]!,
        hidden: json["hidden"],
        pwls: json["pwls"],
        linkFlairCssClass: json["link_flair_css_class"],
        downs: json["downs"],
        thumbnailHeight: json["thumbnail_height"],
        topAwardedType: json["top_awarded_type"],
        hideScore: json["hide_score"],
        name: json["name"],
        quarantine: json["quarantine"],
        linkFlairTextColor:
            linkFlairTextColorValues.map[json["link_flair_text_color"]]!,
        upvoteRatio: json["upvote_ratio"]?.toDouble(),
        authorFlairBackgroundColor: json["author_flair_background_color"],
        subredditType: subredditTypeValues.map[json["subreddit_type"]]!,
        ups: json["ups"],
        totalAwardsReceived: json["total_awards_received"],
        mediaEmbed: json["media_embed"] == null
            ? null
            : MediaEmbed.fromJson(json["media_embed"]),
        thumbnailWidth: json["thumbnail_width"],
        authorFlairTemplateId: json["author_flair_template_id"],
        isOriginalContent: json["is_original_content"],
        userReports: json["user_reports"] == null
            ? []
            : List<dynamic>.from(json["user_reports"]!.map((x) => x)),
        secureMedia: json["secure_media"] == null
            ? null
            : Media.fromJson(json["secure_media"]),
        isRedditMediaDomain: json["is_reddit_media_domain"],
        isMeta: json["is_meta"],
        category: json["category"],
        secureMediaEmbed: json["secure_media_embed"] == null
            ? null
            : MediaEmbed.fromJson(json["secure_media_embed"]),
        linkFlairText: json["link_flair_text"],
        canModPost: json["can_mod_post"],
        score: json["score"],
        approvedBy: json["approved_by"],
        isCreatedFromAdsUi: json["is_created_from_ads_ui"],
        authorPremium: json["author_premium"],
        thumbnail: json["thumbnail"],
        edited: json["edited"],
        authorFlairCssClass:
            authorFlairCssClassValues.map[json["author_flair_css_class"]]!,
        authorFlairRichtext: json["author_flair_richtext"] == null
            ? []
            : List<dynamic>.from(json["author_flair_richtext"]!.map((x) => x)),
        gildings: json["gildings"] == null
            ? null
            : Gildings.fromJson(json["gildings"]),
        contentCategories: json["content_categories"],
        isSelf: json["is_self"],
        modNote: json["mod_note"],
        created: json["created"],
        linkFlairType: flairTypeValues.map[json["link_flair_type"]]!,
        wls: json["wls"],
        removedByCategory: json["removed_by_category"],
        bannedBy: json["banned_by"],
        authorFlairType: flairTypeValues.map[json["author_flair_type"]]!,
        domain: domainValues.map[json["domain"]]!,
        allowLiveComments: json["allow_live_comments"],
        selftextHtml: json["selftext_html"],
        likes: json["likes"],
        suggestedSort: json["suggested_sort"],
        bannedAtUtc: json["banned_at_utc"],
        viewCount: json["view_count"],
        archived: json["archived"],
        noFollow: json["no_follow"],
        isCrosspostable: json["is_crosspostable"],
        pinned: json["pinned"],
        over18: json["over_18"],
        allAwardings: json["all_awardings"] == null
            ? []
            : List<dynamic>.from(json["all_awardings"]!.map((x) => x)),
        awarders: json["awarders"] == null
            ? []
            : List<dynamic>.from(json["awarders"]!.map((x) => x)),
        mediaOnly: json["media_only"],
        linkFlairTemplateId: json["link_flair_template_id"],
        canGild: json["can_gild"],
        spoiler: json["spoiler"],
        locked: json["locked"],
        authorFlairText: json["author_flair_text"],
        treatmentTags: json["treatment_tags"] == null
            ? []
            : List<dynamic>.from(json["treatment_tags"]!.map((x) => x)),
        visited: json["visited"],
        removedBy: json["removed_by"],
        numReports: json["num_reports"],
        distinguished: json["distinguished"],
        subredditId: subredditIdValues.map[json["subreddit_id"]]!,
        authorIsBlocked: json["author_is_blocked"],
        modReasonBy: json["mod_reason_by"],
        removalReason: json["removal_reason"],
        linkFlairBackgroundColor: json["link_flair_background_color"],
        id: json["id"],
        isRobotIndexable: json["is_robot_indexable"],
        reportReasons: json["report_reasons"],
        author: json["author"],
        discussionType: json["discussion_type"],
        numComments: json["num_comments"],
        sendReplies: json["send_replies"],
        whitelistStatus: whitelistStatusValues.map[json["whitelist_status"]]!,
        contestMode: json["contest_mode"],
        modReports: json["mod_reports"] == null
            ? []
            : List<dynamic>.from(json["mod_reports"]!.map((x) => x)),
        authorPatreonFlair: json["author_patreon_flair"],
        authorFlairTextColor:
            authorFlairTextColorValues.map[json["author_flair_text_color"]]!,
        permalink: json["permalink"],
        parentWhitelistStatus:
            whitelistStatusValues.map[json["parent_whitelist_status"]]!,
        stickied: json["stickied"],
        url: json["url"],
        subredditSubscribers: json["subreddit_subscribers"],
        createdUtc: json["created_utc"],
        numCrossposts: json["num_crossposts"],
        media: json["media"] == null ? null : Media.fromJson(json["media"]),
        isVideo: json["is_video"],
        postHint: json["post_hint"],
        preview:
            json["preview"] == null ? null : Preview.fromJson(json["preview"]),
        urlOverriddenByDest: json["url_overridden_by_dest"],
      );

  Map<String, dynamic> toJson() => {
        "approved_at_utc": approvedAtUtc,
        "subreddit": subredditValues.reverse[subreddit],
        "selftext": selftext,
        "author_fullname": authorFullname,
        "saved": saved,
        "mod_reason_title": modReasonTitle,
        "gilded": gilded,
        "clicked": clicked,
        "title": title,
        "link_flair_richtext": linkFlairRichtext == null
            ? []
            : List<dynamic>.from(linkFlairRichtext!.map((x) => x)),
        "subreddit_name_prefixed":
            subredditNamePrefixedValues.reverse[subredditNamePrefixed],
        "hidden": hidden,
        "pwls": pwls,
        "link_flair_css_class": linkFlairCssClass,
        "downs": downs,
        "thumbnail_height": thumbnailHeight,
        "top_awarded_type": topAwardedType,
        "hide_score": hideScore,
        "name": name,
        "quarantine": quarantine,
        "link_flair_text_color":
            linkFlairTextColorValues.reverse[linkFlairTextColor],
        "upvote_ratio": upvoteRatio,
        "author_flair_background_color": authorFlairBackgroundColor,
        "subreddit_type": subredditTypeValues.reverse[subredditType],
        "ups": ups,
        "total_awards_received": totalAwardsReceived,
        "media_embed": mediaEmbed?.toJson(),
        "thumbnail_width": thumbnailWidth,
        "author_flair_template_id": authorFlairTemplateId,
        "is_original_content": isOriginalContent,
        "user_reports": userReports == null
            ? []
            : List<dynamic>.from(userReports!.map((x) => x)),
        "secure_media": secureMedia?.toJson(),
        "is_reddit_media_domain": isRedditMediaDomain,
        "is_meta": isMeta,
        "category": category,
        "secure_media_embed": secureMediaEmbed?.toJson(),
        "link_flair_text": linkFlairText,
        "can_mod_post": canModPost,
        "score": score,
        "approved_by": approvedBy,
        "is_created_from_ads_ui": isCreatedFromAdsUi,
        "author_premium": authorPremium,
        "thumbnail": thumbnail,
        "edited": edited,
        "author_flair_css_class":
            authorFlairCssClassValues.reverse[authorFlairCssClass],
        "author_flair_richtext": authorFlairRichtext == null
            ? []
            : List<dynamic>.from(authorFlairRichtext!.map((x) => x)),
        "gildings": gildings?.toJson(),
        "content_categories": contentCategories,
        "is_self": isSelf,
        "mod_note": modNote,
        "created": created,
        "link_flair_type": flairTypeValues.reverse[linkFlairType],
        "wls": wls,
        "removed_by_category": removedByCategory,
        "banned_by": bannedBy,
        "author_flair_type": flairTypeValues.reverse[authorFlairType],
        "domain": domainValues.reverse[domain],
        "allow_live_comments": allowLiveComments,
        "selftext_html": selftextHtml,
        "likes": likes,
        "suggested_sort": suggestedSort,
        "banned_at_utc": bannedAtUtc,
        "view_count": viewCount,
        "archived": archived,
        "no_follow": noFollow,
        "is_crosspostable": isCrosspostable,
        "pinned": pinned,
        "over_18": over18,
        "all_awardings": allAwardings == null
            ? []
            : List<dynamic>.from(allAwardings!.map((x) => x)),
        "awarders":
            awarders == null ? [] : List<dynamic>.from(awarders!.map((x) => x)),
        "media_only": mediaOnly,
        "link_flair_template_id": linkFlairTemplateId,
        "can_gild": canGild,
        "spoiler": spoiler,
        "locked": locked,
        "author_flair_text": authorFlairText,
        "treatment_tags": treatmentTags == null
            ? []
            : List<dynamic>.from(treatmentTags!.map((x) => x)),
        "visited": visited,
        "removed_by": removedBy,
        "num_reports": numReports,
        "distinguished": distinguished,
        "subreddit_id": subredditIdValues.reverse[subredditId],
        "author_is_blocked": authorIsBlocked,
        "mod_reason_by": modReasonBy,
        "removal_reason": removalReason,
        "link_flair_background_color": linkFlairBackgroundColor,
        "id": id,
        "is_robot_indexable": isRobotIndexable,
        "report_reasons": reportReasons,
        "author": author,
        "discussion_type": discussionType,
        "num_comments": numComments,
        "send_replies": sendReplies,
        "whitelist_status": whitelistStatusValues.reverse[whitelistStatus],
        "contest_mode": contestMode,
        "mod_reports": modReports == null
            ? []
            : List<dynamic>.from(modReports!.map((x) => x)),
        "author_patreon_flair": authorPatreonFlair,
        "author_flair_text_color":
            authorFlairTextColorValues.reverse[authorFlairTextColor],
        "permalink": permalink,
        "parent_whitelist_status":
            whitelistStatusValues.reverse[parentWhitelistStatus],
        "stickied": stickied,
        "url": url,
        "subreddit_subscribers": subredditSubscribers,
        "created_utc": createdUtc,
        "num_crossposts": numCrossposts,
        "media": media?.toJson(),
        "is_video": isVideo,
        "post_hint": postHint,
        "preview": preview?.toJson(),
        "url_overridden_by_dest": urlOverriddenByDest,
      };
}

enum AuthorFlairCssClass { NEW }

final authorFlairCssClassValues = EnumValues({"new": AuthorFlairCssClass.NEW});

enum AuthorFlairTextColor { DARK }

final authorFlairTextColorValues =
    EnumValues({"dark": AuthorFlairTextColor.DARK});

enum FlairType { TEXT }

final flairTypeValues = EnumValues({"text": FlairType.TEXT});

enum Domain { SELF_FLUTTER_DEV, YOUTU_BE }

final domainValues = EnumValues(
    {"self.FlutterDev": Domain.SELF_FLUTTER_DEV, "youtu.be": Domain.YOUTU_BE});

class Gildings {
  Gildings();

  factory Gildings.fromJson(Map<String, dynamic> json) => Gildings();

  Map<String, dynamic> toJson() => {};
}

enum LinkFlairTextColor { LIGHT }

final linkFlairTextColorValues =
    EnumValues({"light": LinkFlairTextColor.LIGHT});

class Media {
  final String? type;
  final Oembed? oembed;

  Media({
    this.type,
    this.oembed,
  });

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        type: json["type"],
        oembed: json["oembed"] == null ? null : Oembed.fromJson(json["oembed"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "oembed": oembed?.toJson(),
      };
}

class Oembed {
  final String? providerUrl;
  final String? version;
  final String? title;
  final String? type;
  final int? thumbnailWidth;
  final int? height;
  final int? width;
  final String? html;
  final String? authorName;
  final String? providerName;
  final String? thumbnailUrl;
  final int? thumbnailHeight;
  final String? authorUrl;

  Oembed({
    this.providerUrl,
    this.version,
    this.title,
    this.type,
    this.thumbnailWidth,
    this.height,
    this.width,
    this.html,
    this.authorName,
    this.providerName,
    this.thumbnailUrl,
    this.thumbnailHeight,
    this.authorUrl,
  });

  factory Oembed.fromJson(Map<String, dynamic> json) => Oembed(
        providerUrl: json["provider_url"],
        version: json["version"],
        title: json["title"],
        type: json["type"],
        thumbnailWidth: json["thumbnail_width"],
        height: json["height"],
        width: json["width"],
        html: json["html"],
        authorName: json["author_name"],
        providerName: json["provider_name"],
        thumbnailUrl: json["thumbnail_url"],
        thumbnailHeight: json["thumbnail_height"],
        authorUrl: json["author_url"],
      );

  Map<String, dynamic> toJson() => {
        "provider_url": providerUrl,
        "version": version,
        "title": title,
        "type": type,
        "thumbnail_width": thumbnailWidth,
        "height": height,
        "width": width,
        "html": html,
        "author_name": authorName,
        "provider_name": providerName,
        "thumbnail_url": thumbnailUrl,
        "thumbnail_height": thumbnailHeight,
        "author_url": authorUrl,
      };
}

class MediaEmbed {
  final String? content;
  final int? width;
  final bool? scrolling;
  final int? height;
  final String? mediaDomainUrl;

  MediaEmbed({
    this.content,
    this.width,
    this.scrolling,
    this.height,
    this.mediaDomainUrl,
  });

  factory MediaEmbed.fromJson(Map<String, dynamic> json) => MediaEmbed(
        content: json["content"],
        width: json["width"],
        scrolling: json["scrolling"],
        height: json["height"],
        mediaDomainUrl: json["media_domain_url"],
      );

  Map<String, dynamic> toJson() => {
        "content": content,
        "width": width,
        "scrolling": scrolling,
        "height": height,
        "media_domain_url": mediaDomainUrl,
      };
}

enum WhitelistStatus { ALL_ADS }

final whitelistStatusValues = EnumValues({"all_ads": WhitelistStatus.ALL_ADS});

class Preview {
  final List<Image>? images;
  final bool? enabled;

  Preview({
    this.images,
    this.enabled,
  });

  factory Preview.fromJson(Map<String, dynamic> json) => Preview(
        images: json["images"] == null
            ? []
            : List<Image>.from(json["images"]!.map((x) => Image.fromJson(x))),
        enabled: json["enabled"],
      );

  Map<String, dynamic> toJson() => {
        "images": images == null
            ? []
            : List<dynamic>.from(images!.map((x) => x.toJson())),
        "enabled": enabled,
      };
}

class Image {
  final Source? source;
  final List<Source>? resolutions;
  final Gildings? variants;
  final String? id;

  Image({
    this.source,
    this.resolutions,
    this.variants,
    this.id,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        source: json["source"] == null ? null : Source.fromJson(json["source"]),
        resolutions: json["resolutions"] == null
            ? []
            : List<Source>.from(
                json["resolutions"]!.map((x) => Source.fromJson(x))),
        variants: json["variants"] == null
            ? null
            : Gildings.fromJson(json["variants"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "source": source?.toJson(),
        "resolutions": resolutions == null
            ? []
            : List<dynamic>.from(resolutions!.map((x) => x.toJson())),
        "variants": variants?.toJson(),
        "id": id,
      };
}

class Source {
  final String? url;
  final int? width;
  final int? height;

  Source({
    this.url,
    this.width,
    this.height,
  });

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        url: json["url"],
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "width": width,
        "height": height,
      };
}

enum Subreddit { FLUTTER_DEV }

final subredditValues = EnumValues({"FlutterDev": Subreddit.FLUTTER_DEV});

enum SubredditId { T5_2_X3_Q8 }

final subredditIdValues = EnumValues({"t5_2x3q8": SubredditId.T5_2_X3_Q8});

enum SubredditNamePrefixed { R_FLUTTER_DEV }

final subredditNamePrefixedValues =
    EnumValues({"r/FlutterDev": SubredditNamePrefixed.R_FLUTTER_DEV});

enum SubredditType { PUBLIC }

final subredditTypeValues = EnumValues({"public": SubredditType.PUBLIC});

enum Kind { T3 }

final kindValues = EnumValues({"t3": Kind.T3});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
