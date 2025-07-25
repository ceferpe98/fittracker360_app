
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class DashBoardWidget extends StatefulWidget {
  const DashBoardWidget({super.key});

  @override
  State<DashBoardWidget> createState() => _DashBoardWidgetState();
}

class _DashBoardWidgetState extends State<DashBoardWidget> {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      /*appBar: AppBar(
        
        // Esto representa el boton de retroceder luego de haber 
        //cuando estás en una pantalla que fue empujada con Navigator.push()
        automaticallyImplyLeading: false,    
        backgroundColor: Colors.amber,
        toolbarHeight: 60.0,   
        
        title: Container(
          color: Colors.deepOrange,
          padding: EdgeInsets.all(1),
          child: Row(
            children: [
              //SizedBox(width: 10,),
              Text('Hola'),
            ],            
          ),
        ),
      
          elevation: 0,
      ),
      body:
         
        Center(
          child: Text('Principal'),
        )*/
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0 + statusBarHeight),

        child: Container(
          padding: EdgeInsets.only(top: statusBarHeight),
          // Contenedor appBar
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end, // Empuja todo hacia abajo
            children: [
              Container(
                //Contenedor del Row
                color: Colors.white,
                padding: EdgeInsets.all(8),
                child: Row(
                  //spacing: 20,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1500088139251-37350df3c1ad?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NTMzNzE2Nzl8&ixlib=rb-4.1.0&q=80&w=1080',
                        fit: BoxFit.cover,
                      ),
                    ),

                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hola Cesar'),
                        Text('¿Listo para entrenar hoy?'),
              
                      ],
                    ),
                    SizedBox(width: 160),
                    FloatingActionButton(onPressed: () {}, child: Icon(Icons.notifications),),
                  ], 
                ),
              ),
              
            ],
          ),
        ),
      ),
      
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.green, Color(0xFF2E7D32)],
                      stops: [0,1],
                      begin: AlignmentDirectional(1, 1),
                      end: AlignmentDirectional(-1, 1)
                      ),
                      borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(
                        'Nitricion & Fitness',
                        textAlign: TextAlign.center,
                        style: 
                          
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontFamily: GoogleFonts.interTight(
                              
                              fontWeight: FontWeight.bold,
                              fontStyle:  Theme.of(context).textTheme.headlineMedium?.fontStyle
                            ).fontFamily,
                            color: Colors.white,
                            fontSize: 30,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: Theme.of(context).textTheme.headlineMedium?.fontStyle,
                          ),
                                               
                      ),

                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                        child: Text(
                          'Controla tu alimentacion y progreso fisico',
                          textAlign: TextAlign.center,
                          style: 
                            Theme.of(context).textTheme.headlineMedium?.copyWith(
                              fontFamily: GoogleFonts.inter(
                                
                                fontWeight: FontWeight.bold,
                                fontStyle:  Theme.of(context).textTheme.headlineMedium?.fontStyle
                              ).fontFamily,
                              fontSize: 15,
                              color: Color(0xE6FFFFFF),
                              letterSpacing: 0.0,
                              //fontWeight: FontWeight.bold,
                              fontStyle: Theme.of(context).textTheme.headlineMedium?.fontStyle,
                            ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: Row(
                          spacing: 24,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0x33FFFFFF),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Icon(
                                        Icons.restaurant_menu,
                                        color: Colors.white,
                                        size: 32,
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 0),
                                    child: Text(
                                      'Planes',
                                      textAlign: TextAlign.center,
                                      style:
                                          Theme.of(context).textTheme.labelSmall?.copyWith(
                                              fontFamily: GoogleFonts.inter(
                                                fontWeight: Theme.of(context).textTheme.labelSmall?.fontWeight,
                                                fontStyle:  Theme.of(context).textTheme.labelSmall?.fontStyle
                                              ).fontFamily,
                                              fontSize: 15,
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                              fontWeight: Theme.of(context).textTheme.labelSmall?.fontWeight,
                                              fontStyle: Theme.of(context).textTheme.headlineMedium?.fontStyle,
                                            ),
                                      
                                    ),
                                  ),
                              ],

                            ),

                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0x33FFFFFF),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Icon(
                                        Icons.fitness_center,
                                        color: Colors.white,
                                        size: 32,
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 0),
                                    child: Text(
                                      'Ejercicios',
                                      textAlign: TextAlign.center,
                                      style:
                                          Theme.of(context).textTheme.labelSmall?.copyWith(
                                              fontFamily: GoogleFonts.inter(
                                                fontWeight: Theme.of(context).textTheme.labelSmall?.fontWeight,
                                                fontStyle:  Theme.of(context).textTheme.labelSmall?.fontStyle
                                              ).fontFamily,
                                              fontSize: 15,
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                              fontWeight: Theme.of(context).textTheme.labelSmall?.fontWeight,
                                              fontStyle: Theme.of(context).textTheme.headlineMedium?.fontStyle,
                                            ),
                                      
                                    ),
                                  ),
                              ],

                            ),

                          
                          Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0x33FFFFFF),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Icon(
                                        Icons.analytics,
                                        color: Colors.white,
                                        size: 32,
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 0),
                                    child: Text(
                                      'Progreso',
                                      textAlign: TextAlign.center,
                                      style:
                                          Theme.of(context).textTheme.labelSmall?.copyWith(
                                              fontFamily: GoogleFonts.inter(
                                                fontWeight: Theme.of(context).textTheme.labelSmall?.fontWeight,
                                                fontStyle:  Theme.of(context).textTheme.labelSmall?.fontStyle
                                              ).fontFamily,
                                              fontSize: 15,
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                              fontWeight: Theme.of(context).textTheme.labelSmall?.fontWeight,
                                              fontStyle: Theme.of(context).textTheme.headlineMedium?.fontStyle,
                                            ),
                                      
                                    ),
                                  ),
                              ],

                            )


                          ],

                        ),
                      ),
                    
                    ],
                  ),
                ),
              ),
           
            // GRIDVIEW -----------------------------
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 0),
                      child: GridView(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: 0.7,
                        ),
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,

                        children: [
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).dialogBackgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 8,
                                    color: Color(0x1A000000),
                                    offset: Offset(0.0, 2),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(16)
                              ),
                              child:Padding(
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE8F5E8),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Icon(
                                          Icons.restaurant,
                                          color: Colors.green,
                                          size: 28,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Planes de Alimentacion',
                                      textAlign: TextAlign.center,
                                       style: 
                          
                                        Theme.of(context).textTheme.titleMedium?.copyWith(
                                          fontFamily: GoogleFonts.interTight(
                                            
                                            fontWeight: FontWeight.w600,
                                            fontStyle:  Theme.of(context).textTheme.titleMedium?.fontStyle
                                          ).fontFamily,
                                          
                                          //fontSize: 10,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: Theme.of(context).textTheme.titleMedium?.fontStyle,
                                        ),
                                      ),
                                      SizedBox(height: 12,),

                                      Text(
                                      'Crea y gestiona tus planes nutricionales',
                                      textAlign: TextAlign.center,
                                       style: 
                          
                                        Theme.of(context).textTheme.bodySmall?.copyWith(
                                          fontFamily: GoogleFonts.interTight(
                                            
                                            fontWeight: Theme.of(context).textTheme.bodySmall?.fontWeight,
                                            fontStyle:  Theme.of(context).textTheme.bodySmall?.fontStyle
                                          ).fontFamily,
                                          color: Theme.of(context).colorScheme.secondary,
                                          //fontSize: 10,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: Theme.of(context).textTheme.titleMedium?.fontStyle,
                                        ),

                                      ),


                                  ],


                                ),
                              ),
                              
                            ),

                            ),
                        
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).dialogBackgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 8,
                                    color: Color(0x1A000000),
                                    offset: Offset(0.0, 2),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(16)
                              ),
                              child:Padding(
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE8F5E8),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Icon(
                                          Icons.monitor_weight,
                                          color: Colors.blue,
                                          size: 28,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Seguimiento Corporal',
                                      textAlign: TextAlign.center,
                                       style: 
                          
                                        Theme.of(context).textTheme.titleMedium?.copyWith(
                                          fontFamily: GoogleFonts.interTight(
                                            
                                            fontWeight: FontWeight.w600,
                                            fontStyle:  Theme.of(context).textTheme.titleMedium?.fontStyle
                                          ).fontFamily,
                                          
                                          //fontSize: 10,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: Theme.of(context).textTheme.titleMedium?.fontStyle,
                                        ),
                                      ),
                                      SizedBox(height: 12,),

                                      Text(
                                      'Registra peso, medidas y progreso',
                                      textAlign: TextAlign.center,
                                       style: 
                          
                                        Theme.of(context).textTheme.bodySmall?.copyWith(
                                          fontFamily: GoogleFonts.interTight(
                                            
                                            fontWeight: Theme.of(context).textTheme.bodySmall?.fontWeight,
                                            fontStyle:  Theme.of(context).textTheme.bodySmall?.fontStyle
                                          ).fontFamily,
                                          color: Theme.of(context).colorScheme.secondary,
                                          //fontSize: 10,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: Theme.of(context).textTheme.titleMedium?.fontStyle,
                                        ),

                                      ),


                                  ],


                                ),
                              ),
                              
                            ),

                            ),
                        
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).dialogBackgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 8,
                                    color: Color(0x1A000000),
                                    offset: Offset(0.0, 2),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(16)
                              ),
                              child:Padding(
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE8F5E8),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Icon(
                                          Icons.calculate,
                                          color: Colors.orange,
                                          size: 28,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Calculadora Nutricional',
                                      textAlign: TextAlign.center,
                                       style: 
                          
                                        Theme.of(context).textTheme.titleMedium?.copyWith(
                                          fontFamily: GoogleFonts.interTight(
                                            
                                            fontWeight: FontWeight.w600,
                                            fontStyle:  Theme.of(context).textTheme.titleMedium?.fontStyle
                                          ).fontFamily,
                                          
                                          //fontSize: 10,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: Theme.of(context).textTheme.titleMedium?.fontStyle,
                                        ),
                                      ),
                                      SizedBox(height: 12,),

                                      Text(
                                      'Calcula calorias y macronutrientes',
                                      textAlign: TextAlign.center,
                                       style: 
                          
                                        Theme.of(context).textTheme.bodySmall?.copyWith(
                                          fontFamily: GoogleFonts.interTight(
                                            
                                            fontWeight: Theme.of(context).textTheme.bodySmall?.fontWeight,
                                            fontStyle:  Theme.of(context).textTheme.bodySmall?.fontStyle
                                          ).fontFamily,
                                          color: Theme.of(context).colorScheme.secondary,
                                          //fontSize: 10,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: Theme.of(context).textTheme.titleMedium?.fontStyle,
                                        ),

                                      ),


                                  ],


                                ),
                              ),
                              
                            ),

                            ),
                          
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).dialogBackgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 8,
                                    color: Color(0x1A000000),
                                    offset: Offset(0.0, 2),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(16)
                              ),
                              child:Padding(
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE8F5E8),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Icon(
                                          Icons.fitness_center,
                                          color: Colors.purple,
                                          size: 28,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Rutinas de Ejercicio',
                                      textAlign: TextAlign.center,
                                       style: 
                          
                                        Theme.of(context).textTheme.titleMedium?.copyWith(
                                          fontFamily: GoogleFonts.interTight(
                                            
                                            fontWeight: FontWeight.w600,
                                            fontStyle:  Theme.of(context).textTheme.titleMedium?.fontStyle
                                          ).fontFamily,
                                          
                                          //fontSize: 10,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: Theme.of(context).textTheme.titleMedium?.fontStyle,
                                        ),
                                      ),
                                      SizedBox(height: 12,),

                                      Text(
                                      'Seguimiento de entrenamientos',
                                      textAlign: TextAlign.center,
                                       style: 
                          
                                        Theme.of(context).textTheme.bodySmall?.copyWith(
                                          fontFamily: GoogleFonts.interTight(
                                            
                                            fontWeight: Theme.of(context).textTheme.bodySmall?.fontWeight,
                                            fontStyle:  Theme.of(context).textTheme.bodySmall?.fontStyle
                                          ).fontFamily,
                                          color: Theme.of(context).colorScheme.secondary,
                                          //fontSize: 10,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: Theme.of(context).textTheme.titleMedium?.fontStyle,
                                        ),

                                      ),


                                  ],


                                ),
                              ),
                              
                            ),

                            ),
                        
                        
                        ],


                      ),

                    ),

            ],

          ),
        ),
      ),
    );
  }
}
