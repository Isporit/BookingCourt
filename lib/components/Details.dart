import 'package:bookingapp/components/Button.dart';
import 'package:bookingapp/data/Data.dart';
import 'package:flutter/material.dart';
// ignore: camel_case_types

class Details extends StatefulWidget {
  final description;
  final imgUrl;
  final prixday;
  final prixnight;
  final title;
  final lieu;
  final clubName;
  final id;
  const Details({
    this.description,
    this.imgUrl,
    this.prixday,
    this.prixnight,
    this.title,
    this.lieu,
    this.clubName, 
    this.id,
  });

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
var selectedCourt =widget.id;
select(_id){
  setState(() {
    selectedCourt=_id;
  });
}
print(("selected=${selectedCourt}"));

    return ProductImages(
      imgUrl: widget.imgUrl,
      size: size,
      prixday: widget.prixday,
      prixnight: widget.prixnight,
      title: widget.title,
      description: widget.description,
      lieu: widget.lieu,
      clubName: widget.clubName,
      id:widget.id,
      selectedCourt:selectedCourt,
      select:select,
    );
  }
}

class ProductImages extends StatefulWidget {
  const ProductImages(
      {Key? key,
      required this.imgUrl,
      required this.size,
      required this.description,
      required this.prixday,
      required this.prixnight,
      required this.title,
      required this.lieu,
      required this.clubName, 
      required this.id, 
      required this.selectedCourt,  required  Function this.select, 

      
      })
      : super(key: key);

  final imgUrl;
  final Size size;
  final description;
  final prixday;
  final prixnight;
  final title;
  final lieu;
  final clubName;
  final id;
  final selectedCourt;
    final Function select;


  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  int line = 3;
  @override
  Widget build(BuildContext context) {
    final dataCourt = products.where(
        (e) => e.clubName.toLowerCase() == widget.clubName.toLowerCase());
           print("id page 1=${widget.selectedCourt}");
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(0),
          child: Row(
            children: dataCourt.map((type) {
              return Button(court: type.court,id:widget.id,selected:widget.selectedCourt,select:widget.select);
            }).toList(),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.network(widget.imgUrl[selectedImage]),
          ),
        ),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: widget.imgUrl.length,
              itemBuilder: (context, int) {
                return buildSmallPreview(int);
              }),
        ),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          widget.title,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          widget.lieu,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          '${widget.prixday} \DT /Day  ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          '${widget.prixnight} \DT /Night  ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                child: Text(
                  widget.description,
                  style: Theme.of(context).textTheme.headline6,
                  maxLines: line,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  line == 3
                      ? setState(() {
                          line = 50;
                        })
                      : setState(() {
                          line = 3;
                        });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    children: [
                      Text(
                        line == 3 ? "See More Details" : "See Less Details",
                        style: TextStyle(
                          color: Color(0xff26beb5),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        padding: EdgeInsets.all(5),
        height: widget.size.height * 0.1,
        width: widget.size.width * 0.3,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: selectedImage == index
                    ? Color(0xFFFF7643)
                    : Colors.transparent)),
        child: Image.network(widget.imgUrl[index]),
      ),
    );
  }
}



class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    Key? key,
    required this.color,
    required this.child,
  }) : super(key: key);
  final Color color;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 10),
      padding: EdgeInsets.only(
        top: 10,
      ),
      height: MediaQuery.of(context).size.height * 0.27,
      //  width:MediaQuery.of(context).size.height*0.43,
      width: double.infinity,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      child: child,
    );
  }
}
