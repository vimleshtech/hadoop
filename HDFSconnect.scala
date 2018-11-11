import org.apache.hadoop.conf.Configuration
import org.apache.hadoop.fs.FileSystem
import org.apache.hadoop.fs.Path
import java.io.PrintWriter

object HDFSconnect {
  def main(args: Array[String])
  {
    val conf = new Configuration()
    val fs = FileSystem.get(conf)
    val output = fs.create(new Path("hdfs://localhost:54310"))
    //val writer = new PrintWriter(output)
    println("Success")
  }
  
}