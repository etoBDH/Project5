package com.example;


import java.util.Date;

public class BoardVO {

    private int seq;
    private String title;
    private String writer;
    private String content;

    private Date regdate;

    private String place;

    private String category;

    private String email;




    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }



    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.content = place;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.content = email;
    }


}