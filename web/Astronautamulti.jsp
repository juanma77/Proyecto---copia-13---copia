<%-- 
    Document   : Astronautamulti
    Created on : 25/11/2017, 04:29:09 PM
    Author     : CARLOS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head> 
        <meta charset="UTF-8">
        <title>astronauta</title>
        <link rel="stylesheet" type="text/css" href="style.css">

    </head>
    <body background="images/Mesa de trabajo 6 copia 2mdpi.jpg">
        <div id="counter">1:00</div>

        <div class="graph">
            <img id="pierdo" src="images/nada.png">
            <img id="spaceman" src="images/Recurso 25.png" style="float: right;">
        </div>

        <!--<button onclick="move();"> mover</button>-->

        <div class="divAbajo">
            <img id="resp" src="images/writeplz.png">
            <input type="text" name="answer" id="answer"  onkeypress="handleKeyPress(event)" autofocus>
            <div class="centro" id="operation"></div>

        </div>
        <img id="siguiente" onclick="location = 'fin2.jsp'" src="sig.png" width="90" height="50" />
        <script type="text/javascript">
            var imag = ["images/Recurso 22.png", "images/Recurso 23.png", "images/Recurso 24.png"];
            var contIm = 0;
            var flag = false;
            var flag1 = false;

            var op = document.getElementById("operation");
            var result;
            var score = 0;

            countdown();
            opera();

            function countdown() {
                var traveler = document.getElementById("spaceman");
                var ans = document.getElementById("answer");
                var perder = document.getElementById("pierdo");
                var seconds = 59;
                function tick() {
                    var counter = document.getElementById("counter");
                    if (flag == false) {
                        seconds--;
                    }
                    counter.innerHTML = "0:" + (seconds < 10 ? "0" : "") + String(seconds);
                    if (seconds > 0 && flag == false) {
                        setTimeout(tick, 1000);
                    } else {
                        counter.innerHTML = "Game over";
                        flag = true;

                        if (flag1 == false) {
                            traveler.src = "images/Recurso 15.png";
                            op.innerHTML = "¡OH NO!";
                            ans.disabled = true;
                            perder.src = "images/Recurso 53.png";
                            camina();

                        }
                    }
                }
                tick();
            }

            function move() {
                var ans = document.getElementById("answer");
                var traveler = document.getElementById("spaceman");
                if (flag == false) {
                    traveler.src = imag[contIm];
                    contIm++;
                    if (contIm == 4) {
                        traveler.src = "images/Recurso 15.png"
                        op.innerHTML = "¡Felicidades!";
                        ans.disabled = true
                        flag = true;
                        flag1 = true;
                        camina();
                    }
                }
            }

            function handleKeyPress(e) {
                var key = e.keyCode || e.which;
                if (key == 13) {
                    //alert("enter");
                    checa();
                }
            }

            function opera() {
                var num1 = Math.floor((Math.random() * 10) + 1);
                var num2 = Math.floor((Math.random() * 10) + 1);
                var choice = Math.floor((Math.random() * 3) + 1);

                op.innerHTML = num1 + " * " + num2;
                result = num1 * num2;

            }

            function checa() {
                var ans = document.getElementById("answer");
                if (ans.value == result) {
                    move();
                    if (contIm != 4) {
                        opera();
                    }
                    ans.value = "";
                } else {
                    ans.style.backgroundColor = "red";
                    ans.value = "";
                    setTimeout(cambia, 250);
                    //ans.style.backgroundColor="#f4a727";
                }

                function cambia() {
                    var ans = document.getElementById("answer");
                    ans.style.backgroundColor = "#f4a727";
                }
            }

            function camina() {
                var traveler = document.getElementById("spaceman");
                let start = Date.now();

                let timer = setInterval(function () {
                    let timePassed = Date.now() - start;

                    traveler.style.bottom = timePassed / 5 + 'px';

                    if (timePassed > 2000)
                        clearInterval(timer);

                }, 20);
            }

        </script>
    </body>
</html>