package com.jumusu.service.impl;

import com.jumusu.dao.KctzDao;
import com.jumusu.domain.Kctz;
import com.jumusu.service.KctzService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KctzServiceImpl implements KctzService {
    @Autowired
    private KctzDao kctzDao;

    public List<Kctz> getAllKctz() {
        return kctzDao.getAllKctz();
    }

    public boolean saveKctz(Kctz kstz) {
        return kctzDao.saveKctz(kstz) ==1;
    }

    public boolean updateKctz(Kctz kstz) {
        return kctzDao.updateKctz(kstz) ==1;
    }

    public boolean deleteKctz(Integer kid) {
        return kctzDao.deleteKctz(kid) ==1;
    }

    public Kctz selectById(Integer nid) {
        return kctzDao.selectById(nid);
    }


}
