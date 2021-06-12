<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background: rgb(9,121,63);
background: linear-gradient(90deg, rgba(9,121,63,1) 0%, rgba(0,212,255,1) 100%);">
        
        <center>
        <h1>Calcula las raíces de la ecuación</h1>
        <form action="index.jsp" method="POST" autocomplete="off">
             Coeficiente A
             <input type="number" name="a" step="any">X^2<br />
                <br />
             Coeficiente B
                <input type="number" name="b" step="any">X<br />
                <br />
                Coeficiente C
                <input type="number" name="c" step="any"><br />
                <br />
                <br />
                <input type="submit" name="enviar" value="calcular">
                <br />
                <br />
                <%
                  if(request.getParameter("enviar")!=null)
                  {
                      float a,b,c,x1,x2,disc;
                      a=Float.parseFloat(request.getParameter("a"));
                      b=Float.parseFloat(request.getParameter("b"));
                      c=Float.parseFloat(request.getParameter("c"));
                      disc = b * b - 4 * a * c;
                     if(disc>=0)
                     {
                         out.print("X1= "+(-b + Math.sqrt(disc)) / (2 * a)+"\n");
                         out.print("X2= "+(-b - Math.sqrt(disc)) / (2 * a));
                         
                     }
                     else
                     {
                       out.print("X1 = -"+request.getParameter("b")+" +Sqrt("+disc+"))/2"+request.getParameter("a")+")\n");
                       out.print("\nX2 = -"+request.getParameter("b")+" -Sqrt("+disc+"))/2"+request.getParameter("a")+")\n");
                       out.print("\nEl resultado contiene números complejos");
                     }
                  }
                %>
        </form>
        </center>
    </body>
</html>
