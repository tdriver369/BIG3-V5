/*$(document).ready(function() {
        $('#userName').blur(function(event) {
                var name = $('#userName').val();
                $.get('PongServlet', {
                        userName : name
                }, function(responseText) {
                           var newList = responseText.split(',').join("<br>");
                        //$('#ajaxGetUserServletResponse').text(newList);
                           
                           //for (var i=0; i<newList.length; i++) {
                           document.getElementById("ajaxGetUserServletResponse").innerHTML = newList;
                           //}
                });
        });
});*/


/*
$(document).ready(function() {
        $('#submit').click(function(event) {
                var user = $('#username').val();
                var pass = $('#password').val();
                document.getElementById("hi4").innerHTML = user;
                

                $.get('TheBig3', {
                    username : user, password : pass
                }, function(responseText) {                        
                	//document.getElementById("hi4").innerHTML = "YOO";    
                });
        });
});
*/
