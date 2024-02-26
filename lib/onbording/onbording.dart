import 'package:flutter/material.dart';
import '../views/Login/LoginScreen.dart';
import 'content_model.dart';
class Onbording extends StatefulWidget {
  const Onbording({key});
  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  final PageController _controller = PageController();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose(); // don't forget to call super.dispose()
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(45),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        contents[i].images,
                        height: 340,
                      ),

                      Text(
                        contents[i].title,
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontSize: 16, color: Colors.black54),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                    (index) => buildDot(index, context),
              ),
            ),
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.all(40),
            width: double.infinity,
            color: Colors.white,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                if(currentIndex==contents.length-1){
                  Navigator.push(
                      context, MaterialPageRoute(
                    builder:(_)=>loginScreen(),
                  ),
                  );
                }
                _controller.nextPage(duration: const Duration(
                    milliseconds:100),
                    curve: Curves.bounceIn);
              },
              child: Text(
                  currentIndex== contents.length -1?
                  "Get Started" :"Next",
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
