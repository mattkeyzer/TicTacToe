//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Matt Keyzer on 8/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    var turn = 1
    var color = 1
    var scoreBlue = 0
    var scoreRed = 0
    var board = [UIButton]()
    
    @IBOutlet weak var turnLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var blueCrown: UIImageView!
    @IBOutlet weak var redCrown: UIImageView!
    
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        initBoard()
    }
    
    @IBAction func buttonpressed(_ sender: UIButton) {
        updateButtons(sender)
        if checkwinner(){

            button1.backgroundColor = nil
            button1.tag = 0
            button2.backgroundColor = nil
            button2.tag = 0
            button3.backgroundColor = nil
            button3.tag = 0
            button4.backgroundColor = nil
            button4.tag = 0
            button5.backgroundColor = nil
            button5.tag = 0
            button6.backgroundColor = nil
            button6.tag = 0
            button7.backgroundColor = nil
            button7.tag = 0
            button8.backgroundColor = nil
            button8.tag = 0
            button9.backgroundColor = nil
            button9.tag = 0
        }
        
        if fullBoard(){
            redCrown.tintColor = .white
            blueCrown.tintColor = .white    
            button1.backgroundColor = nil
            button1.tag = 0
            button2.backgroundColor = nil
            button2.tag = 0
            button3.backgroundColor = nil
            button3.tag = 0
            button4.backgroundColor = nil
            button4.tag = 0
            button5.backgroundColor = nil
            button5.tag = 0
            button6.backgroundColor = nil
            button6.tag = 0
            button7.backgroundColor = nil
            button7.tag = 0
            button8.backgroundColor = nil
            button8.tag = 0
            button9.backgroundColor = nil
            button9.tag = 0
        }

        
    }
    
    
    func initBoard()
    {
        board.append(button1)
        board.append(button2)
        board.append(button3)
        board.append(button4)
        board.append(button5)
        board.append(button6)
        board.append(button7)
        board.append(button8)
        board.append(button9)
    }
    
    
    func updateButtons(_ sender: UIButton){
        if sender.backgroundColor == nil{
            if color == 2{
                sender.backgroundColor = .systemRed
                sender.tag = 2
                color -= 1
            }
            else{
                sender.backgroundColor = .systemBlue
                sender.tag = 1
                color += 1
            }
            if turn == 1{
                turnLabel.textColor = .systemRed
                turnLabel.text = "Turn: Player 2"
                turn -= 1
            }
            else{
                turnLabel.textColor = .systemBlue
                turnLabel.text = "Turn: Player 1"
                turn += 1
            }
        }
    }


    
    
    
    func checkwinner() -> Bool{
        //win conditions for blue
        //horizontals
        if button1.tag == 1 && button2.tag == 1 && button3.tag == 1{
            scoreBlue += 1
            blueLabel.text = "\(scoreBlue)"
            redCrown.tintColor = .white
            blueCrown.tintColor = .systemBlue
            return true
        }
        if button4.tag == 1 && button5.tag == 1 && button6.tag == 1{
            scoreBlue += 1
            blueLabel.text = "\(scoreBlue)"
            redCrown.tintColor = .white
            blueCrown.tintColor = .systemBlue
            return true
        }
        if button7.tag == 1 && button8.tag == 1 && button8.tag == 1{
            scoreBlue += 1
            blueLabel.text = "\(scoreBlue)"
            redCrown.tintColor = .white
            blueCrown.tintColor = .systemBlue
            return true
        }
        //verticals
        if button1.tag == 1 && button4.tag == 1 && button7.tag == 1{
            scoreBlue += 1
            blueLabel.text = "\(scoreBlue)"
            redCrown.tintColor = .white
            blueCrown.tintColor = .systemBlue
            return true
        }
        if button2.tag == 1 && button4.tag == 1 && button8.tag == 1{
            scoreBlue += 1
            blueLabel.text = "\(scoreBlue)"
            redCrown.tintColor = .white
            blueCrown.tintColor = .systemBlue
            return true
        }
        if button3.tag == 1 && button6.tag == 1 && button9.tag == 1{
            scoreBlue += 1
            blueLabel.text = "\(scoreBlue)"
            redCrown.tintColor = .white
            blueCrown.tintColor = .systemBlue
            return true
        }
        //diagonals
        if button1.tag == 1 && button5.tag == 1 && button9.tag == 1{
            scoreBlue += 1
            blueLabel.text = "\(scoreBlue)"
            redCrown.tintColor = .white
            blueCrown.tintColor = .systemBlue
            return true
        }
        if button3.tag == 1 && button5.tag == 1 && button7.tag == 1{
            scoreBlue += 1
            blueLabel.text = "\(scoreBlue)"
            redCrown.tintColor = .white
            blueCrown.tintColor = .systemBlue
            return true
        }
        
        
        //win conditions for red
        //horizontals
        if button1.tag == 2 && button2.tag == 2 && button3.tag == 2{
            scoreRed += 1
            redLabel.text = "\(scoreRed)"
            blueCrown.tintColor = .white
            redCrown.tintColor = .systemRed
            return true
        }
        if button4.tag == 2 && button5.tag == 2 && button6.tag == 2{
            scoreRed += 1
            redLabel.text = "\(scoreRed)"
            blueCrown.tintColor = .white
            redCrown.tintColor = .systemRed
            return true
        }
        if button7.tag == 2 && button8.tag == 2 && button9.tag == 2{
            scoreRed += 1
            redLabel.text = "\(scoreRed)"
            blueCrown.tintColor = .white
            redCrown.tintColor = .systemRed
            return true
        }
        //verticals
        if button1.tag == 2 && button4.tag == 2 && button7.tag == 2{
            scoreRed += 1
            redLabel.text = "\(scoreRed)"
            blueCrown.tintColor = .white
            redCrown.tintColor = .systemRed
            return true
        }
        if button2.tag == 2 && button5.tag == 2 && button8.tag == 2{
            scoreRed += 1
            redLabel.text = "\(scoreRed)"
            blueCrown.tintColor = .white
            redCrown.tintColor = .systemRed
            return true
        }
        if button3.tag == 2 && button6.tag == 2 && button9.tag == 2{
            scoreRed += 1
            redLabel.text = "\(scoreRed)"
            blueCrown.tintColor = .white
            redCrown.tintColor = .systemRed
            return true
        }
        //diagonals
        if button1.tag == 2 && button5.tag == 2 && button9.tag == 2{
            scoreRed += 1
            redLabel.text = "\(scoreRed)"
            blueCrown.tintColor = .white
            redCrown.tintColor = .systemRed
            return true
        }
        if button3.tag == 2 && button5.tag == 2 && button7.tag == 2{
            scoreRed += 1
            redLabel.text = "\(scoreRed)"
            blueCrown.tintColor = .white
            redCrown.tintColor = .systemRed
            return true
        }
        return false
    }
    
    func fullBoard() -> Bool
    {
        for button in board
        {
            if button.backgroundColor == nil
            {
                return false
            }
        }
        return true
    }
}

