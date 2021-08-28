import 'package:flutter/material.dart';
import 'package:mpbsindia/subpages/sub_vision_one.dart';

class SubVision extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Vision"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 10.0,
              ),SubVisionOne(),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '\t Mission  Pay  Back to  Society is our initiative to develop young talent of the society and foster in them a sense of confidence, purpose and social commitment. MPBS is a campaign for ushering in era of emancipation, empowerment and enlightenment. The social transformation and economic emancipation remain the immediate ideological objectives of the MPBS for endurable cultural change. Bringing together of Bahujan learned people and transforming them into a conscious capable and committed class of intellectuals guided by the immortal principle of Ambedkarism.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '\t Annihilating the caste, the structures of dominance. hatred, violence and hierarchy and transforming into an egalitarian and enlightened society with tasteless outcastes stewardship, is the natural and logical course of action, strategically objective and permanent theme of MPBS campaign.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
