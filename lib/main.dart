import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Tweet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Twitter",
        theme: ThemeData(
            primaryColor: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const Twitter());
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

   @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [
    Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/1004686258020290641/1044511214014828585/EF6C1F97-A42B-4DE3-BF7B-627112AACE67.png',
      postText: 'เพจ #รีวิวอาหาร Foodie ฟอลเลยหากคุณชอบกินและกำลังมองหาร้านอาหารน่าลองใหม่ๆ',
      name: "Good Food for Life",
      account: "@foodie",
      img:"",
    ),

    Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/1004686258020290641/1044511214014828585/EF6C1F97-A42B-4DE3-BF7B-627112AACE67.png',
      postText: 'Tsuru Udon อีก 1 ร้านขวัญใจชาวอุด้งเส้นสด ร้านนี้เป็นเส้นสดสไตล์คันไซ เส้นหนึบเด้งแต่ไม่เหนียวติดคอ ขนาดกำลังดี เมนูฮิตเป็นอุด้งครีมเมนไทโกะ เส้นเรียงสวย ซอสสีสวยแต่เข้มข้น หอมครีมและไข่ปลา เค็มๆมันๆ จานใหญ่นะ ค่อยๆสั่ง',
      name: "Good Food for Life",
      account: "@foodie",
      img: "https://media.discordapp.net/attachments/1004686258020290641/1044514231594274866/5C6CC827-4BC1-43E0-8EA0-FF58719939A5.jpg?width=530&height=663",
    ),

    Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/1004686258020290641/1044572141921763448/6C981362-6FB9-4B12-B588-DC8C9AA0EAFD.jpg?width=530&height=662',
      postText: 'Roji Monster ร้านขนมร้านใหม่แกะกล่อง ขนมสไตล์ญี่ปุ่นที่ส่งตรงมาจากไต้หวัน(สาขาแม่) เห็นว่าเปิดในหลายประเทศพอสมควรค่ะและก็นี่เลย มาเปิดในไทยแล้ว ณ ทองหล่อ สุขุมวิท55 ตัวนี้เป็นไอศครีมรส Uji Matcha ท็อปปิ้งเป็นเจลลี่โฮจิฉะ โมจิ และ เจลลี่ดอกหอมหมื่นลี่',
      name: "Life is short, eat dessert first",
      account: "@eatDessert",
      img: "https://media.discordapp.net/attachments/1004686258020290641/1044512179036098660/158A6AB2-717E-4F6A-833F-AFF95C370317.jpg?width=530&height=662",
    ),

    Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/1004686258020290641/1044511214014828585/EF6C1F97-A42B-4DE3-BF7B-627112AACE67.png',
      postText: 'Fantuan Thailand ข้าวห่อไต้หวันสไตล์สตรีทฟู้ดโบราณเป็นเมนูตั้งแต่โบราณของทางไต้หวัน โดยเมนูที่ขายดีที่สุดของร้านจะเป็นฟ่านถวนสูตรหมูย่างไต้หวัน จะใช้ส่วนสันนอก ลูกค้าจึงได้ทานเนื้อล้วนๆ ไม่มีมันแทรก โดยข้างในไส้จะมีไข่ดาว ซึ่งได้แรงบันดาลใจจะเมนูหมูผัดที่ราดบนข้าว',
      name: "Good Food for Life",
      account: "@foodie",
      img: "https://media.discordapp.net/attachments/1004686258020290641/1044505514756804678/IMG_2412.jpg?width=497&height=662",
    ),

    Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/1004686258020290641/1044511214014828585/EF6C1F97-A42B-4DE3-BF7B-627112AACE67.png',
      postText: 'Teppen Omakase Mini Don เมนู Salmon Don แซลมอนสดกินกับไข่ดองนัวมากๆ ป้ายด้วยวาซาบิเสริมรสชาติให้ลงตัวยิ่งขึ้น ทานกับข้าวสวยญี่ปุ่นที่ทำได้ดี',
      name: "Good Food for Life",
      account: "@foodie",
      img: "https://media.discordapp.net/attachments/1004686258020290641/1044568423855837184/82FA44A7-F0CB-4008-B38E-47D32A9AE071.jpg?width=530&height=662",
    ),

    Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/1004686258020290641/1044572141921763448/6C981362-6FB9-4B12-B588-DC8C9AA0EAFD.jpg?width=530&height=662',
      postText: 'Mil Toast House กับเมนู French Toast ที่มาในรูปร่างขนมปังอันจิ๋วสุดน่ารัก เสิร์ฟพร้อมไอศกรีมวานิลลาจาก Haagen-Dazs และราดด้วยน้ำผึ้ง Souffle French Toast with Vanilla Icecream และ Butter French Toast with Vanilla Icecream ที่แม้หน้าตาจะดูคล้ายกัน แต่รสสัมผัสด้านในไม่เหมือนกัน โดยตัว Souffle French Toast จะมีความนุ่มฟูกว่า ส่วน Butter French Toast จะมีความกรอบและฉ่ำเนยมากกว่า แนะนำสั่งแบบ Mix ค่ะจะได้ลองทั้ง 2 แบบ',
      name: "Life is short, eat dessert first",
      account: "@eatDessert",
      img: "https://media.discordapp.net/attachments/1004686258020290641/1044568424086515752/B5F94958-7A7B-43DF-9748-EB7F52A16592.jpg?width=530&height=662",
    ),

    Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/1004686258020290641/1044511214014828585/EF6C1F97-A42B-4DE3-BF7B-627112AACE67.png',
      postText: 'Mugendai Penthouse Omakase วันนี้เราอยากแนะนำร้าน Omakase ที่เรารู้สึกว่าคุ้มค่า คุ้มราคา ที่สำคัญไม่แพง คอร์สที่เรามาทานเป็นราคา 1,990++ ซึ่งมีทั้งหมด 15 คอร์ส เราจองผ่านไลน์ของร้าน ต้องโอนค่ามัดจำ 1,000 บาทค่ะ เมนูที่เราประทับใจเป็นข้าวหน้าหอยเป๋าฮื้อราดซอสตับค่ะ ให้คะแนน 10/10 ไปเลยค่ะ ถ้ามีโอกาสจะมาซ้ำแน่นอน',
      name: "Good Food for Life",
      account: "@foodie",
      img: "https://media.discordapp.net/attachments/1004686258020290641/1044573210764652575/0A62709A-DB13-4D1F-8451-3E8D42D22833.jpg?width=530&height=662",
    ),

    Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/1004686258020290641/1044572141921763448/6C981362-6FB9-4B12-B588-DC8C9AA0EAFD.jpg?width=530&height=662',
      postText: 'Memorize Brownie กับเมนู Brownie Shot คือดีมาก ตัวบราวนี่เนื้อหนึบ หวานไปนิด แต่ครีมสดที่ให้มาราดคู่กันแล้วตัดได้ดีมาก ปัจจุบันมีหลายสาขาแล้วสามารถสั่งผ่านแอพเดลิเวอรี่มาส่งที่บ้านได้ อร่อยง่ายแล้วก็สะดวกด้วย',
      name: "Life is short, eat dessert first",
      account: "@eatDessert",
      img: "https://media.discordapp.net/attachments/1004686258020290641/1044575255311683636/86E7A53E-80BD-4758-AE7D-03BC475EF04E.jpg?width=530&height=663",
    ),

    Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/1004686258020290641/1044572141921763448/6C981362-6FB9-4B12-B588-DC8C9AA0EAFD.jpg?width=530&height=662',
      postText: 'Fuku x2 แบรนด์ใหม่ในเครือ Fuku Matcha ที่โดดเด่นในเรื่องความอร่อยของเครื่องดื่มมัทฉะและซอฟต์ครีมชาเขียวคุณภาพดี โดย Fuku x2 ยังคงอัดแน่นไปด้วยวัตถุดิบคุณภาพดีไว้เช่นเดิม เพิ่มเติมด้วยการปรับโฉมลุคให้ดูพรีเมียมมากขึ้น ถือเป็นอีกหนึ่งร้านที่มีเมนูของกินแบบจุใจ เสริฟมาแบบใส่ชามจัดเต็มไปเลย ท็อปปิ้งนี่เรียกว่ามาครบทุกอย่างในร้านแล้วแม่!',
      name: "Life is short, eat dessert first",
      account: "@eatDessert",
      img: "https://media.discordapp.net/attachments/1004686258020290641/1044577098691514378/ACAEC68D-06DE-4096-98FF-9008E67C88A7.jpg?width=530&height=662",
    ),

     Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/1004686258020290641/1044588065227808788/935EA33B-8ABF-48EF-938D-F5743A273427.jpg?width=530&height=663',
      postText: '',
      name: "Prw",
      account: "@chanoknard",
      img: "https://media.discordapp.net/attachments/1004686258020290641/1044572141921763448/6C981362-6FB9-4B12-B588-DC8C9AA0EAFD.jpg?width=530&height=662",
    ),




    
    
  ];

  var tweetShow = [];

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Container(
            margin: EdgeInsets.all(10.0),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media.discordapp.net/attachments/1004686258020290641/1044588065227808788/935EA33B-8ABF-48EF-938D-F5743A273427.jpg?width=530&height=663'),
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Thread",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          )),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(Icons.home, Colors.blue),
            buildIconButton(Icons.search_off_outlined, Colors.blue),
            buildIconButton(Icons.notifications_outlined, Colors.blue),
            buildIconButton(Icons.email_outlined, Colors.blue)
          ],
        ),
      ),
      body: listOfTweets(),
      floatingActionButton: FloatingActionButton(
        child: Icon(FontAwesomeIcons.pen),
        onPressed: () {
          setState(() {
            tweetShow.insert(0, tweetList[counter]);
            counter++;

            // tweetList.add(Tweet(
            //   avatar_url:
            //       'https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_1280.png',
            //   postText: "My Tweet",
            //   name: "Joblok0",
            //   account: "@BUEN003",
            // ));
            // tweetList.insert(
            //     0,
            //     Tweet(
            //       avatar_url:
            //           'https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_1280.png',
            //       postText: "My Tweet",
            //       name: "Joblok0",
            //       account: "@BUEN003",
            //     ));
          });
        },
      ),
    );
  }

  Widget listOfTweets() {
    return Container(
      color: Colors.white,
      child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return tweetShow[index];
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
                height: 10,
              ),
          itemCount: tweetShow.length),
    );
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(icon, color: color),
      onPressed: () {},
    );
  }
}
