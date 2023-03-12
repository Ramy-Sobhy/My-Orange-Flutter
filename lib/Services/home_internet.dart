import 'package:flutter/material.dart';
import 'package:my_orange/shared/component.dart';

class HomeInternetService extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Home internet',
        style: TextStyle(
          fontSize: 14,
        ),
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 15,),
                    Text(
                        'Home internet',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                        '02 XXX XXXX',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Icon(
                        Icons.upload_sharp,
                    color: Colors.deepOrange,
                      size: 40,
                    ),

                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,),
            const Text(
                'Please enter your landing number',
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(
                  width: 50,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'EX:02',
                      ),
                    ),
                ),
                const Spacer(),
                SizedBox(
                  width: 140,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'EX:12 33 1234',
                      ),
                    ),
                ),
                const Spacer(),
                defaultButton(
                    width: 100,
                    height: 30,
                    fontsize: 14,
                    background: Colors.white,
                    textcolor: Colors.deepOrange,
                   // borderColor: Colors.white,
                    text: 'Confirm',
                    onpress: (){},
                ),

              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                const Text('Orange Triple play'),
                const Spacer(),
                defaultButton(
                    text:'Login' ,
                    fontsize: 14,
                    textcolor: Colors.grey,
                    borderColor: Colors.grey,
                    radius: 0,
                    height: 25,
                    background: Colors.white,
                    width: 100,
                    onpress:(){},
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                const Text('Don\'t have Orange Home Internet?'),
                const Spacer(),
                defaultButton(
                  text:'Subscribe' ,
                  fontsize: 14,
                  textcolor: Colors.grey,
                  borderColor: Colors.grey,
                  radius: 0,
                  height: 25,
                  background: Colors.white,
                  width: 100,
                  onpress:(){},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
