import 'package:flutter/material.dart';

class VoteResultsPage extends StatefulWidget {
  const VoteResultsPage({super.key});

  @override
  _VoteResultsPageState createState() => _VoteResultsPageState();
}

class _VoteResultsPageState extends State<VoteResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: SizedBox(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'vote.org.my',
                  hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
                  filled: true,
                  fillColor: Colors.black12,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black, width: .5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black, width: .5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black, width: .5),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.share, color: Colors.black54),
                    onPressed: () {},
                  ),
                ),
                style: TextStyle(color: Colors.black),
                maxLines: 1,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 1),
              _headingSection(),
              SizedBox(height: 20),
              _winnerSection(),
              SizedBox(height: 20),
              _otherContestantsSection(),
              SizedBox(height: 20),
              _contestVideosSection(),
              SizedBox(height: 20),
              _upcomingEventsSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _headingSection() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth,
          height: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage('assets/images/julius.png'),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }

  Widget _winnerSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Live Vote Results",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
        ),
        SizedBox(height: 6),
        Text(
          "Winner Contestant",
          style: TextStyle(fontSize: 16, color: Color(0xFFF8B64C)),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 237, 160, 160),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        'assets/images/image5.png',
                        width: 100,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 35),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 28.0),
                            child: Text(
                              "Omar D. Regalado",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Lorem ipsum loremipsum",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -10,
                right: -10,
                child: Image.asset(
                  'assets/images/image1.png',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _voteCard('Total Votes', '560', Colors.blue),
            SizedBox(width: 25),
            _voteCard('Total Votes', '50%', Color(0xFF7CADBF)),
          ],
        ),
      ],
    );
  }

  Widget _voteCard(String title, String value, Color color) {
    return Container(
      width: 178,
      height: 150,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }

  Widget _otherContestantsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Others Contestants",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),
        _contestantCard("Chester Cheng", "35%", 196, Color(0xFFA1D2F5),
            'assets/images/image2.png'),
        _contestantCard("Robert Soliman", "10%", 56, Color(0xFFB5E3D3),
            'assets/images/image3.png'),
        _contestantCard("Kristine Lim", "5%", 28, Color(0xFFBBF5A1),
            'assets/images/image4.png'),
      ],
    );
  }

  Widget _contestantCard(String name, String percentage, int votes, Color color,
      String imageAsset) {
    return Card(
      color: color,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(imageAsset),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(name),
        subtitle: Text('$votes Votes'),
        trailing: Text(
          percentage,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _contestVideosSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Contest Videos",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: () {},
          child: Text(
            "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
            style: TextStyle(
                color: Colors.blue, decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }

  Widget _upcomingEventsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Upcoming Events",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        _eventCard(
          "Music Festivals",
          "30/09/2024",
          'assets/images/image8.png',
          'assets/images/image6.png',
        ),
        _eventCard(
          "Sports Events",
          "30/09/2024",
          'assets/images/image7.png',
          'assets/images/image6.png',
        ),
      ],
    );
  }

  Widget _eventCard(String eventName, String date, String mainImagePath,
      String rightImagePath) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        contentPadding: EdgeInsets.all(8.0),
        leading: Container(
          width: 45,
          height: 55,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(mainImagePath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        title: Text(
          eventName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle:
            Text("Date: $date", style: TextStyle(fontWeight: FontWeight.bold)),
        trailing: Container(
          width: 40,
          height: 45,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(rightImagePath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
      ),
    );
  }
}
