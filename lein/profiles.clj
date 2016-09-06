{:user
  {:dependencies [[org.clojure/tools.namespace "0.2.11"]
                  [spyscope "0.1.3"]
                  [jonase/eastwood "0.2.1" :exclusions  [org.clojure/clojure]]
                  [criterium "0.4.1"]]
   :plugins      [[cider/cider-nrepl "0.13.0"]]
   :injections   [(require '(clojure.tools.namespace repl find))
                  (try (require 'spyscope.core)
                    (catch RuntimeException e))] }}
