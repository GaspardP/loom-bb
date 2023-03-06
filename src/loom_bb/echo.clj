(ns loom-bb.echo
  (:gen-class))

(defn -main [& args]
  (let [threads (for [i (range 10)]
                  (Thread/startVirtualThread
                   (fn []
                     (println "Thread" i "Start")
                     (Thread/sleep (* 100 i))
                     (println "Thread" i "End"))))]
    (doseq [thread threads]
      (.join thread)))
  (println "Ok"))
