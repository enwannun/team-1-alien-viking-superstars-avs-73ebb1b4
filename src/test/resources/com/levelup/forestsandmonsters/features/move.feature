Feature: Move in a direction 
    
    I want to move my character. If they attempt to 
    move past a boundary, the move results in no change in position but does increment move count.

    Scenario Outline: Move in a direction
        Given the character starts at position with XCoordinates <startingPositionX> 
        And starts at YCoordinates <startingPositionY>
        And the player chooses to move in <direction>
        And the current move count is <startingMoveCount>
        When the character moves
        Then the character is now at position with XCoordinates <endingPositionX>
        And YCoordinates <endingPositionY>
        And the new move count is <endingMoveCount>
        Examples:
            | startingPositionX | startingPositionY | direction | startingMoveCount | endingPositionX | endingPositionY | endingMoveCount |
            | 0 | 0 | NORTH | 60 | 0 | 1 | 61 |
            | 5 | 7 | WEST  | 50 | 4 | 7 | 51 |
            | 0 | 0 | NORTH | 0  | 1 | 0 |  1 |
            | 3 | 2 | EAST  | 26 | 4 | 2 | 27 |
            | 9 | 9 | NORTH |104 | 9 | 9 |104 |
            | 5 | 5 | SOUTH | 75 | 5 | 4 | 76 |
            | 3 | 6 | EAST  |205 | 4 | 6 |206 |


            
           
            
            
            

