package com.jumusu.domain;

public class Schose {
    private Integer tid;
    private String tname;
    private String optionA;
    private String optionB;
    private String optionC;
    private String optionD;
    private String answer;
    private Integer qid;
    private String analysis;
    private String qname;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    private String type;

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getOptionA() {
        return optionA;
    }

    public void setOptionA(String optionA) {
        this.optionA = optionA;
    }

    public String getOptionB() {
        return optionB;
    }

    public void setOptionB(String optionB) {
        this.optionB = optionB;
    }

    public String getOptionC() {
        return optionC;
    }

    public void setOptionC(String optionC) {
        this.optionC = optionC;
    }

    public String getOptionD() {
        return optionD;
    }

    public void setOptionD(String optionD) {
        this.optionD = optionD;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public Integer getQid() {
        return qid;
    }

    public void setQid(Integer qid) {
        this.qid = qid;
    }

    public String getAnalysis() {
        return analysis;
    }

    public void setAnalysis(String analysis) {
        this.analysis = analysis;
    }

    public String getQname() {
        return qname;
    }

    public void setQname(String qname) {
        this.qname = qname;
    }

    @Override
    public String toString() {
        return "Schose{" +
                "tid=" + tid +
                ", tname='" + tname + '\'' +
                ", optionA='" + optionA + '\'' +
                ", optionB='" + optionB + '\'' +
                ", optionC='" + optionC + '\'' +
                ", optionD='" + optionD + '\'' +
                ", answer='" + answer + '\'' +
                ", qid=" + qid +
                ", analysis='" + analysis + '\'' +
                ", qname='" + qname + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}
