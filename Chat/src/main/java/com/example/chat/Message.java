package com.example.chat;

public class Message {
    private String author;
    private String message;

    public Message(String author, String message) {
        this.author = author;
        this.message = message;
    }

    @Override
    public String toString(){
        return author + ":" + message;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
