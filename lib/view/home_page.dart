import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc2/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required String title}) : super(key: key);
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column( 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left:16, top: 16 ,bottom: 16),
                  child: Text('Nama :', style: TextStyle(color: Colors.grey, fontSize: 18 )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: TextField(
                    obscureText: false,
                    controller: homeController.namaController.value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100) ),
                      labelText: 'Masukan Nama',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left:16, top: 16 ,bottom: 16),
                  child: Text('Email :', style: TextStyle(color: Colors.grey, fontSize: 18 )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: TextField(
                    obscureText: false,
                    controller: homeController.emailController.value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100) ),
                      labelText: 'Masukan Email',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left:16, top: 16 ,bottom: 16),
                  child: Text('Umur :', style: TextStyle(color: Colors.grey, fontSize: 18 )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: TextField(
                    obscureText: false,
                    controller: homeController.umurController.value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100) ),
                      labelText: 'Masukan Umur',
                    ),
                  ),
                ),
            Padding(
              padding:const  EdgeInsets.only(top: 16),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        homeController.namaDis.value = "";
                        homeController.emailDis.value = "";
                        homeController.umurDis.value = "";
                      },
                      style: ButtonStyle(
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                              side: const BorderSide(color: Colors.red)),
                        ),
                      ),
                      child: const Text("Hapus Data"),
                    ),
                  ),
                  const SizedBox(width: 30),

                  SizedBox(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        homeController.namaDis.value =  homeController.namaController.value.text;
                        homeController.emailDis.value =  homeController.emailController.value.text;
                        homeController.umurDis.value =  homeController.umurController.value.text;
                      },
                      style: ButtonStyle(
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                              side: const BorderSide(color: Colors.blue)),
                        ),
                      ),
                      child: const Text("Cetak"),
                    ),
                  ),

                ],
              ),
            ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                  height: 140,
                  color: Colors.grey,
                  width: double.infinity,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                             Padding(
                              padding: EdgeInsets.only(left: 20, top: 20),
                              child: Text('nama saya:', style: TextStyle(color: Colors.white),),
                            ),
                             Padding(
                              padding: EdgeInsets.only(left: 20, top: 20),
                              child: Text('email saya:', style: TextStyle(color: Colors.white),),
                            ),
                           Padding(
                            padding: EdgeInsets.only(left: 20, top: 20),
                            child: Text('umur saya:', style: TextStyle(color: Colors.white),),
                          ),
                          ]
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20, top: 20),
                                child: Obx(() => Text("${homeController.namaDis.value}", style: const TextStyle(color: Colors.white),)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20, top: 20),
                                child: Obx(() => Text("${homeController.emailDis.value}", style: const TextStyle(color: Colors.white),)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20, top: 20),
                                child: Obx(() => Text("${homeController.namaDis.value}", style: const TextStyle(color: Colors.white),)),
                              ),
                            ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
