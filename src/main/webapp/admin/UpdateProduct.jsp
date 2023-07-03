<%@ page import="Helpers.MongoDB" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="org.bson.Document" %>
<%@ page import="Helpers.Product" %>
<%
    System.out.println("HELLLLLLLLLLO");
    MongoDB db = new MongoDB();
    System.out.println(request.getParameter("id"));

    String name = request.getParameter("name");
    System.out.println("1");

    Integer id = Integer.valueOf(request.getParameter("id"));
    System.out.println("2");

    Integer price = Integer.valueOf(request.getParameter("price"));
    System.out.println("3");

    String description = request.getParameter("description");
    System.out.println("4");

    Integer num = Integer.valueOf(request.getParameter("pieces"));
    System.out.println("5");

    String category = request.getParameter("category");
    System.out.println("6");


    System.out.println(name + ": " + description + " " + category + " " + price  + num + " "+ id );


//    Product old = db.findProductById(id);

    Document query = new Document("_id", id);


    Document productDoc = db.getCollection().find(query).first();

// convert the product document to a Product object
    Product old = new Product(
            productDoc.getInteger("_id"),
            productDoc.getString("name"),
            productDoc.getInteger("price"),
            productDoc.get("review", Map.class),
            productDoc.getString("description"),
            productDoc.getInteger("num"),
            productDoc.getString("category")
    );
    System.out.println(old);

// update the product object with new values
    old.setDescription(description);
    old.setPrice(price);
    old.setCategory(category);
    old.setNum(num);
    old.setName(name);


    System.out.println("After updating");
    System.out.println(old);

// convert the product object back to a document
    Document updatedDoc = new Document("_id", old.get_id())
            .append("name", old.getName())
            .append("price", old.getPrice())
            .append("review", old.getReview())
            .append("description", old.getDescription())
            .append("num", old.getNum())
            .append("category", old.getCategory());

// update the product record in MongoDB
    db.getCollection().replaceOne(query, updatedDoc);

%>


