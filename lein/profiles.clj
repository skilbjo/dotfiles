{:user {:dependencies [[cljfmt "0.5.7"]
                       [io.aviso/pretty "0.1.34"]
                       [jonase/eastwood "0.2.4" :exclusions [org.clojure/clojure]]
                       [org.clojure/tools.namespace "0.2.11"]]  ; (refresh) in repl
        :plugins      [[cider/cider-nrepl "0.15.1"]
                       [cljfmt "0.5.6"]
                       [io.aviso/pretty "0.1.34"]
                       #_[jonase/eastwood "0.2.4" :exclusions [org.clojure/clojure]]
                       [lein-auto "0.1.2"]
                       [lein-autoreload "0.1.1"]
                       [venantius/ultra "0.5.1"]]}
 :repl {:repl-options {:init (do
                               (require 'cljfmt.core)
                               (require '[clojure.string :as string])
                               (require '[clojure.java.io :as io]))}}}
