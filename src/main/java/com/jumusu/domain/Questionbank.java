package com.jumusu.domain;

public class Questionbank {
    private Integer qid;
    private String name;
    private String desc;

    public Integer getId() {
        return qid;
    }

    public void setId(Integer id) {
        this.qid = qid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    @Override
    public String toString() {
        return "Questionbank{" +
                "qid=" + qid +
                ", name='" + name + '\'' +
                ", desc='" + desc + '\'' +
                '}';
    }
}
