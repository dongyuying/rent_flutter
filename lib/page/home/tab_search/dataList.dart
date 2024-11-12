class RoomListItemData {
  final String id;
  final String title;
  final String subTitle;
  final String imageUrl;
  final List<String> tags;
  final double price;

  const RoomListItemData({required this.id, required this.title, required this.subTitle, required this.imageUrl, required this.tags, required this.price});
}

List<RoomListItemData> dataList = [
  const RoomListItemData(id: '1', title: '朝阳门南大街 2厅1室 8300元', subTitle: '西/热水器', imageUrl: 'https://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeg', tags: ['近地铁', '超市', '交通便利'], price: 120),
  const RoomListItemData(id: '1', title: '朝阳门南大街门南大街门南大街门南大街门南大街门南大街门南大街 2厅1室 8300元', subTitle: '西/热水器', imageUrl: 'https://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeg', tags: ['近地铁', '超市', '交通便利'], price: 120),
  const RoomListItemData(id: '1', title: '朝阳门南大街 2厅1室 8300元', subTitle: '西/热水器', imageUrl: 'https://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeg', tags: ['近地铁', '超市', '交通便利'], price: 120),
  const RoomListItemData(id: '1', title: '朝阳门南大街 2厅1室 8300元', subTitle: '西/热水器', imageUrl: 'https://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeg', tags: ['近地铁', '超市', '交通便利'], price: 120),
];