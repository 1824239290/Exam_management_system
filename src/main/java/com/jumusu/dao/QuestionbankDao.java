package com.jumusu.dao;

import com.jumusu.domain.Questionbank;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface QuestionbankDao {
    @Select("select * from qbank")
    List<Questionbank> getAll();
    @Insert("insert into qbank (`name`,`desc`) VALUES (#{name},#{desc})")
    boolean saveQuestionbank(Questionbank questionbank);
    @Delete("DELETE FROM qbank WHERE qid = #{qid};")
    boolean deleteQuestionbankById(Integer id);
}
