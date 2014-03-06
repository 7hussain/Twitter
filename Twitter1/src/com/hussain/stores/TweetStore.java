package com.hussain.stores;

import java.text.*;
import java.util.Date;
public class TweetStore {

	Integer Tweetid;
	String Tweet;
	String User;
    String Username;
    String Time;
    
    public Integer getTweetid(){
    	return Tweetid;
    }
    public String getTweet(){
    return Tweet;
    }
    
    public String getUser(){
    return User;
    }
    
    public String getUsername(){
        return Username;
    }
    
    public String getTime(){
    	return Time;
    }
    
    public void setTweetid(Integer Tweetid){
    	this.Tweetid = Tweetid;
    }
    public void setTweet(String Tweet){
    this.Tweet=Tweet;
    }
    
    public void setUser(String User){
    this.User=User;
    }
    
    public void setUsername(String Username){
        this.Username=Username;
   }
    
    public void setTime(String Time){
        this.Time=Time;
   }
    
}