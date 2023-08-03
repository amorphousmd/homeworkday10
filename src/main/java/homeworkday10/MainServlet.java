package homeworkday10;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "mainServlet", urlPatterns = {"/game"})
public class MainServlet extends HttpServlet{
	public static LeaderBoard leaderBoard = new LeaderBoard();
	private static final long serialVersionUID = 1L;
	
	int randomNumber = 0;
	int numGuesses = 0;
	int numTry = 0;

    @Override
    public void init() throws ServletException {
        // Initialize the Random instance with a random seed
    	Random random = new Random();
        randomNumber = random.nextInt(1000) + 1;
    }
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<int[]> list = leaderBoard.getEntries();
		for (int i = 0; i < list.size(); i++) {
			System.out.println("#" + list.get(i)[0] + "Tries: " + list.get(i)[1]);
		}
		String choiceCase = req.getParameter("case");
		if (choiceCase != null && !choiceCase.isEmpty()) 
		{
			if (choiceCase.equals("bigger")) {
				req.getRequestDispatcher("gamebigger.jsp").forward(req, resp);
			}
			else if (choiceCase.equals("smaller")) {
				req.getRequestDispatcher("gamesmaller.jsp").forward(req, resp);
			}
			else if (choiceCase.equals("correct")) {
				req.getRequestDispatcher("gamecorrect.jsp").forward(req, resp);
			}
		} 
		else 
		{
			req.getRequestDispatcher("game.jsp").forward(req, resp);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String guessNumber = req.getParameter("guessedNumber");
		numGuesses++;
		int guessNumberInt = 0;

		try{
            guessNumberInt = Integer.parseInt(guessNumber);
        }
        catch (Exception e){
            e.printStackTrace();
            req.getRequestDispatcher("game.jsp").forward(req, resp);
            return;
        }
		if (guessNumberInt > randomNumber) {
		    resp.sendRedirect("http://localhost:8080/homeworkday10/game?case=bigger");
		}
		else if (guessNumberInt < randomNumber) {
			resp.sendRedirect("http://localhost:8080/homeworkday10/game?case=smaller");
		}
		else {
	        numTry += 1;	
	        leaderBoard.addEntry(numTry, numGuesses);
	        numGuesses = 0;
	        Random random = new Random();
	        randomNumber = random.nextInt(1000) + 1;
	        LeaderboardServlet.processLeaderBoard(leaderBoard);
	        resp.sendRedirect("http://localhost:8080/homeworkday10/game?case=correct");
		}

	}
}
