import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: GmailApp(),
));

class  GmailApp extends StatefulWidget {
  @override
  _GmailAppState createState() => _GmailAppState();
}

class _GmailAppState extends State<GmailApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(left: 20,right: 20),
        child: ListView(
          children: <Widget>[
            SizedBox(
                height: 20,
              ),
              _buscar(),
              SizedBox(
                height: 20,
              ),
              Text('Principal'),
               SizedBox(
                height: 30,
              ),
              _shipcard(),
              SizedBox(
                height: 20,
              ),
              _correos('A', 'Andres Aguirre', 'Depositar a cuenta', '2 nov.'),
               _correos('B', 'Brenda Lopez', 'Retiro de dinero', '3 nov.'),
                _correos('C', 'Carlos Tello', 'Enviar cuentas ', '4 nov.'),
                 _correos('D', 'Diana Diaz', 'Enviar cuentas ', '4 nov.')

          ],
        )
         
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.white,
        child: Icon(Icons.add,color: Colors.red,),
      ),
    );
  }
  Widget _buscar(){
    return Container(        
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1
          ),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.menu),
            Text('Buscar en el correo electrónico'),
            CircleAvatar(
              radius: 15,
            )

          ],
        ),
    );
  }

  Widget _shipcard(){
    IconData uno=Icons.supervised_user_circle;
    IconData dos=Icons.video_call;
    IconData tres=Icons.info;
    Color cuno=Colors.blue;
    Color cdos=Colors.green;
    Color ctres=Colors.orange;
    

    return Container(        
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[          
          _containercus('Social', 'Youtube', '2 nuevos',uno,cuno),
           _containercus('Promociones', 'Think with Google', '1 nuevos',dos,cdos),
            _containercus('Notificaciones', 'Google play', '3 nuevos',tres,ctres),
            

        ],
      ),
    );
  }

  Widget _containercus(String titulo,String subti,String notifi,IconData ico,Color colr){
          return Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(ico,size: 30,color: colr,),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(titulo,style: TextStyle(fontWeight: FontWeight.bold),)   ,
                    Text(subti) , 
                      ],
                    ),
                  )        ,     
                   FlatButton(
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                     ,
                     onPressed: (){},
                     color: colr,
                     child: Text(notifi,style: TextStyle(color: Colors.white),),
                   )
                ],
              ),
          );

  }

  Widget _correos(String letra,String tit,String sub,String fecha){
    return Container(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 20,
              child: Text(letra),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(tit,style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(sub,style: TextStyle(fontWeight: FontWeight.bold),)

                ],
              ),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(fecha),
                 Icon(Icons.star,color: Colors.orange,)

                ],
              ),
           
          ],
        ),
    );
  }
}
 