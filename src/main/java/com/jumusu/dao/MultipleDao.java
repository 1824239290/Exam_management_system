package com.jumusu.dao;

import com.jumusu.domain.Judgment;
import com.jumusu.domain.Multiple;
import com.jumusu.domain.Schose;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MultipleDao {
    @Select("SELECT multiple.*,qbank.`name` as qname from multiple,qbank WHERE multiple.qid=qbank.qid order by multiple.mid desc")
    List<Multiple> getMultipleAll();
    @Select("SELECT a.*,b.name as qname FROM multiple a,qbank b where a.qid=b.qid AND a.mid=#{mid}")
    Multiple getMultipleById(Integer mid);
    @Insert("insert into multiple(mname,qid,optionA,optionB,optionC,optionD,answer,analysis) value(#{mname},#{qid},#{optionA},#{optionB},#{optionC},#{optionD},#{answer},#{analysis})")
    int insertMultiple(Multiple multiple);
    @Update("UPDATE multiple SET mname=#{mname},qid=#{qid},optionA=#{optionA},optionB=#{optionB},optionC=#{optionC},optionD=#{optionD},answer=#{answer},analysis=#{analysis} where mid=#{mid}")
    int updateMultipleById(Multiple multiple);
    @Delete("DELETE from multiple where mid=#{mid}")
    int deleteMultipleById(Integer mid);
    @Select("SELECT a.*,b.type FROM multiple a,testq b WHERE b.qid=a.mid AND b.type='multiple' AND b.tpid=#{pid}")
    List<Multiple> getTestPaperMultiple(Integer pid);
}
