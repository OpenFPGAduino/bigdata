package bigdata.app

import scala.scalajs.js.JSApp

object App extends JSApp {
  def main(): Unit = {
    println("Hello world!")
    val fruits = List("apple", "apple", "orange", "apple", "mango", "orange")
        val word = fruits.flatMap(_.split("\n"))
        val Map = word.map(word => (word,1)).groupBy(_._1)
        val reduce = Map.map(word => (word._1,word._2.foldLeft(0)((sum,c) => sum+ c._2)))
        println(reduce)     
  }
}
