package com.jumusu.domain;

public class Kctz {
    private int nid;
    private String title;
    private String contents;
    private String created_time;

    public int getNid() {
        return nid;
    }

    public void setNid(int nid) {
        this.nid = nid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }


    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getCreated_time() {
        return created_time;
    }

    public void setCreated_time(String created_time) {
        this.created_time = created_time;
    }

    @Override
    public String toString() {
        return "Kctz{" +
                "nid=" + nid +
                ", title='" + title + '\'' +
                ", contents='" + contents + '\'' +
                ", created_time='" + created_time + '\'' +
                '}';
    }
}
