package com.lsj.exam.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;





import com.lsj.exam.main.examscore;

import cn.itcast.jdbc.TxQueryRunner;

public class ExamScoreDao {
	private QueryRunner qr = new TxQueryRunner();

	public void AddExamScore(examscore examsc) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into exam_score values(?,?,?,?,?,?,?)";
		Object[] params = {examsc.getEs_id(),examsc.getUser_id(),
				examsc.getExam_time(),examsc.getExam_score(),
				examsc.getExam_grade(),examsc.getExam_zhishidian(),examsc.getExam_xueke()
				};
		
			qr.update(sql, params);
	}

	public List<examscore> Findexamscore(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from exam_score where user_id=?";
		return qr.query(sql, new BeanListHandler<examscore>(examscore.class),user_id);
	}
	
}
