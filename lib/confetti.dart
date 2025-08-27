import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class MyConfetti extends StatefulWidget {
  const MyConfetti({super.key});

  @override
  State<MyConfetti> createState() => _MyConfettiState();
}

class _MyConfettiState extends State<MyConfetti> {

  late ConfettiController _controller;

  @override
  void initState() {
    _controller = ConfettiController(duration: const Duration(seconds: 10));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("C O N F E T T I"),
      ),
      body: Stack(
        children: [
            Center(
              child: Text("100 days of Flutter Completed!",style:
                TextStyle(
                  color: Colors.black54,
                  fontSize: 22
                ),),
            ),
          Center(
            child: Padding(padding: const EdgeInsets.only(bottom: 500),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple.shade200
              ),
              onPressed: (){
                _controller.play();
              },
              child: const Text(
                "Celebrate!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            )
            ),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
              confettiController: _controller,
              blastDirectionality: BlastDirectionality.explosive,
                emissionFrequency: 0.05,
                numberOfParticles: 100,
              maxBlastForce: 10,
              minBlastForce: 5,
              gravity: 0.5,
              colors: const[
                Colors.green,
                Colors.blue,
                Colors.pink,
                Colors.orange,
                Colors.purple
              ],
            ),
          )
          ]
      ),
    );
  }
}
