package DAO;

import java.sql.ResultSet;

public interface implDao {
	// �s�W����

	void add(Object o);

	// �d�ߪ���

	ResultSet query();

	// �ק磌��

	void update(String id, Object o);

	// �R������
	void delete(String id);
}
