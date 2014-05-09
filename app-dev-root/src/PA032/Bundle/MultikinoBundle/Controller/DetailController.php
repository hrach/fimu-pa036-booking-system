<?php

namespace PA032\Bundle\MultikinoBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class DetailController extends Controller
{
	/**
	 * Zobrazi detail projekce zaslane
	 * 
	 * @Template()
	 * @param int $projectionId idcko projekce
	 * @return array Data pro template
	 */
	public function indexAction($projectionId)
	{
		return array("projectionId" => $projectionId);
	}
}

?>