<?php

namespace PA032\Bundle\MultikinoBundle\Controller;

use PA032\Bundle\MultikinoBundle\DAO\ProgramDAO;
use PA032\Bundle\MultikinoBundle\DAO\HallDAO;
use PA032\Bundle\MultikinoBundle\DAO\ProjectionDAO;
use PA032\Bundle\MultikinoBundle\DAO\BranchOfficeDAO;
use PA032\Bundle\MultikinoBundle\DependencyInjection\MultikinoServiceList;
use PA032\Bundle\MultikinoBundle\DAO\DBConnectHelper;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use \DateTime;


class ProgramController extends Controller
{
	/**
	 * @Template()
	 */
	public function indexAction()
	{
		/* @var $branchOfficeDao BranchOfficeDAO */
		$branchOfficeDao = $this->get(MultikinoServiceList::BRANCH_OFFICE_DAO);
		$branchOffices = $branchOfficeDao->getAll();
		
		return array("listOfBranchOffices" => $branchOffices);
	}
	
	/**
	 * @Template()
	 * @param int $branchOfficeId
	 * @return array Data pro template
	 */
	public function chooseDateAction($branchOfficeId)
	{
		/* @var $projectionDao ProjectionDAO */
		$projectionDao = $this->get(MultikinoServiceList::PROJECTION_DAO);
		
		$projectionDates = $projectionDao->getDistinctProjectionDatesByIdBranchOffice($branchOfficeId);

		return array("projectionDates" => $projectionDates,
					 "branchOfficeId" => $branchOfficeId);
	}
	
	/**
	 * @Template()
	 * @param int $branchOfficeId
	 * @param string $dateString
	 * @return array Data pro template
	 */
	public function showProgramAction($branchOfficeId, $dateString)
	{
		/* @var $hallDao HallDAO */
		$hallDao = $this->get(MultikinoServiceList::HALL_DAO);
		/* @var $programDao ProgramDAO */
		$programDao = $this->get(MultikinoServiceList::PROGRAM_DAO);
		/* @var $branchOfficeDao BranchOfficeDAO */
		$branchOfficeDao = $this->get(MultikinoServiceList::BRANCH_OFFICE_DAO);
		
		$hallList = $hallDao->getAllByIdBranchOffice($branchOfficeId);
		
		$date = new \DateTime($dateString);
		$programRecordList = $programDao->getProgramRecordByDateAndBranchOfficeId($date, $branchOfficeId);
		
		return array("hallList" => $hallList,
				     "programRecordList" => $programRecordList);
		
	}
}

?>