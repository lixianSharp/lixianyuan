package lixianyuan.mapper;

import java.util.List;
import lixianyuan.bean.Ydyblog;
import lixianyuan.bean.YdyblogExample;
import org.apache.ibatis.annotations.Param;

public interface YdyblogMapper {
    int countByExample(YdyblogExample example);

    int deleteByExample(YdyblogExample example);

    int deleteByPrimaryKey(String ydyblogid);

    int insert(Ydyblog record);

    int insertSelective(Ydyblog record);

    List<Ydyblog> selectByExample(YdyblogExample example);

    Ydyblog selectByPrimaryKey(String ydyblogid);

    int updateByExampleSelective(@Param("record") Ydyblog record, @Param("example") YdyblogExample example);

    int updateByExample(@Param("record") Ydyblog record, @Param("example") YdyblogExample example);

    int updateByPrimaryKeySelective(Ydyblog record);

    int updateByPrimaryKey(Ydyblog record);
}