<?php

namespace PA032\Bundle\MultikinoBundle\Controller;

use PA032\Bundle\MultikinoBundle\DAO\BranchOfficeDAO;

use PA032\Bundle\MultikinoBundle\DependencyInjection\MultikinoServiceList;

use PA032\Bundle\MultikinoBundle\DAO\DBConnectHelper;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class ProgramController extends Controller
{
	/**
	 * @Template()
	 */
	public function indexAction()
	{
		
		/* @var $branchOfficeDao BranchOfficeDAO */
		$branchOfficeDao = $this->get(MultikinoServiceList::BRANCH_OFFICE_DAO);
		
		$branchOfficeDao->getAll();
		
		return array();
	}
}

?>