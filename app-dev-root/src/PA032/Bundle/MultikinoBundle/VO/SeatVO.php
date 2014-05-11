<?php

namespace PA032\Bundle\MultikinoBundle\VO;


class SeatVO
{
	const STATE_FREE = 'free';
	const STATE_BOOKED = 'booked';

	/** @var int */
	public $seatId;

	/** @var int */
	public $type;

	/** @var string */
	public $row;

	/** @var int */
	public $number;

	/** @var string */
	public $state;
}
