import 'package:flutter/material.dart';
import 'package:my_test_app/page/home/info/index.dart';
import 'package:my_test_app/page/widgets/common_swiper.dart';
import 'package:my_test_app/page/widgets/common_tag.dart';
import 'package:my_test_app/page/widgets/common_title.dart';
import 'package:my_test_app/page/widgets/room_appliance.dart';
import 'package:share_plus/share_plus.dart';

class RoomDetailData {
  String id;
  String title;
  String community;
  String subTitle;
  int size;
  String floor;
  int price;
  String roomType;
  List<String> houseImgs;
  List<String> tags;
  List<String> oriented;
  List<String> applicances;

  RoomDetailData(
      {required this.id,
      required this.title,
      required this.community,
      required this.subTitle,
      required this.size,
      required this.floor,
      required this.price,
      required this.roomType,
      required this.houseImgs,
      required this.tags,
      required this.oriented,
      required this.applicances});
}

RoomDetailData defaultData = RoomDetailData(
    id: '1',
    title: '整租 中山路 历史最低价',
    community: '中山花园',
    subTitle: '近地铁,附近有商场https://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeghttps://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeghttps://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeghttps://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeghttps://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeghttps://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeghttps://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeghttps://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeghttps://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeghttps://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeghttps://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeghttps://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeg',
    size: 100,
    floor: '高楼层',
    price: 3000,
    roomType: '南',
    houseImgs: [
      'https://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeg'
    ],
    tags: [
      '近地铁'
    ],
    oriented: [
      '南'
    ],
    applicances: [
      '衣柜',
      '洗衣机'
    ]);

class RoomDetailPage extends StatefulWidget {
  final int id;

  const RoomDetailPage({super.key, required this.id});

  @override
  _RoomDetailPageState createState() => _RoomDetailPageState();
}

class _RoomDetailPageState extends State<RoomDetailPage> {
  late RoomDetailData data;

  bool showAllText = false;

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      data = defaultData;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool showTextTool = data.subTitle.length > 100;
    if (data == null) return Container();
    return Scaffold(
      appBar: AppBar(
        title: Text('roomId: ${data.id}'),
        actions: [
          IconButton(
              onPressed: () async {
                var result = await Share.share('https://itcast.com');
                if (result.status == ShareResultStatus.success) {
                  print('Thank you for sharing my website!');
                }
              },
              icon: const Icon(Icons.share))
        ],
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              CommonSwiper(images: data.houseImgs),
              CommonTitle(data.title),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: Row(
                  children: [Text('${data.price}'), const Text('元/月(押一付三)')],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Row(
                  children: data.tags.map((item) => CommonTag(item)).toList(),
                ),
              ),
              const Divider(
                color: Colors.grey,
                indent: 10,
                endIndent: 10,
                height: 1,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Wrap(
                  runSpacing: 10,
                  children: [
                    BaseInfoItem('面积：${data.size}平方米'),
                    BaseInfoItem('楼层：${data.floor}'),
                    BaseInfoItem('房型：${data.roomType}'),
                    const BaseInfoItem('装修：精装'),
                  ],
                ),
              ),
              const CommonTitle('房屋配置'),
              RoomApplianceList(list: data.applicances),
              const CommonTitle('房屋概况'),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        maxLines: showAllText ? null : 5,
                        data.subTitle ?? '暂无房屋概况'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        showTextTool
                            ? GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showAllText = !showAllText;
                                  });
                                },
                                child: Row(
                                  children: [
                                    Text(showAllText ? '收起' : '展开'),
                                    Icon(showAllText
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down)
                                  ],
                                ),
                              )
                            : const SizedBox(),
                        const Text('举报')
                      ],
                    )
                  ],
                ),
              ),
              const CommonTitle('猜你喜欢'),
              Info(),
              const SizedBox(height: 100)
            ],
          ),
          Positioned(
              bottom: 0,
              left: 0,
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: Container(
                color: const Color.fromARGB(255, 194, 193, 193),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Icon(Icons.star_border,
                                color: Colors.green, size: 20),
                            Text(
                              '收藏',
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 150,
                          height: 40,
                          child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll<Color>(Colors.blue)),
                            child: const Text(
                              '联系房东',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 40,
                          child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll<Color>(
                                    Colors.green)),
                            child: const Text(
                              '预约看房',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class BaseInfoItem extends StatelessWidget {
  final String title;

  const BaseInfoItem(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 10 * 3) / 2,
      child: Text(title, style: const TextStyle(fontSize: 16)),
    );
  }
}
