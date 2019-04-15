package lixianyuan.mapper;

import java.util.List;
import lixianyuan.bean.Leavemsg;
import lixianyuan.bean.LeavemsgExample;
import org.apache.ibatis.annotations.Param;

public interface LeavemsgMapper {
    int countByExample(LeavemsgExample example);

    int deleteByExample(LeavemsgExample example);

    int deleteByPrimaryKey(String leavemsgid);

    int insert(Leavemsg record);

    int insertSelective(Leavemsg record);

    List<Leavemsg> selectByExample(LeavemsgExample example);

    Leavemsg selectByPrimaryKey(String leavemsgid);

    int updateByExampleSelective(@Param("record") Leavemsg record, @Param("example") LeavemsgExample example);

    int updateByExample(@Param("record") Leavemsg record, @Param("example") LeavemsgExample example);

    int updateByPrimaryKeySelective(Leavemsg record);

    int updateByPrimaryKey(Leavemsg record);
}