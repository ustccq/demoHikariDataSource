package com.meowlomo.demon;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

public class db {
	public static void main(String[] args) {

		String configFile = "resources/db6.properties";
		String sqlFileString = "resources/execution.txt";
		HikariConfig cfg = new HikariConfig(configFile);
		HikariDataSource ds = new HikariDataSource(cfg);

		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;

		try {

			BufferedReader br = new BufferedReader(new FileReader(new File(sqlFileString)));
			String sql = br.readLine();
			br.close();
			con = ds.getConnection();
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
//			rs = pst.executeQuery("delete from classmates where id=10");			
			ResultSetMetaData rsmd = rs.getMetaData();
			int columnsNumber = rsmd.getColumnCount();

			System.out.println(sql);
			System.out.println();
			while (rs.next()) {
				for (int i = 1; i <= columnsNumber; i++) {
					if (i > 1)
						System.out.print(",\t");
					String columnValue = rs.getString(i);
					System.out.print(rsmd.getColumnName(i) + ":" + columnValue);
				}
				System.out.println(" ");
			}

		} catch (SQLException | IOException ex) {

			System.err.println(ex.getMessage());
		} finally {

			try {

				if (rs != null) {
					rs.close();
				}

				if (pst != null) {
					pst.close();
				}

				if (con != null) {
					con.close();
				}

				ds.close();

			} catch (SQLException ex) {
				System.err.println(ex.getMessage());
			}
		}
	}
}
