<?php
class dbex {
	
	private $dbc;

	public function __construct($dbServs)
	{
		// construct a dbex object
		$this->dbc = new mysqli($dbServs[0], $dbServs[2], $dbServs[3], $dbServs[1]);
		if($this->dbc->connect_error) {
			if(DEBUG) {
				echo "debug: dbo.class.php, __construct, $this->dbc->connect_error.";
			} else {
				die('<script language="javascript">alert("对不起，系统暂时出现了错误，请稍候。")</script>');
			}
		}
		return $this->dbc;
	}

	public function checkExist($value, $field="email", $table="user")
	{
		// check 
		if(empty($table) || empty($field) || empty($value)) {
			return 0;
		} else {
			$sql = "select 1 from `$table` where `$field` = '$value' limit 1";
			$res = $this->dbc->query($sql);
			return $res->num_rows;
		}
	}

	public function exeUpdate( $sql )
	{
		$this->dbc->query($sql);
		return $this->dbc->affected_rows;
	}
	
	public function getRow( $sql )
	{ 	if( DEBUG ) {
		$result=$this->dbc->query($sql); if(!$result) { echo "debug: cdbex, $sql. any error:". $this->dbc->error. "errorno: ".$this->dbc->errno."\$result = $result."; }
		} else {
		$result=$this->dbc->query($sql) or die('<script type="text/javascript">location.href="servtools/error.php?error_type=dberr";</script>');
		}
		return $result->fetch_array();
	}

	public function close()
	{
		$this->dbc->close();
	}
}
?>
