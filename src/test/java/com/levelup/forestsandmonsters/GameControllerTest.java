package com.levelup.forestsandmonsters;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import org.junit.Test;

import com.levelup.forestsandmonsters.GameController.GameStatus;

import java.util.Scanner;

public class GameControllerTest
 {
    @Test
    public void initializationCreatesResults() {
        GameController testObj = new GameController();
        assertNotNull(testObj.status);
        testObj.status.moveCount = -100;
        assertEquals(0, testObj.status.moveCount); 
        
    }
    


}
