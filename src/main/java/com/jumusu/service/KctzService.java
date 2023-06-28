package com.jumusu.service;

import com.jumusu.domain.Kctz;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface KctzService {

    List<Kctz> getAllKctz();

    boolean saveKctz(Kctz kctz);

    boolean updateKctz(Kctz kctz);

    boolean deleteKctz(Integer kid);

    Kctz selectById(Integer nid);


}
