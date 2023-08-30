import 'dart:io';


void main(){

  //save each lap as a map and each one contain its details
 Map laptop1 = {"name" : "Asus ROG Strix G15 " ,
             "price" : "400.0 " ,
             "hard disk size" :"512 SSD",
             "Ram" : "16GB DDR5 RAM",
             "Processor":"Ryzen R7 6800H CPU",
             "camera" : "7 mg",};

  Map laptop2 = {"name" : "MICROSOFT SURFACE LAPTOP STUDIO " ,
             "price" : "800.0 " ,
             "hard disk size" :"1TB SSD",
             "Ram" : "16 GB DDR5 RAM",
             "Processor":"Ryzen R7 6800H CPU",
             "camera" : "9 mg",};

 Map laptop3 = {"name" : "Lenovo Ideapad Flex 5  " ,
             "price" : "200.0 " ,
             "hard disk size" :"256GB SSD",
             "Ram" : "6 GB RAM",
             "Processor":"Ryzen 5-5500U",
             "camera" : "2 mg",};

  Map laptop4 = {"name" : "Acer Nitro 5 " ,
             "price" : "500.0" ,
             "hard disk size" :"1TB SSD",
             "Ram" : "16 GB RAM ",
             "Processor":"11th Gen / Intel Core i5",
             "camera" : "4 mg",};
//save all maps in a List
List<Map>laptops = [laptop1 , laptop2 , laptop3 , laptop4];

//show details to the user
print("Welcome to our store : \n Here are Some Details of our Laptops ");
print("****************************************************************");

for (var i in laptops) {
  print( i["name"] + " - " + 
         i["price"].toString() + " - " +
         i["hard disk size"] + " - " + 
         i["Ram"] + " - " + 
         i["Processor"] + " - " + 
         i["camera"] 
         
       );
}
print("****************************************************************");
//take his/her budget then print only laptops which its price < or = to budget
  print("Enter your budget");
  double? budget = double.tryParse(stdin.readLineSync() ?? "0");

print("****************************************************************");

//condition
var newList = laptops.where((e) => e["price"] as double <= budget!).toList();
 //print results
 for (var e in newList) {
   print(e["name"] + " : " + e["price".toString()]);
 }


}
