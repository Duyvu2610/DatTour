package servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Booking;
import model.Customer;
import model.Tour;
import services.TourService;

/**
 * Servlet implementation class ConfirmServlet
 */
@WebServlet("/confirm")
public class ConfirmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TourService service = new TourService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String location = request.getParameter("location");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String date = request.getParameter("date");
		String adult = request.getParameter("adult");
		String child = request.getParameter("child");
		System.out.println(location);
		
		Customer customer = new Customer(name, location, email, phone);
		Tour tour = service.getTour(Long.parseLong(id));
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		try {
			Date departureDate = dateFormat.parse(date);
			Booking booking = new Booking(customer, departureDate, Integer.parseInt(adult), Integer.parseInt(child), tour);
			request.setAttribute("booking", booking);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getRequestDispatcher("confirm.jsp").forward(request, response);
		
	}

}
