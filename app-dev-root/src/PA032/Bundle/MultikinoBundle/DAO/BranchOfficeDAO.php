<?php

namespace PA032\Bundle\MultikinoBundle\DAO;

use IBA\Bundle\DAOBundle\DAO\DAOBaseImpl;

class BranchOfficeDAO extends DAOBaseImpl
{
	public function getAll()
	{
		$strSQL = "SELECT * FROM branch_office";
		try
		{
			$stmt = $this->db->query($strSQL);
			while ($row = $stmt->fetch(\PDO::FETCH_NUM, \PDO::FETCH_ORI_NEXT))
			{
				//print_r($row);
			}
		
		}
		catch (\Exception $e)
		{
		}
		
		return null;
	}
}

?>