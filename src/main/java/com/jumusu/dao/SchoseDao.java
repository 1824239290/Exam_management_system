package com.jumusu.dao;

import com.jumusu.domain.Schose;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SchoseDao {
    @Select("SELECT schose.*,qbank.`name` as qname from schose,qbank WHERE schose.qid=qbank.qid order by schose.tid desc")
    List<Schose> getSchoseAll();
    @Select("SELECT a.*,b.name as qname FROM schose a,qbank b where a.qid=b.qid AND a.tid=#{tid}")
    Schose getSchoseById(Integer tid);
    @Insert("insert into schose(tname,qid,optionA,optionB,optionC,optionD,answer,analysis) value(#{tname},#{qid},#{optionA},#{optionB},#{optionC},#{optionD},#{answer},#{analysis})")
    int insertSchose(Schose schose);
    @Update("UPDATE schose SET tname=#{tname},qid=#{qid},optionA=#{optionA},optionB=#{optionB},optionC=#{optionC},optionD=#{optionD},answer=#{answer},analysis=#{analysis} where tid=#{tid}")
    int updateSchoseById(Schose schose);
    @Delete("DELETE from schose where tid=#{tid}")
    int deleteSchoseById(Integer tid);
    @Select("SELECT a.*,b.type FROM schose a,testq b WHERE b.qid=a.tid AND b.type='schose' AND b.tpid=#{pid}")
    List<Schose> getTestPaperSchose(@Param("pid") Integer pid);
}
