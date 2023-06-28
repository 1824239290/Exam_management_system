package com.jumusu.dao;

import com.jumusu.domain.Judgment;
import com.jumusu.domain.Schose;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface JudgmentDao {
    @Select("SELECT judgment.*,qbank.`name` as qname from judgment,qbank WHERE judgment.qid=qbank.qid order by judgment.jid desc")
    List<Judgment> getJudgmentAll();
    @Select("SELECT a.*,b.name as qname FROM judgment a,qbank b where a.qid=b.qid AND a.jid=#{jid}")
    Judgment getJudgmentById(Integer jid);
    @Insert("insert into judgment(jname,qid,optionA,optionB,answer,analysis) value(#{jname},#{qid},#{optionA},#{optionB},#{answer},#{analysis})")
    int insertJudgment(Judgment judgment);
    @Update("UPDATE judgment SET jname=#{jname},qid=#{qid},optionA=#{optionA},optionB=#{optionB},answer=#{answer},analysis=#{analysis} where jid=#{jid}")
    int updateJudgmentById(Judgment judgment);
    @Delete("DELETE from judgment where jid=#{jid}")
    int deleteJudgmentById(Integer jid);
    @Select("SELECT a.*,b.type FROM judgment a,testq b WHERE b.qid=a.jid AND b.type='judgment' AND b.tpid=#{pid}")
    List<Judgment> getTestPaperJudgment(Integer pid);
}
