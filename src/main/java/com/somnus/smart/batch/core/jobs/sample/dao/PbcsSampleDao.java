package com.somnus.smart.batch.core.jobs.sample.dao;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.somnus.smart.batch.core.jobs.sample.model.TestC;
import com.somnus.smart.batch.support.mybatis.PbcsMyBatisRepository;

/**
 * @Description PbcsSampleDao
 * @author caobin
 * @date 2013-10-14
 * @version 1.0
 */
@PbcsMyBatisRepository
public interface PbcsSampleDao {
	PageList<TestC> queryPaged(PageBounds pageBounds);
}
