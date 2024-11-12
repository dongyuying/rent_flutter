import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:my_test_app/page/widgets/common_image.dart';

var onTap = () {};

class SearchBarInfo extends StatefulWidget {
  final bool showLocation; // 展示位置按钮
  final Function? goBackCallback; // 回退按钮函数
  final String inputValue; // 搜索框输入值
  final String defaultInputValue; //搜索框默认值
  final Function? onCancel; // 取消按钮
  final bool showMap; //展示地图按钮
  final Function? onSearch; // 用户点击搜索框触发
  final ValueChanged<String>? onSearchSubmit;

  const SearchBarInfo({super.key, this.showLocation = false, this.goBackCallback, this.inputValue = '', this.defaultInputValue = '请输入搜索值', this.onCancel, this.showMap = false, this.onSearch, this.onSearchSubmit}); // 用户点击键盘搜索按钮
  

  @override
  _SearchBarInfoState createState() => _SearchBarInfoState();
}

class _SearchBarInfoState extends State<SearchBarInfo> {
  String _searchWord = '';

  late TextEditingController _controller;
  late FocusNode _focus;

  void _onClean() {
    _controller.clear();
    setState(() {
      _searchWord = '';
    });
  }

  @override
  void initState() {
    _controller = TextEditingController(text: widget.inputValue);
    _focus = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        if (widget.showLocation)
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {},
              child: const Row(
                children: [
                  Icon(Icons.room, color: Colors.green, size: 16),
                  Text('北京', style: TextStyle(color: Colors.black, fontSize: 16))
                ],
              ),
            ),
          ),
        if (widget.goBackCallback != null) Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: GestureDetector(
            onTap: () {
              widget.goBackCallback!();
            },
            child: const Icon(Icons.chevron_left, color: Colors.black87),
          ),
        ),
        Expanded(
            child: Container(
          height: 34.0,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 214, 214, 214),
              borderRadius: BorderRadius.circular(18.0)),
          child: TextField(
            focusNode: _focus,
            onTap: () {
              if (widget.onSearchSubmit == null) {
                _focus.unfocus();
              }
              widget.onSearch!();
            },
            onSubmitted: widget.onSearchSubmit,
            textInputAction: TextInputAction.search,

            controller: _controller,
            style: const TextStyle(fontSize: 14.0),
            onChanged: (value) {
              setState(() {
                _searchWord = value;
              });
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(bottom: 14.0),
              hintText: '请输入搜索词',
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 14.0),
              border: InputBorder.none,
              icon: const Padding(
                padding: EdgeInsets.only(top: 2.0, left: 10),
                child: Icon(Icons.search, size: 18.0, color: Colors.grey),
              ),
              suffixIcon: _searchWord != '' ? GestureDetector(
                  onTap: () {
                    _onClean();
                  },
                  child:
                      const Icon(Icons.clear, size: 18.0, color: Colors.grey)) : null,
            ),
          ),
        )),
        if (widget.onCancel != null) Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: GestureDetector(
            onTap: () {
              widget.onCancel!();
            },
            child: const Text(
              '取消',
              style: TextStyle(fontSize: 14.0, color: Colors.black),
            ),
          ),
        ),
        if (widget.showMap) Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: GestureDetector(
            onTap: () {},
            child: const SizedBox(
                width: 18, child: CommonImage('static/images/dingwei.png')),
          ),
        )
      ],
    ));
  }
}
