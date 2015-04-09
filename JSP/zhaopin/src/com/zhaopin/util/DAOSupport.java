package com.zhaopin.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ParameterMetaData;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class DAOSupport {

	private Connection getConn() {
		return DBUtil.getConn();
	}

	private void close(Connection conn, Statement stmt) {
		DBUtil.close(conn, stmt);
	}

	private void close(Connection conn, Statement stmt, ResultSet rs) {
		DBUtil.close(conn, stmt, rs);
	}

	/**
	 * 用来执行insert update delete语句
	 * @param sql 可以带有占位符“？”的sql语句
	 * @param params	与占位符“？”对应的参数值（个数）
	 * @return	受影响的行数
	 * @throws SQLException
	 */
	protected int exeucteDML(String sql, Object[] params) throws SQLException {
		int result = 0;
		Connection conn = this.getConn();
		PreparedStatement pstmt = null;
		try {
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			if (params != null) {
				// 需要驱动支持，vaiyong这个元数据ParameterMetaData用来获取sql语句中的“？”的个数
				ParameterMetaData pmd = pstmt.getParameterMetaData();
				//如果sql语句中的“？”的个数与传进来的参数数组object[] params的元素个数不一致，那么报异常
				if (pmd.getParameterCount() != params.length) {
					throw new SQLException("你的参数个数与sql语句中的“？”不匹配");
				}
				//将传进来的参数值设置到IN参数“？”中
				for (int i = 0; i < params.length; i++) {
					pstmt.setObject((i + 1), params[i]);
				}
			}
			result = pstmt.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			conn.rollback();
			throw e;
		} finally {
			this.close(conn, pstmt);
		}
		return result;
	}

	/**
	 * 用来执行sql语句
	 * @param sql	可以带有占位符“？”的sql语句
	 * @param params  与占位符“？”对应的参数值（个数）
	 * @return 一行数据形成一个Object[]数组，多行数据形成一个List队形，其中每一个元素为一个Object[]数组
	 * @throws SQLException
	 */
	protected List<Object[]> executeDQL(String sql, Object[] params) throws SQLException {
		List<Object[]> results = new ArrayList<Object[]>();
		Connection conn = this.getConn();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			if (params != null) {
				// 需要驱动支持，采用这个元数据ParameterMeta用来获取sql语句中的“？”的个数
				ParameterMetaData pmd = pstmt.getParameterMetaData();

				if (pmd.getParameterCount() != params.length) {
					throw new SQLException("你的参数个数与sql语句中的“？”不匹配");
				}
				for (int i = 0; i < params.length; i++) {
					pstmt.setObject((i + 1), params[i]);
				}
			}
			rs = pstmt.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();
			while (rs.next()) {
				Object[] data = new Object[rsmd.getColumnCount()];
				for (int i = 0; i < rsmd.getColumnCount(); i++) {
					data[i] = rs.getObject(i + 1);
				}

				results.add(data);
			}
		} catch (SQLException e) {
			throw e;
		} finally {
			this.close(conn, pstmt, rs);
		}
		return results;
	}


	protected int[] executeBatch(String sql, Object[][] params) throws SQLException {
		int[] results = null;
		Connection conn = this.getConn();
		PreparedStatement pstmt = null;
		try {
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			if (params != null) {
				ParameterMetaData pmd = pstmt.getParameterMetaData();
				if (pmd.getParameterCount() != params[0].length) {
					throw new SQLException("你的参数个数与sql语句中的“？”不匹配");
				}
				for (int row = 0; row < params.length; row++) {
					for (int column = 0; column < params[row].length; column++) {
						pstmt.setObject((column + 1), params[row][column]);
					}
					pstmt.addBatch();
				}
			}
			results = pstmt.executeBatch();
			conn.commit();
		} catch (SQLException e) {
			conn.rollback();
			throw e;
		}finally{
			this.close(conn, pstmt);
		}

		return results;
	}

}
