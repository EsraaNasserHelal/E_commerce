/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
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

/**
 *
 * @author Esraa
 */
@WebServlet(name = "QuantityIncDecServlet", urlPatterns = {"/quantity-inc-dec"})
public class QuantityIncDecServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
       try (PrintWriter out = resp.getWriter()) {
			String action = req.getParameter("action");
			int _id = Integer.parseInt(req.getParameter("_id"));
			ArrayList<Cart> cart_list = (ArrayList<Cart>) req.getSession().getAttribute("cart-list");

			if (action != null && _id >= 1) {
				if (action.equals("inc")) {
					for (Cart c : cart_list) {
						if (c.get_id() == _id) {
							int quantity = c.getQuantity();
							quantity++;
							c.setQuantity(quantity);
							resp.sendRedirect("Cart.jsp");
						}
					}
				}
                                if (action.equals("dec")) {
					for (Cart c : cart_list) {
						if (c.get_id() == _id && c.getQuantity() > 1) {
							int quantity = c.getQuantity();
							quantity--;
							c.setQuantity(quantity);
							break;
						}
					}
					resp.sendRedirect("Cart.jsp");
				}
			} else {
				resp.sendRedirect("Cart.jsp");
			}
    }
}
    }
