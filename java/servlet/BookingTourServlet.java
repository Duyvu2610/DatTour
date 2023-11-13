package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Tour;
import services.TourService;

/**
 * Servlet implementation class TourDetailServlet
 */
@WebServlet("/booking-tour")
public class BookingTourServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	TourService service = new TourService();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingTourServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Tour tour = service.getTour(Long.parseLong(id));
		request.setAttribute("tour", tour);
		request.getRequestDispatcher("bookTour.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
