import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc/failur.dart';
import 'package:weather_bloc/mywidget/mytextfiled_normal.dart';
import 'package:weather_bloc/weather/weather_cubit.dart';
import 'package:weather_bloc/weathesehome.dart';


class Search extends StatefulWidget {
  const Search({super.key,});


  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  @override
  @override
  Widget build(BuildContext context) {
    // weathemodel1=null;

    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        WeatherCubit blk=BlocProvider.of<WeatherCubit>(context);
        return Scaffold(

          appBar: AppBar(
              elevation: 50,
              backgroundColor: Colors.blue,
              centerTitle: true,

              title: Text(" Weather", style: TextStyle(color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),)),
          body: Center(child: myTextfiled(label: 'Search',
            suffixIcon: Icons.search,
            onChange: (value) {
            blk.city_name   = value;
            },

            onPressedicon: () async {
              try {
               blk.getweather(blk.city_name!);



                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => weatherscreen()));
              } catch (e) {
                for (int i = 0; i < 10; ++i) {
                  print("failure : ${blk.weatherModal1}");
                }

                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => failur()));
              }
            },


          )),
        );
      },
    );
  }
}
