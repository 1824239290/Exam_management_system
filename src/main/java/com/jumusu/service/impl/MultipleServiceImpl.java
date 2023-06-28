package com.jumusu.service.impl;

import com.jumusu.dao.MultipleDao;
import com.jumusu.domain.Multiple;
import com.jumusu.service.MultipleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class MultipleServiceImpl implements MultipleService {
    @Autowired
    private MultipleDao multipleDao;
    public List<Multiple> getMultipleAll() {
        return multipleDao.getMultipleAll();
    }

    public Multiple getMultipleById(Integer mid) {
        return multipleDao.getMultipleById(mid);
    }

    public int insertMultiple(Multiple multiple) {
        return multipleDao.insertMultiple(multiple);
    }

    public int updateMultipleById(Multiple multiple) {
        return multipleDao.updateMultipleById(multiple);
    }

    public int deleteMultipleById(Integer mid) {
        return multipleDao.deleteMultipleById(mid);
    }

    public List<Multiple> getTestPaperMultiple(Integer pid) {
        return multipleDao.getTestPaperMultiple(pid);
    }
}
