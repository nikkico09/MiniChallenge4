<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<%
	    String fontColor = "White";
	    String postColor = "Green";
	    String backgroundColor = "blue";
	    String s1="This sentence has five words. Here are five more words. Five-word sentences are fine.But several together become monotonous. Listen to what is happening. The writing is getting boring. The sound of it drones. It's like a stuck record. The ear demands some variety.";
	    String s2="Now listen. I vary the sentence length, and I create music. Music. The writing sings. It has a pleasant rhythm, a lilt, a harmony. I use short sentences. And I use sentences of medium length. And sometimes, when I am certain the reader is rested, I will engage him with sentence of considerable length, a sentence that burns with energy and builds with all the impetus of a crescendo, the roll of the drums, the crash of cymbak-sounds that say listen to his, it is important.";
	    
	    Cookie[] cookies = request.getCookies();
	    
	    if (cookies!= null){
	        
	        for (Cookie c : cookies){
	                if (c.getName().equals("background")){
	                    backgroundColor = c.getValue();
	                    
	                }
	                else if (c.getName().equals("font")){
	                    fontColor = c.getValue();
	                    
	                }
	                else if (c.getName().equals("post")){
	                    postColor = c.getValue();
	                   
	                }
	                 else if (c.getName().equals("s1")){
	                    s1 = c.getValue();
	                    
	                }
	                else if (c.getName().equals("s2")){
	                    s2 = c.getValue();
	                   
	                }
	        }
	    }
	    %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main</title>
</head>


<body style = "background-color: <%=backgroundColor%>; position: absolute; left: 250px; right: 250px;">
	<div style = "background-color: <%=postColor%>; color: <%=fontColor%>;" id = "text1";>
            <p><%out.println(s1);%>
            </p>
        </div>
        <div style = "background-color: <%=postColor%>; color: <%=fontColor%>;" id = "text2">
            <p><%out.println(s2);%>
                </p>
        </div>
        <div style = "background-color: <%=postColor%>; color: <%=fontColor%>;">
            <a href="preferences.jsp">Set Preferences</a>
        </div>
</body>
</html>