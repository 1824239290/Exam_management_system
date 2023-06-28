package com.jumusu.domain;

/**
 * @Author: 橘木苏_Oc
 * @Description:
 * @Date 2023/6/10 16:12
 */
public class TestPaper {
    private String pid;
    private String pname;
    private String date;
    private String qid;
    private Double score;

    public String getQid() {
        return qid;
    }

    public void setQid(String qid) {
        this.qid = qid;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "TestPaper{" +
                "pid='" + pid + '\'' +
                ", pname='" + pname + '\'' +
                ", date='" + date + '\'' +
                ", qid='" + qid + '\'' +
                ", score=" + score +
                '}';
    }
}
