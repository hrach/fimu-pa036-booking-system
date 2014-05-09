<?php

namespace PA032\Bundle\MultikinoBundle\DAO;

use PA032\Bundle\MultikinoBundle\VO\BranchOfficeVO;

use IBA\Bundle\DAOBundle\DAO\DAOBaseImpl;

class BranchOfficeDAO extends DAOBaseImpl
{
	public function getAll()
	{
		$records = array();
		
		$strSQL = "SELECT * FROM branch_office";
		try
		{
			$stmt = $this->db->query($strSQL);
			while ($row = $stmt->fetch(\PDO::FETCH_ASSOC, \PDO::FETCH_ORI_NEXT))
			{
				$record = new BranchOfficeVO();
				$record->branchOfficeId = $row["branch_office_id"];
				$record->name = $row["name"];
				$record->description = $row["description"];
				$record->addressLine1 = $row["address_line_1"];
				$record->addressLine2 = $row["address_line_2"];
				$record->city = $row["city"];
				$record->postalCode = $row["postal_code"];
				$record->countryId = $row["country_id"];
				
				array_push($records, $record);
			}
		
		}
		catch (\Exception $e)
		{
		}
		
		return $records;
	}
}

?>