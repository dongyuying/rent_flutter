class IndexRecommendItem {
  final String title;
  final String subtitle;
  final String imageUrl;
  final String navigatorUrl;

  IndexRecommendItem({required this.title, required this.subtitle, required this.imageUrl, required this.navigatorUrl});
}

List<IndexRecommendItem> indexRecoList = [
  IndexRecommendItem(title: '家住回龙观', subtitle: '归属的感觉', imageUrl: 'static/images/xiong.png', navigatorUrl: '/'),
  IndexRecommendItem(title: '宜居四五环', subtitle: '大都市生活', imageUrl: 'static/images/xiong.png', navigatorUrl: '/'),
  IndexRecommendItem(title: '喧嚣三里屯', subtitle: '繁华的背后', imageUrl: 'static/images/xiong.png', navigatorUrl: '/'),
  IndexRecommendItem(title: '比邻十号线', subtitle: '地铁心连心', imageUrl: 'static/images/xiong.png', navigatorUrl: '/'),
];

