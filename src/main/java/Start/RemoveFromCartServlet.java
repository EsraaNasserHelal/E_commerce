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
@WebServlet(name = "RemoveFromCartServlet", urlPatterns = {"/remove_from_cart"})
public class RemoveFromCartServlet extends HttpServlet {
        protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = resp.getWriter()) {
			String _id = req.getParameter("_id");
			if (_id != null) {
				ArrayList<Cart> cart_list = (ArrayList<Cart>) req.getSession().getAttribute("cart-list");
				if (cart_list != null) {
					for (Cart c : cart_list) {
						if (c.get_id() == Integer.parseInt(_id)) {
							cart_list.remove(cart_list.indexOf(c));
							break;
						}
					}
				}
				resp.sendRedirect("Cart.jsp");

			} else {
				resp.sendRedirect("Cart.jsp");
			}

		}
	}

    }


