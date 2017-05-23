<?php 
abstract class DB
	{	
		public $host = "localhost";
		public $user = "root";
		public $pass = "root";
		public $dbname = "shop";
		public $conn;

		function __construct()
		{
			$this->conn = mysqli_connect($this->host, $this->user, $this->pass, $this->dbname);
		}

		function query($sql)
		{
			return mysqli_query($this->conn, $sql);
		}
		function fetch_assoc($resource)
		{
			return mysqli_fetch_assoc($resource);
		}
		function num_rows($resource)
		{
			return mysqli_num_rows($resource);
		}
		function toArray($resource){
			
			$result = [];
			while($row = $this->fetch_assoc($resource)){
				$result[] = $row;
			}
			return $result;
		}
		function result($sql)
		{
			return $this->toArray($this->query($sql));	
		}
		function result_once($sql)
		{
			return $this->fetch_assoc($this->query($sql));	
		}

		function find($id){
			$sql = "select * 
					from $this->tablename 
					where $this->primaryKey=$id";
			return $this->result_once($sql);
		}
		function getList(){
			$sql = "select * from $this->tablename ";
			return $this->result($sql);
		}
		function findIDByTieuDeKD($TieuDeKD)
		{
			$sql = "select $this->primaryKey from $this->tablename 
					where TieuDeKD = '$TieuDeKD'";
			$kq = $this->result_once($sql);
			return $kq[$this->primaryKey];
		}
}
?>