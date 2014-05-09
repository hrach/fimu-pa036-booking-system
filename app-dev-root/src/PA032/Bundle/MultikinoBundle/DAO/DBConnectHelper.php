<?php

namespace PA032\Bundle\MultikinoBundle\DAO;

class DBConnectHelper
{
	private static $_instance;
	
	public static function connectDB($container)
	{
		if(self::$_instance !== null)
		{
			return self::$_instance;
		}
		$pdo =  new \PDO("pgsql:dbname=".$container->getParameter("database_name").";host=".$container->getParameter("database_host"), $container->getParameter("database_user"), $container->getParameter("database_password") );
		$pdo->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
		$pdo->setAttribute(\PDO::ATTR_EMULATE_PREPARES, false);
		$pdo->setAttribute(\PDO::ATTR_PERSISTENT, true);
		return self::$_instance=$pdo;
	}
}

?>