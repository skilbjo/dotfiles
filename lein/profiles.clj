{:user
  {:dependencies [[org.clojure/tools.namespace "0.2.11"]
                  [spyscope "0.1.3"]
                  [jonase/eastwood "0.2.3" :exclusions  [org.clojure/clojure]]
                  [cljfmt "0.5.3"]
                  [criterium "0.4.1"]]
   :plugins      [[cider/cider-nrepl "0.13.0"]
                  [lein-autoreload "0.1.1"]
                  [cljfmt "0.5.6"]
                  [jonase/eastwood "0.2.3" :exclusions  [org.clojure/clojure]]
                  [lein-auto "0.1.2"]
                  [venantius/ultra "0.4.1"]]}
   :repl-options {:init (require 'cljfmt.core)}}
