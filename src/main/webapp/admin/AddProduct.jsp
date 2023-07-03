<%@ page import="Helpers.MongoDB" %>
<%@ page import="Helpers.Product" %>
<%@ page import="java.util.HashMap" %>
<%

    MongoDB db = new MongoDB();
    String name = request.getParameter("name");
    int id = Integer.parseInt(request.getParameter("id"));
    int price = Integer.parseInt(request.getParameter("price"));
    String description = request.getParameter("description");
    int num = Integer.parseInt(request.getParameter("pieces"));
    String category = request.getParameter("category");
    Product p = new Product(id, name, price, new HashMap<>(), description, num, category);
    db.insertProduct(p);
    response.sendRedirect("ProductsData.jsp");

%>

