import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Контейекр'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.network(
                        'https://www.google.com/search?q=%D0%BA%D0%B0%D1%80%D1%82%D0%B8%D0%BD%D0%BA%D0%B0&sca_esv=580120143&tbm=isch&sxsrf=AM9HkKlY2sO0luE28sLzKVQ8NYmAuqIAxA:1699363861725&source=lnms&sa=X&ved=2ahUKEwjwzcna_7GCAxUVRfEDHTPMATYQ_AUoAXoECAEQAw&biw=1722&bih=977&dpr=2#imgrc=7zdvcmWAi3pvvM')
                    .image,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Контейекр'),
//       ),
//       body: Center(
//           child: Container(
//         decoration: BoxDecoration(
//           // shape: BoxShape.circle,
//           border: Border.all(),
//           color: Colors.amber[600],
//         ),
//         alignment: Alignment.center,
//         // width: 300,
//         // height: 300,
//         margin: EdgeInsets.all(30.0),
//         padding: EdgeInsets.all(0.0),
//         child: Text('data'),
//       )),
//     );
//   }
// }
