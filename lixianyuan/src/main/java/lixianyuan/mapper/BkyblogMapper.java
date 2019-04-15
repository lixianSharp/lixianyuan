package lixianyuan.mapper;

import java.util.List;
import lixianyuan.bean.Bkyblog;
import lixianyuan.bean.BkyblogExample;
import org.apache.ibatis.annotations.Param;

public interface BkyblogMapper {
    int countByExample(BkyblogExample example);

    int deleteByExample(BkyblogExample example);

    int deleteByPrimaryKey(String bkyblogid);

    int insert(Bkyblog record);

    int insertSelective(Bkyblog record);

    List<Bkyblog> selectByExample(BkyblogExample example);

    Bkyblog selectByPrimaryKey(String bkyblogid);

    int updateByExampleSelective(@Param("record") Bkyblog record, @Param("example") BkyblogExample example);

    int updateByExample(@Param("record") Bkyblog record, @Param("example") BkyblogExample example);

    int updateByPrimaryKeySelective(Bkyblog record);

    int updateByPrimaryKey(Bkyblog record);
}