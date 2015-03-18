<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Preferences</title>
</head>
<body>
	<form action = "Preferences" method = "post">
            Choose Your Prefered Theme:</br>
            Background Color:
            <select name = "background">
                <option value = "Black">Black</option>
                <option value = "White">White</option>
                <option value = "Red">Red</option>
                <option value = "Yellow">Yellow</option>
                <option value = "Green">Green</option>
                <option value = "Blue">Blue</option>
            </select>
            <br>
            Font Color:
            <select name = "font">
                <option value = "Black">Black</option>
                <option value = "White">White</option>
                <option value = "Red">Red</option>
                <option value = "Yellow">Yellow</option>
                <option value = "Green">Green</option>
                <option value = "Blue">Blue</option>
            </select>
            <br>
            Post Color:
            <select name = "post">
                <option value = "Black">Black</option>
                <option value = "White">White</option>
                <option value = "Red">Red</option>
                <option value = "Yellow">Yellow</option>
                <option value = "Green">Green</option>
                <option value = "Blue">Blue</option>
            </select>
            <br>
            <button type="submit">Submit</button>
        </form>
</body>
</html>