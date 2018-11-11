
import java.io._
object fileExample {
  def main(args: Array[String])
  {
    val fileObject = new File("/home/aparna/output.txt")
    val printWriter = new PrintWriter(fileObject)
    printWriter.write("Hello")
    printWriter.close()
  }
}