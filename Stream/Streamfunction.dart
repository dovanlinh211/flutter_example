void main() async {
  elementAt1();
  lengthStream();
  firstWhere();
  joinElement();
  awaitFor();
}//end of void main

// Cac function
//element at
void elementAt1() async {
  var futureElement = await testStream().elementAt(1);
  print("the elementAt ${DateTime.now()} is $futureElement");
} 

// length
void lengthStream()async{
  var futureLength = await testStream().length;
  print("the lengthStream ${DateTime.now()} is $futureLength");
}

//firstWhere: get phan tu dau tien thoa man dieu kien cho truoc
void firstWhere() async{
  var futureWhere = await testStream().firstWhere((element)=>(element>11) );
  print("the first Where ${DateTime.now()} is $futureWhere");
}

//join: noi cac element thanh 1 string duy nhat
void joinElement() async{
  String futureJoinElement = await testStream().join(";");
  print("the JoinElement ${DateTime.now()} is $futureJoinElement");
}

// await for : tinh tong cac phan tu trong stream
void awaitFor() async{
  var sum =0;
  await for (final value in testStream()){
    sum+= value;
  }
  print("the Await For ${DateTime.now()} is $sum");
}



// Stream example
Stream<int> testStream() async*{
  yield 5; 
  yield 10; 
  yield 15;
  yield 20;
}

