import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildFollowButton(),
        _buildMessageButton(),
      ],
    );
  }

  Widget _buildFollowButton() {
    return InkWell(
      onTap: () {
        print ('follow');
      },
      child: IgnorePointer(
        child: Container(
          alignment: Alignment.center, // 컨테이너 내부 Text위젯 정렬
          width: 150,
          height: 45,
          child: const Text(
            'Follow',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }

  Widget _buildMessageButton() {
    return InkWell(
      onTap: () {
        print('memssage 버튼 클릭');
      },
      child: IgnorePointer(
        child: Container(
          alignment: Alignment.center, // 컨테이너 내부 Text위젯 정렬
          width: 150,
          height: 45,
          child: const Text(
            'Message',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(),
          ),
        ),
      ),
    );
  }
}
