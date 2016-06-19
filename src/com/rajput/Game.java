package com.rajput;

import java.util.ArrayList;

public class Game {
	int score = 0;
	ArrayList<String> answers = new ArrayList<>();
	ArrayList<String> correctAnswers = new ArrayList<>();
	//ArrayList<String> incorrectAnswers = new ArrayList<>();
 	
	public String bringQuestion(int questionNumber) {
		
		System.out.println(questionNumber);
		return "This is the question";
	}
	public void bringAnswers(){
		correctAnswers.add(null);
	}
	
	/*public void matchAnswers(){
		bringAnswers();
		for(int i=0;i<correctAnswers.size();i++){
			if(answers.contains(correctAnswers.get(i))){
				score++;
			}
		}
		
	}*/
	public void saveAnswers(String answer){
		answers.add(answer);
	}
	
	public int bringResults(){
		//matchAnswers();
		bringAnswers();
		for(int i=0;i<correctAnswers.size();i++){
			if(answers.contains(correctAnswers.get(i))){
				score++;
			}
		}
		return score;
	}

}
