package com.jumusu.dao;



import com.jumusu.domain.TestPaper;
import com.jumusu.domain.TestPaperDetail;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @Author: 橘木苏_Oc
 * @Description:
 * @Date 2023/6/10 16:14
 */
public interface TestPaperDao {
    @Select("select * from testpaper order by pid desc;")
    List<TestPaper> getAll();
    @Select("select pid from testpaper where pname = #{pname} ;")
    String getTpid(@Param("pname") String pname);
    @Insert("insert into testpaper (`pname`, `date`) values (#{pname},now());")
    boolean addTestPaper(@Param("pname") String pname);
    @Delete("delete from testpaper where pid=#{pid}")
    int deleteTestPaper(@Param("pid") String pid);
    @Select("SELECT s.tname as name,s.optionA,s.optionB,s.optionC,s.optionD,s.answer,s.analysis,t.type FROM testq t, schose s WHERE t.type='schose' AND t.qid=s.tid AND tpid=#{tpid}")
    List<TestPaperDetail> getSchoseDetail(@Param("tpid") Integer tpid);
    @Select("SELECT s.mname as name,s.optionA,s.optionB,s.optionC,s.optionD,s.answer,s.analysis,t.type FROM testq t, multiple s WHERE t.type='multiple' AND t.qid=s.mid AND tpid=#{tpid}")
    List<TestPaperDetail> getMultipleDetail(@Param("tpid") Integer tpid);
    @Select("SELECT s.jname as name,s.optionA,s.optionB,s.answer,s.analysis,t.type FROM testq t, judgment s WHERE t.type='judgment' AND t.qid=s.jid AND tpid=#{tpid}")
    List<TestPaperDetail> getJudgmentDetail(@Param("tpid") Integer tpid);
    // 查询该学生未做过的试题
//    "SELECT a.* FROM testpaper a,reply b,account c WHERE  a.pid NOT LIKE b.`pid` AND  b.`uid`=c.`uid` AND  c.uid=#{uid}"
    @Select("SELECT t.* FROM testpaper t LEFT JOIN reply r ON t.pid = r.pid AND r.uid =#{uid} WHERE r.pid IS NULL ORDER BY t.date desc;")
    List<TestPaper> getTestPaperByUser(@Param("uid") Integer uid);

    @Select("SELECT * FROM testpaper where pid=#{pid}")
    TestPaper getNameById(@Param("pid") Integer pid);

    //查询已做过的试卷及对应的总分
//    SELECT DISTINCT a.*,SUM(b.score) as score FROM testpaper a,reply b,account c WHERE  a.pid = b.`pid` AND  b.`uid`=c.`uid` AND  c.uid=2 GROUP BY a.pid,a.pname,a.date;
    @Select("SELECT DISTINCT a.*,SUM(b.score) as score FROM testpaper a,reply b,account c WHERE  a.pid = b.`pid` AND  b.`uid`=c.`uid` AND  c.uid=#{uid}  GROUP BY a.pid,a.pname,a.date ORDER BY a.date DESC;")
    List<TestPaper> getTestPaperByUserWithScore(Integer uid);
}
