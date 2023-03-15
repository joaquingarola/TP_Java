package logic;

import java.sql.SQLException;
import java.util.LinkedList;
import dataBase.DataPacientes;
import entities.Paciente;

public class PacientesController {
	
	private DataPacientes dp;
	
	public PacientesController() {
		dp = new DataPacientes();
	}

	public LinkedList<Paciente> getAll() {
		return dp.getAll();
	}

	public Paciente validateLogin(Paciente c) throws SQLException {
		return dp.getByUser(c);		
	}
	
	public void altaPaciente(Paciente c) throws SQLException {
		dp.altaPaciente(c);
	}
	
	public void actualizarDatosPaciente(Paciente p) throws SQLException {
		dp.update(p);
	}
	
	public Paciente getByEmail(String email) throws SQLException{
		return dp.getByEmail(email);		
	}
	
	public Paciente getById(int id) {
		return dp.getById(id);		
	}
}
