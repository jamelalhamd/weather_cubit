import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc/modals/weathermodals.dart';
import 'package:weather_bloc/mywidget/myimage.dart';
import 'package:weather_bloc/nodata.dart';
import 'package:weather_bloc/search.dart';
import 'package:weather_bloc/weather/weather_cubit.dart';


class weatherscreen extends StatefulWidget {
  const weatherscreen({super.key});


  @override
  State<weatherscreen> createState() => _weatherscreenState();
}

class _weatherscreenState extends State<weatherscreen> {


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {

        WeatherCubit blk=BlocProvider.of<WeatherCubit>(context);

        if(state is Weatherloading ) {return


          Scaffold(

            appBar: AppBar(
                elevation: 50,
                backgroundColor: Colors.blue,
                centerTitle: true,
                actions: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Search(),
                          ));
                    },
                    icon: const Icon(Icons.search, size: 30),
                  )
                ],
                title: const Text(
                  " Weather ",
                  style: TextStyle(
                      color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                )),
            body: Center(child: CircularProgressIndicator()),

          );


        }

        else if (state is Weathersucess) {
        return Scaffold(
          backgroundColor: Colors.orangeAccent.shade100,


          appBar: AppBar(

              elevation: 50,
              backgroundColor: Colors.orange.shade500,
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {




                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Search(),));
                  },
                  icon: const Icon(Icons.search, size: 30),
                )
              ],
              title: const Text(
                " Weather",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),


          body:


          (blk.weatherModal1 == null) ? nodata() : NewWidgetmitdata(wth: blk.weatherModal1,),

        );}

        else return    Scaffold(
          appBar: AppBar(
              elevation: 50,
              backgroundColor: Colors.blue,
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Search(),
                        ));
                  },
                  icon: const Icon(Icons.search, size: 30),
                )
              ],
              title: const Text(
                " Weather ",
                style: TextStyle(
                    color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              )),

          body: nodata(),
        );
      },
    );
  }
}

class NewWidgetmitdata extends StatelessWidget {
  const NewWidgetmitdata({
    super.key,
    required this.wth,
  });

  final WeatherModal? wth;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const SizedBox(
        height: 150,
      ),
      Text(
        ' ${BlocProvider.of<WeatherCubit>(context).city_name}',
        style: const TextStyle(
          color: Colors.black,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        wth!.date,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
      ),
      const SizedBox(
        height: 50,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            myimagenet(width:50, heinght:50, url: 'https:${wth!.iconData}'),

            const SizedBox(
              width: 50,
            ),
            Text(
              '${wth!.tem}',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            Column(
              children: [
                Text(
                  "Max Tem : ${wth?.MAXtem}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  "Min Tem : ${wth?.MINtem}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 50,
      ),
      Text(
        wth!.state,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
    ]);
  }
}



