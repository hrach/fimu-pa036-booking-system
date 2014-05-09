<?php

namespace IBA\Bundle\DAOBundle\DAO;

class DAOBaseImpl
{
	/**
	 * 
	 * @var \PDO
	 */
	public $db;
	
	/**
	 *
	 * @param DBConnection $dbConnection
	 */
	public function __construct($dbConnection) {
	
		$this->db = $dbConnection->getDb();
	}
	
	
	/**
	 *   Pomocna funkce vytahne data z db
	 *
	 *   @author Salko
	 *   @param String $strSQL SQL prikaz spusteny nad databazi
	 *
	 *   @return array Pole s vysledky hodnot
	 */
	function getHardData($strSQL)
	{
		$stmt = $this->db->query($strSQL);
		$result = $stmt->fetchAll();
		return $result;
	}
        
        function getMyHardData($strSQL)
	{
		$stmt = $this->db->query($strSQL);
		$result = $stmt->fetch();
		return $result;
	}
        
        function setHardData($strSQL)
	{
		$stmt = $this->db->query($strSQL);
		$result = $stmt->fetchAll();
		return $result;
	}
	
}

?>