<?php

namespace PA032\Bundle\MultikinoBundle\Controller;

use PA032\Bundle\MultikinoBundle\DAO\ProgramDAO;
use PA032\Bundle\MultikinoBundle\DAO\ProjectionDAO;
use PA032\Bundle\MultikinoBundle\DependencyInjection\MultikinoServiceList;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;


class DetailController extends Controller
{

	/**
	 * Zobrazi detail projekce zaslane
	 * @Template()
	 * @param int $projectionId idcko projekce
	 * @return array Data pro template
	 */
	public function indexAction($projectionId)
	{
		/** @var $projectionDao ProjectionDAO */
		$projectionDao = $this->get(MultikinoServiceList::PROJECTION_DAO);
		/** @var $programDao ProgramDAO */
		$programDao = $this->get(MultikinoServiceList::PROGRAM_DAO);

		$seats = $projectionDao->getSeatsByProjectionId($projectionId);
		$maxSeat = $this->getMaxSeat($seats);
		$seats = $this->transformSeatsToRows($seats);
		$projection = $programDao->getById($projectionId);

		return [
			'projection' => $projection,
			'seats' => $seats,
			'maxSeat' => $maxSeat,
			'alphabet' => preg_split('##', 'ABCDEFGHIJKLMNOPQRSTUVXYZ'),
		];
	}


	private function transformSeatsToRows(array $seats)
	{
		$rows = [];
		foreach ($seats as $seat) {
			$rows[$seat->row][] = $seat;
		}

		return $rows;
	}


	private function getMaxSeat($seats)
	{
		$max = 0;
		foreach ($seats as $seat) {
			$max = max($max, $seat->number);
		}
		return $max;
	}

}
