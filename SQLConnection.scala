
import java.sql.{Connection,DriverManager}
object SQLConnection {
  def main(args: Array[String])
  {
  val url = "jdbc:mysql://localhost/testdb"
  val driver = "com.mysql.jdbc.Driver"
  val username = "root"
  val password = "pass"
  
//  var connection: Connection= _ 
  Class.forName(driver)  
  var connection: Connection= DriverManager.getConnection(url,username,password)
     
    val statement = connection.createStatement()
    println("Hello")
    val rs = statement.executeQuery("Select orderid from copy2")
    while (rs.next)
    {
      println(rs.getString(1))
    }  
  }
}