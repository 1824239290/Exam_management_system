package com.jumusu.dao;

import com.jumusu.domain.Kctz;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface KctzDao {
    @Select("select * from notify ORDER BY nid desc")
    List<Kctz> getAllKctz();

    @Insert("insert into notify (title, contents,created_time) values (#{title}, #{contents},now())")
    Integer saveKctz(Kctz kctz);

    @Update("update notify set title = #{title}, contents = #{contents} ,created_time=now()  where nid = #{nid} ;")
    Integer updateKctz(Kctz kctz);

    @Delete("delete from notify where nid = #{nid};")
    Integer deleteKctz(@Param("nid")Integer nid);

    @Select("select * from notify where nid=#{nid}")
    Kctz selectById(@Param("nid") Integer nid);
}
