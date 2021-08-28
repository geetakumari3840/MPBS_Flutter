import 'package:flutter/material.dart';

class SubWWA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Who We Are"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Image.asset('assets/images/wwa.jpg'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '\t The Mission pay back to society is a initiative of dedicated and determined group of engaged Bahujan academicians, officers, and others to bring out the needy and deserving young talent of the society and foster in them a sense of confidence purpose and social commitment. MPBS is a campaign for ushering in era of emancipation, empowerment and enlightenment. This endeavor of the organic intellectuals of society intends to facilitate and intensify the on-going march of the masses for educational empowerment. The social transformation and economic emancipation remains the immediate ideological objectives of the MPBS for endurable cultural change. Bring together of Bahujan intellectuals and transforming them into a conscious capable and committed class for intellectuals guided by the immortal principal of Ambedkarism and pay back to the society in the permanent agenda of the society. We are of the firm opinion that our personal power, positions, privileges and prosperity are the results of our forefathers’ relentless struggle accompanied by invaluable, incredible, untold, innumerable sacrifices and hardships. Whatever we owe today, is in direct proportion to our debt to the community we are born in. This debt must be paid back to the society with a fix amount of time, talent and treasure we possess so that our posterity may flourish in an egalitarian and sane society. It is our firm resolve to liberate the nation from historical social bondage of servitude in our own life time.',
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
                '\t With educational-agitational-organizational framework, MPBS further intends to strengthen the socio economic roots of the society and democratize the political institutions as enshrined in the Indian constitutional. Annihilating the caste, the structures of dominance, hatred, violence and hierarchy and transforming into an egalitarian and enlightened society with casteless outcastes stewardship, is the natural and logical course of action and strategical objective and permanent theme of MPBS campaign. Autonomous, independent dynamic social education movement for rational and scientific thinking and attitude is the only rigorous and righteous course of action for ossifying and consolidating permanent structure of peoples’ unity and their strength.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back!'),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
