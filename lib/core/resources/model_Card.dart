class ModelCard {
  final String ImageTitle;
  final String TitleText;
  ModelCard({required this.ImageTitle, required this.TitleText});
}

class ModelTrendingCollections {
  final String ImageTitle;
  final String TitleText;
  ModelTrendingCollections({required this.ImageTitle, required this.TitleText});
}

class ModelTopSeller {
  final String ImageTitle;
  final String TitleText;
  final String SubTitleText;
  final String NumberData;
  final String LikeData;
  ModelTopSeller({
    required this.ImageTitle,
    required this.TitleText,
    required this.SubTitleText,
    required this.NumberData,
    required this.LikeData,
  });
}

class ModelStats {
  final int Order;
  final String imgeCard;
  final String Title;
  final String subTitle;
  final String Salary;
  final String prs;
  final bool Active;
  ModelStats({
    required this.Active,
    required this.Order,
    required this.imgeCard,
    required this.Title,
    required this.subTitle,
    required this.Salary,
    required this.prs,
  });
}
