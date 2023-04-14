// import 'package:flutter/widgets.dart';
// import 'package:flutter/services.dart';
// import 'dart:math';
// import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:meeting_page4/const/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final int maxLength = 500;
  List<String> selectedWeekdays = [];
  String textValue = "";
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Color(0xFFF2F2F2),
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: ImageIcon(
              AssetImage('assets/images/Back.png'),
              size: 26,
              color: BLACK,
            ),
            onPressed: () {},
          ),
          //backgroundColor: Color(0xFFF2F2F2),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Column(
                  children: [
                    //모임날짜
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Container(
                        width: 86,
                        height: 36,
                        child: Center(
                            child: Text(
                          '모임날짜',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w500,
                            color: MIXIN_POINT_COLOR,
                          ),
                        )),
                        decoration: BoxDecoration(
                            color: MIXIN_BLACK_5,
                            borderRadius: BorderRadius.circular(18)),
                      ),
                    ),
                    SizedBox(height: 24),
                    //언제 모임을 하고 싶나요?
                    Text(
                      '언제 모임을 하고 싶나요?',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'SUIT',
                        color: BLACK,
                      ),
                    ),
                    SizedBox(
                      height: 44,
                    ),
                    //모임주기
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '모임주기',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w600,
                            color: BLACK,
                          ),
                        ),
                        Row(
                          children: [
                            Transform.scale(
                              scale: 0.8,
                              child: Checkbox(
                                  checkColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16)),
                                  value: _isChecked,
                                  onChanged: (value) {
                                    setState(() {
                                      _isChecked = value;
                                    });
                                  }),
                            ),
                            Text(
                              '미정',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'SUIT',
                                fontWeight: FontWeight.w600,
                                color: BLACK,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    //모임주기
                    //
                    TextButton(
                      child: Text(
                        '모임 주기를 선택해주세요',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SUIT',
                          color: Color(0xFFCED0D5),
                        ),
                      ),
                      style: TextButton.styleFrom(
                        fixedSize: Size(342, 48),
                        elevation: 0,
                        //backgroundColor: Colors.white,
                        side: BorderSide(color: Color(0xFFF0F1F5)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(height: 67),
                    //모임요일
                    //
                    Row(
                      children: [
                        Text(
                          '모임요일',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w600,
                            color: BLACK,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    //모임요일 선택
                    //
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              height: 48,
                              width: 48,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  '월',
                                  style: TextStyle(
                                      height: 1.2,
                                      fontSize: 16,
                                      fontFamily: 'SUIT',
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFCED0D5)),
                                ),
                                style: TextButton.styleFrom(
                                  // fixedSize: Size(48, 48),
                                  elevation: 0,
                                  side: BorderSide(color: MIXIN_BLACK_5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              height: 48,
                              width: 48,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  '화',
                                  style: TextStyle(
                                      height: 1.2,
                                      fontSize: 16,
                                      fontFamily: 'SUIT',
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFCED0D5)),
                                ),
                                style: TextButton.styleFrom(
                                  // fixedSize: Size(48, 48),
                                  elevation: 0,
                                  side: BorderSide(color: MIXIN_BLACK_5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              height: 48,
                              width: 48,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  '수',
                                  style: TextStyle(
                                      height: 1.2,
                                      fontSize: 16,
                                      fontFamily: 'SUIT',
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFCED0D5)),
                                ),
                                style: TextButton.styleFrom(
                                  // fixedSize: Size(48, 48),
                                  elevation: 0,
                                  side: BorderSide(color: MIXIN_BLACK_5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              height: 48,
                              width: 48,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  '목',
                                  style: TextStyle(
                                      height: 1.2,
                                      fontSize: 16,
                                      fontFamily: 'SUIT',
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFCED0D5)),
                                ),
                                style: TextButton.styleFrom(
                                  // fixedSize: Size(48, 48),
                                  elevation: 0,
                                  side: BorderSide(color: MIXIN_BLACK_5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              height: 48,
                              width: 48,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  '금',
                                  style: TextStyle(
                                      height: 1.2,
                                      fontSize: 16,
                                      fontFamily: 'SUIT',
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFCED0D5)),
                                ),
                                style: TextButton.styleFrom(
                                  // fixedSize: Size(48, 48),
                                  elevation: 0,
                                  side: BorderSide(color: MIXIN_BLACK_5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              height: 48,
                              width: 48,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  '토',
                                  style: TextStyle(
                                      height: 1.2,
                                      fontSize: 16,
                                      fontFamily: 'SUIT',
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFCED0D5)),
                                ),
                                style: TextButton.styleFrom(
                                  // fixedSize: Size(48, 48),
                                  elevation: 0,
                                  side: BorderSide(color: MIXIN_BLACK_5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              height: 48,
                              width: 48,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  '일',
                                  style: TextStyle(
                                      height: 1.2,
                                      fontSize: 16,
                                      fontFamily: 'SUIT',
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFCED0D5)),
                                ),
                                style: TextButton.styleFrom(
                                  // fixedSize: Size(48, 48),
                                  elevation: 0,
                                  side: BorderSide(color: MIXIN_BLACK_5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 37,
                    ),
                    //모임시간
                    //
                    Row(
                      children: [
                        Text(
                          '모임시간',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w600,
                            color: BLACK,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 79,
                    ),
                    //다음
                    //
                    ElevatedButton(
                      child: Text('다음'),
                      style: TextButton.styleFrom(
                        fixedSize: Size(342, 56),
                        elevation: 0,
                        backgroundColor: MIXIN_BLACK_4,
                        foregroundColor: Color(0xFFFFFFFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
