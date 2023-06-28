package com.jumusu.service.impl;

import com.jumusu.dao.SchoseDao;
import com.jumusu.domain.Schose;
import com.jumusu.service.SchoseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SchoseServiceImpl implements SchoseService {
    @Autowired
    private SchoseDao schoseDao;

    public List<Schose> getSchoseAll() {
        return schoseDao.getSchoseAll();
    }

    public Schose getSchoseById(Integer tid) {
        return schoseDao.getSchoseById(tid);
    }

    public int insertSchose(Schose schose) {
        return schoseDao.insertSchose(schose);
    }

    public int updateSchoseById(Schose schose) {
        return schoseDao.updateSchoseById(schose);
    }

    public int deleteSchoseById(Integer tid) {
        return schoseDao.deleteSchoseById(tid);
    }

    public List<Schose> getTestPaperSchose(Integer pid) {
        return schoseDao.getTestPaperSchose(pid);
    }
}
