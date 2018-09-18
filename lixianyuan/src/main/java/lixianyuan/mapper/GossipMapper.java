package lixianyuan.mapper;

import java.util.List;
import lixianyuan.bean.Gossip;
import lixianyuan.bean.GossipExample;
import org.apache.ibatis.annotations.Param;

public interface GossipMapper {
    int countByExample(GossipExample example);

    int deleteByExample(GossipExample example);

    int deleteByPrimaryKey(String gossipid);

    int insert(Gossip record);

    int insertSelective(Gossip record);

    List<Gossip> selectByExample(GossipExample example);

    Gossip selectByPrimaryKey(String gossipid);

    int updateByExampleSelective(@Param("record") Gossip record, @Param("example") GossipExample example);

    int updateByExample(@Param("record") Gossip record, @Param("example") GossipExample example);

    int updateByPrimaryKeySelective(Gossip record);

    int updateByPrimaryKey(Gossip record);
}