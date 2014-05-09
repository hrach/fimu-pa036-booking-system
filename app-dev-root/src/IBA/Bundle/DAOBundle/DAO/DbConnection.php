<?php

namespace IBA\Bundle\DAOBundle\DAO;

class DbConnection
{
	/**
	 *
	 * @var DbParameters
	 */
	private $dbParameters;
	
	/**
	 *
	 * @var \PDO
	 */
	private $db;
	
	public function __construct(DbParameters $dbParameters)
	{
		$this->dbParameters = $dbParameters;
	
		try {
			$this->db = new \PDO("pgsql:dbname=".$this->dbParameters->dbname.";host=".$this->dbParameters->dbhost, $this->dbParameters->dbuser, $this->dbParameters->dbpwd );
		}
		catch(\PDOException $e)
		{
			print_r($e->getMessage());
			return $e->getMessage();
		}
	}
	
	/**
	 *
	 * @return \iRIS\PersistenceBundle\DAO\Impl\DbParameters
	 */
	public function getDbParameters()
	{
		return $this->dbParameters;
	}
	
	/**
	 *
	 * @return \PDO
	 */
	public function getDb()
	{
		return $this->db;
	}
}

?>