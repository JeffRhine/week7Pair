<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Recipe List View</title>
    <link rel="stylesheet" href="css/site.css" />
</head>
<body>
    <header>
        <h1>MVC Exercises - Views Part 2: Models</h1>        
    </header>
    <nav>
        <ul>
            <li><a href="recipeTiles">Tile Layout</a></li>
            <li><a href="recipeTable">Table Layout</a></li>
        </ul>
        
    </nav>
    <section id="main-content">
    	
 <h1>Recipes</h1>
		
		<c:forEach items= "${recipes}" var="recipe">
		<div class="recipeTiles">
		<img src="img/recipe${recipe.recipeId}.jpg" class="recipeImage"/>

		<h1 class="recipeName"><c:out value="${recipe.name}"/></h1>
	
		<h5 class="ingredients"><c:out value="${recipe.ingredients.size()}" /> Ingredients </h5>

		<fmt:formatNumber maxFractionDigits="0" value="${recipe.averageRating}" var="formattedRating"/>
		<img src="img/${formattedRating}-star.png" class ="stars"/>
		</div>
		</c:forEach>
		
		
		</section>
       <!-- Use the request attribute "recipes" (List<Recipe>) -->

    </section>
</body>
</html>