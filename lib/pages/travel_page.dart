import 'package:flutter/material.dart';
import 'package:travel_ui/widgets/hotel_tile.dart';

class TravelPage extends StatelessWidget {
  const TravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUI(context),
    );
  }

  Widget _buildUI(BuildContext context) {
    return Stack(
      children: [
        _background(context),
        _locationsList(context),
      ],
    );
  }

  Widget _background(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.50,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            "https://images.pexels.com/photos/15483543/pexels-photo-15483543/free-photo-of-flag-of-kenya-in-close-up-shot.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.1,
        ),
        child: const Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Tembea Kenya 🌍",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "01 April - 05 April",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _locationsList(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.58,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
        ),
        child: ListView(
          children: const [
            HotelTile(
              name: "Massai Mara",
              image:
                  "https://images.pexels.com/photos/6056012/pexels-photo-6056012.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              price: 25,
              rating: 4.5,
            ),
            HotelTile(
              name: "Diani Beach",
              image:
                  "https://live.staticflickr.com/4276/34898763255_3140e2fc9c_c.jpg",
              price: 105,
              rating: 5.0,
            ),
            HotelTile(
              name: "Amboseli Park",
              image:
                  "https://img.goodfon.com/wallpaper/nbig/a/a6/nature-africa-view-mountain-kilimanjaro-elephant-beauty-prir.webp",
              price: 105,
              rating: 5.0,
            ),
            HotelTile(
              name: "Lake Nakuru",
              image:
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Plains_zebras%2C_Lake_Nakuru_National_Park%2C_Kenya.jpg/1200px-Plains_zebras%2C_Lake_Nakuru_National_Park%2C_Kenya.jpg?20080501122505",
              price: 50,
              rating: 4.5,
            ),
            HotelTile(
              name: "Girrafe Centre",
              image:
                  "https://images.pexels.com/photos/802112/pexels-photo-802112.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              price: 3,
              rating: 3.5,
            ),
          ],
        ),
      ),
    );
  }
}
