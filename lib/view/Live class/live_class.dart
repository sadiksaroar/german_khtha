import 'package:flutter/material.dart';

class LiveClassScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Live class',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProgressCard(),
            SizedBox(height: 16),
            _buildDateSelector(),
            SizedBox(height: 16),
            Text(
              'My schedule',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildScheduleList(),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressCard() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.amber[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '📕 Learnings today',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('58% / 25min', style: TextStyle(fontSize: 16)),
              Icon(Icons.arrow_forward),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDateSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(7, (index) {
        return Column(
          children: [
            Text('${13 + index}'),
            CircleAvatar(
              backgroundColor: index == 2 ? Colors.black : Colors.grey[300],
              child: Text(
                '${['S', 'S', 'M', 'T', 'W', 'T', 'F'][index]}',
                style: TextStyle(
                  color: index == 2 ? Colors.white : Colors.black,
                ),
              ),
            ),
          ],
        );
      }),
    );
  }

  Widget _buildScheduleList() {
    return Column(
      children: [
        _buildScheduleTile('Class', '8.00 - 8.30', Colors.lightGreenAccent),
        _buildScheduleTile('Class', '8.30 - 9.00', Colors.pinkAccent),
        _buildScheduleTile('Class', '10.00 - 10.30', Colors.lightGreenAccent),
        _buildScheduleTile('Class', '12.00 - 12.30', Colors.pinkAccent),
      ],
    );
  }

  Widget _buildScheduleTile(String title, String time, Color color) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                time,
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
            ],
          ),
          Icon(Icons.open_in_new),
        ],
      ),
    );
  }
}
