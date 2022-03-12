import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreateMoment extends StatefulWidget {
  const CreateMoment({Key? key}) : super(key: key);

  @override
  State<CreateMoment> createState() => _HomePageState();
}

class _HomePageState extends State<CreateMoment> {
  get child => null;
  bool _switch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Crear Momento',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    constraints: const BoxConstraints(maxHeight: 300),
                    child: const Image(
                      image: AssetImage('assets/images/createmoment2.png'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  SvgPicture.asset('assets/icons/plus.svg')
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/edit.svg',
                  color: Colors.black,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Cuéntale tu momento al mundo...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Divider(
              color: Color(0xffEAEAEA),
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/hash.svg'),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Agregar Hashtags'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Color(0xffEAEAEA),
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/map.svg'),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Lugar'),
                      ],
                    ),
                  ),
                  const Text(
                    'Cusco, perú',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  SvgPicture.asset('assets/icons/right.svg')
                ],
              ),
            ),
            const Divider(
              color: Color(0xffEAEAEA),
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/eye.svg'),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Mostrar a '),
                      ],
                    ),
                  ),
                  const Text(
                    'Publico',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  SvgPicture.asset('assets/icons/right.svg')
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Permitir comentarios'),
                      ],
                    ),
                  ),
                  Switch(
                      value: _switch,
                      onChanged: (bool valueIn) {
                        setState(() {
                          _switch = valueIn;
                        });
                      }),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Publicar",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style:
                    ElevatedButton.styleFrom(primary: const Color(0xff1B8F26)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
