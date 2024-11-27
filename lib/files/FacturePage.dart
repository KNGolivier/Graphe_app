import 'package:flutter/material.dart';

class Facturepage extends StatelessWidget {
  const Facturepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {},
                    color: Colors.black,
                  ),
                  const Center(
                    child: Text(
                      "Create",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.more_horiz)
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Invoice #0028",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Receipent",
                style: TextStyle(fontSize: 10),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 24.0,
                      backgroundImage: AssetImage('assets/avatar.png'),
                    ),
                    const SizedBox(width: 16.0),
                    const Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lautaro Martinez',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          'Lautaro.m@gmail.com',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color.fromARGB(255, 157, 150, 150),
                          ),
                        ),
                      ],
                    )),
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.green),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const Text(
                "Project",
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Redesign Mobile App",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    )),
              ),
              const Row(
                children: [
                  Text("Item"),
                  Spacer(),
                  Text(
                    "+ Add Item",
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
              Container(
                width: 300,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  children: [
                    const Text("Description"),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Mobile App Design Service",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Qty"),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "1",
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  )),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text("Price"),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "€ 5.200",
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 15),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  )),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text("Total"),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "€ 5.200",
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 15),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  )),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Row(
                children: [
                  Column(
                    children: [Text("Issued")],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
