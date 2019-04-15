package lixianyuan.mapper;

import java.util.List;
import lixianyuan.bean.Casualnote;
import lixianyuan.bean.CasualnoteExample;
import org.apache.ibatis.annotations.Param;

public interface CasualnoteMapper {
    int countByExample(CasualnoteExample example);

    int deleteByExample(CasualnoteExample example);

    int deleteByPrimaryKey(String casualnoteid);

    int insert(Casualnote record);

    int insertSelective(Casualnote record);

    List<Casualnote> selectByExample(CasualnoteExample example);

    Casualnote selectByPrimaryKey(String casualnoteid);

    int updateByExampleSelective(@Param("record") Casualnote record, @Param("example") CasualnoteExample example);

    int updateByExample(@Param("record") Casualnote record, @Param("example") CasualnoteExample example);

    int updateByPrimaryKeySelective(Casualnote record);

    int updateByPrimaryKey(Casualnote record);
}