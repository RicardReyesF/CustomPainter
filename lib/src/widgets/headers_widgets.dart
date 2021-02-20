import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      color: Color(0xfff615AAB),
    );
  }
}

class HeaderBordesRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      decoration: BoxDecoration(
        color: Color(0xfff615AAB),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60.0),
          bottomRight: Radius.circular(60.0)
        )
      ),
    );
  }
}


class HeaderWidgetDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter:_HeaderDiagonalPainter() ,
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
      final lapiz = new Paint();
      lapiz.color = Color(0xff615AAB);
      lapiz.style = PaintingStyle.fill; // fill es el relleno y stroke es la linea
      lapiz.strokeWidth = 20;

      final linea = new Path();

      linea.moveTo(0,size.height * 0.35);
      linea.lineTo(size.width, size.height * 0.25);
      linea.lineTo(size.width, 0);
      linea.lineTo(0, 0);
      

      canvas.drawPath(linea,lapiz);

    }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
     return true; 
  }

}

class HeaderWidgetTriangulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter:_HeaderTrianguloPainter() ,
      ),
    );
  }
}

class _HeaderTrianguloPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
      final lapiz = new Paint();
      lapiz.color = Color(0xff615AAB);
      lapiz.style = PaintingStyle.fill; // fill es el relleno y stroke es la linea
      lapiz.strokeWidth = 20;

      final linea = new Path();
      /*
      linea.moveTo(size.width,size.height);
      linea.lineTo(0,0);
      linea.lineTo(size.width,0);
      */
      linea.lineTo(size.width,size.height);
      linea.lineTo(0,size.height);
      linea.lineTo(0, 0);

      canvas.drawPath(linea,lapiz);

    }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
     return true; 
  }

}

class HeaderWidgetPico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter:_HeaderPicoPainter() ,
      ),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
      final lapiz = new Paint();
      lapiz.color = Color(0xff615AAB);
      lapiz.style = PaintingStyle.fill; // fill es el relleno y stroke es la linea
      lapiz.strokeWidth = 20;

      final linea = new Path();
      
      linea.lineTo(0,size.height * 0.25);
      linea.lineTo(size.width * 0.5,size.height * 0.30);
      linea.lineTo(size.width,size.height * 0.25);
      linea.lineTo(size.width, 0);
    
      


      canvas.drawPath(linea,lapiz);

    }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
     return true; 
  }

}
class HeaderWidgetCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter:_HeaderCurvoPainter() ,
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
      final lapiz = new Paint();
      lapiz.color = Color(0xff615AAB);
      lapiz.style = PaintingStyle.fill; // fill es el relleno y stroke es la linea
      lapiz.strokeWidth = 20;

      final linea = new Path();
      
      linea.lineTo(0,size.height * 0.25);
      linea.quadraticBezierTo(size.width * 0.5, size.height * 0.35, size.width,size.height * 0.25);
      linea.lineTo(size.width, 0);
    
      


      canvas.drawPath(linea,lapiz);

    }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
     return true; 
  }

}

class HeaderWidgetWave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter:_HeaderWavePainter() ,
      ),
    );
  }
}

class _HeaderWavePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
      final lapiz = new Paint();
      lapiz.color = Color(0xff615AAB);
      lapiz.style = PaintingStyle.fill; // fill es el relleno y stroke es la linea
      lapiz.strokeWidth = 20;

      final linea = new Path();
      
      linea.lineTo(0,size.height * 0.25);
      linea.quadraticBezierTo(size.width * 0.3, size.height * 0.35, size.width * 0.5,size.height * 0.25);
      linea.quadraticBezierTo(size.width * 0.66, size.height * 0.15, size.width,size.height * 0.25);
      linea.lineTo(size.width, 0);
      


      canvas.drawPath(linea,lapiz);

    }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
     return true; 
  }

}

class HeaderWidgetWaveGradiant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter:_HeaderWaveGradiantPainter() ,
      ),
    );
  }
}

class _HeaderWaveGradiantPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

      final Rect rect = new Rect.fromCircle(
        center: Offset(3.8,150.0),
        radius: 188.0
      );

      final Gradient gradient = new LinearGradient(
        colors: <Color>[
          Color(0xff6D05E8),
          Color(0xffC012FF),
          Color(0xff6D05FA),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,

        stops: [
          0.2,
          0.5,
          1.0
        ]
      );

      final lapiz = new Paint()..shader = gradient.createShader(rect);
      lapiz.color = Colors.red;
      lapiz.style = PaintingStyle.fill; // fill es el relleno y stroke es la linea
      lapiz.strokeWidth = 20;

      final linea = new Path();
      
      linea.lineTo(0,size.height * 0.25);
      linea.quadraticBezierTo(size.width * 0.3, size.height * 0.35, size.width * 0.5,size.height * 0.25);
      linea.quadraticBezierTo(size.width * 0.66, size.height * 0.15, size.width,size.height * 0.25);
      linea.lineTo(size.width, 0);
      


      canvas.drawPath(linea,lapiz);

    }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
     return true; 
  }

}