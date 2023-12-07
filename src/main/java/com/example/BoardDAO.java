package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    JdbcTemplate jdbcTemplate;

    public int insertBoard(BoardVO vo) {

        String sql = "INSERT INTO BOARD (title, writer, content, place, category, email) VALUES (?, ?, ?, ?, ?, ?)";

        return jdbcTemplate.update(sql, vo.getTitle(), vo.getWriter(), vo.getContent(), vo.getPlace(), vo.getCategory(), vo.getEmail());
    }

    public int deleteBoard(int seq) {
        String sql = "delete from BOARD where seq = " + seq;
        return jdbcTemplate.update(sql);
    }

    public int updateBoard(BoardVO vo) {
        String sql = "update BOARD set title=?, writer=?, content=? where seq=?"; // Assuming there's an 'id' column for identifying the record.

        return jdbcTemplate.update(sql, vo.getTitle(), vo.getWriter(), vo.getContent(), vo.getSeq());
    }



    public BoardVO getBoard (int seq) {
        String sql = "select * from BOARD where seq=" + seq;
        return jdbcTemplate.queryForObject(sql, new BoardRowMapper());
    }
    public List<BoardVO> getBoardList() {
        String sql = "select * from BOARD order by regdate desc";
        return jdbcTemplate.query(sql, new BoardRowMapper());
    }
}