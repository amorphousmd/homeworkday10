package homeworkday10;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "leaderboardServlet", urlPatterns = {"/leaderboard"})
public class LeaderboardServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private static List<int[]> sortedLeadboard;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("list", sortedLeadboard);
		req.getRequestDispatcher("leaderboard.jsp").forward(req, resp);
	}
	
	public static void processLeaderBoard(LeaderBoard leaderBoard) {
		sortedLeadboard = leaderBoard.getEntries();

        // Sort the game entries by the ascending number of guesses
        Collections.sort(sortedLeadboard, (a, b) -> Integer.compare(a[1], b[1]));

        // Create a copy of the sorted entries in sortedLeaderboard
        sortedLeadboard = new ArrayList<>(sortedLeadboard);
    }
}
