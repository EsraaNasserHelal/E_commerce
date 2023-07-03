package Start;

import Helpers.Cart;



import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(name = "AddToCartServlet", urlPatterns ={ "/Add_ToCartServlet"})
public class AddToCartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;cahrset=UTF-8");
        try (PrintWriter out = resp.getWriter()) {
            ArrayList<Cart> cartList = new ArrayList<>();
            int _id = Integer.parseInt((req.getParameter("_id")));
            Cart cm = new Cart();
            cm.set_id(_id);
            cm.setQuantity(1);
            HttpSession session = req.getSession();
            ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
            if (cart_list == null) {
                cartList.add(cm);
//                                out.println("created");

                session.setAttribute("cart-list", cartList);
                resp.sendRedirect("Home.jsp");
            } else {
                cartList = cart_list;

                boolean exist = false;
                for (Cart c : cart_list) {
                    if (c.get_id() == _id) {
                        exist = true;
//                                        out.println("created2");
resp.sendRedirect("Home.jsp");
//                        out.println("<h3 style='color:crimson; text-align: center'>Item Already in Cart. <a href='Cart.jsp'>GO to Cart Page</a></h3>");
                    }
                }

                if (!exist) {
                    cartList.add(cm);
                    resp.sendRedirect("Home.jsp");
//                out.println("created3");

                }

            }
        }
    }
}
