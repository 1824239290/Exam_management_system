package com.jumusu.domain;

public class Reply {
    private String id;
    private String uid;
    private String pid;
    private String tid;
    private String type;
    private String selected;
    private String score;
    private String date;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSelected() {
        return selected;
    }

    public void setSelected(String selected) {
        this.selected = selected;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Reply{" +
                "id='" + id + '\'' +
                ", uid='" + uid + '\'' +
                ", pid='" + pid + '\'' +
                ", tid='" + tid + '\'' +
                ", type='" + type + '\'' +
                ", selected='" + selected + '\'' +
                ", score='" + score + '\'' +
                ", date='" + date + '\'' +
                '}';
    }
}


