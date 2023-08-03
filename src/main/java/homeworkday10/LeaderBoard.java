package homeworkday10;

import java.util.ArrayList;
import java.util.List;

public class LeaderBoard {

    private List<int[]> entries;

    public LeaderBoard() {
        this.entries = new ArrayList<>();
    }

    public void addEntry(int numTry, int numGuesses) {
        int[] entry = {numTry, numGuesses};
        entries.add(entry);
    }

    public List<int[]> getEntries() {
        return entries;
    }
}





