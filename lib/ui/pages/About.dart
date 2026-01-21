import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu),
        title: Center(child: Text("About me")),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.home))],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigate_next),
            label: "Next",
          ),
        ],
      ),
      body: AboutBody(),
    );
  }
}

class AboutBody extends StatelessWidget {
  const AboutBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [AboutImage(), AboutContent()]);
  }
}

class AboutImage extends StatelessWidget {
  const AboutImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Image.asset("assets/images/haicau.jpg", fit: BoxFit.cover),
    );
  }
}

class AboutContent extends StatelessWidget {
  const AboutContent({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Positioned(
      bottom: 10,
      right: 20,
      left: 20,
      child: Container(
        height: 150,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                "About me",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  textAlign: TextAlign.justify,
                  "Mèo nhà là động vật có vú ăn thịt, nhỏ nhắn, được thuần hóa từ lâu đời, sống gần gũi và làm bạn với con người, vừa để giải trí vừa giúp săn chuột hiệu quả.",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
