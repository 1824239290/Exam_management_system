package com.jumusu.domain;

public class Judgment {
    private Integer jid;
    private String jname;
    private Integer qid;//所属题库
    private String optionA;
    private String optionB;
    private String answer;
    private String analysis;
    private String qname;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    private String type;

    public Integer getJid() {
        return jid;
    }

    public void setJid(Integer jid) {
        this.jid = jid;
    }



    public Integer getQid() {
        return qid;
    }

    public void setQid(Integer qid) {
        this.qid = qid;
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

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }


    public String getJname() {
        return jname;
    }

    public void setJname(String jname) {
        this.jname = jname;
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
        return "Judgment{" +
                "jid=" + jid +
                ", jname='" + jname + '\'' +
                ", qid=" + qid +
                ", optionA='" + optionA + '\'' +
                ", optionB='" + optionB + '\'' +
                ", answer='" + answer + '\'' +
                ", analysis='" + analysis + '\'' +
                ", qname='" + qname + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}
