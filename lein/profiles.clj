{:user
  {:dependencies [[org.clojure/tools.namespace "0.2.11"]
                  ;[jonase/eastwood "0.2.3" :exclusions  [org.clojure/clojure]]
                  [cljfmt "0.5.6"]
                  [io.aviso/pretty "0.1.33"]
                  [criterium "0.4.4"]]
   :plugins      [[cider/cider-nrepl "0.13.0"]
                  [lein-autoreload "0.1.1"]
                  [cljfmt "0.5.6"]
                  [io.aviso/pretty "0.1.33"]
                  [jonase/eastwood "0.2.3" :exclusions  [org.clojure/clojure]]
                  [lein-auto "0.1.2"]
                  [venantius/ultra "0.5.1"]]}
   :repl-options {:init (require 'cljfmt.core)}}
