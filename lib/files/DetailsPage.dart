import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Detailspage extends StatelessWidget {
  const Detailspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(children: [
            Row(
              children: [
                Image.asset("assets/Logo.png"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text("Overview"),
                Spacer(),
                Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                )
              ],
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '€53.200',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Received',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 16),
                              SizedBox(
                                height: 150,
                                child: LineChart(
                                  LineChartData(
                                    gridData: FlGridData(show: false),
                                    borderData: FlBorderData(show: false),
                                    titlesData: FlTitlesData(
                                      leftTitles: AxisTitles(
                                        sideTitles:
                                            SideTitles(showTitles: false),
                                      ),
                                      bottomTitles: AxisTitles(
                                        sideTitles: SideTitles(
                                          showTitles: true,
                                          reservedSize: 22,
                                          getTitlesWidget: (value, meta) {
                                            const months = [
                                              'Aug',
                                              'Sep',
                                              'Oct',
                                              'Nov',
                                              'Dec'
                                            ];
                                            return SideTitleWidget(
                                              axisSide: meta.axisSide,
                                              child: Text(
                                                months[value.toInt() %
                                                    months.length],
                                                style: const TextStyle(
                                                    fontSize: 12),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    lineBarsData: [
                                      LineChartBarData(
                                        isCurved: true,
                                        color: Colors.green,
                                        barWidth: 2,
                                        dotData: FlDotData(show: false),
                                        spots: const [
                                          FlSpot(0, 50),
                                          FlSpot(1, 52),
                                          FlSpot(2, 53),
                                          FlSpot(3, 54),
                                          FlSpot(4, 53.2),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '2.1%',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    // Informations à droite
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          _infoCard('12', 'Pending'),
                          const SizedBox(height: 16),
                          _infoCard('05', 'Unpaid'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }

  Widget _infoCard(String number, String label) {
    return Expanded(
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
