{:user
 {:dependencies [[org.clojure/tools.namespace "0.2.11"]     ; (refresh) in repl
                 [cljfmt "0.5.7"]
                 [io.aviso/pretty "0.1.34"]
                 [jonase/eastwood "0.2.4" :exclusions  [org.clojure/clojure]]]
  :plugins      [;[jonase/eastwood "0.2.4" :exclusions  [org.clojure/clojure]]
                 [cider/cider-nrepl "0.15.0"]
                 [cljfmt "0.5.6"]
                 [io.aviso/pretty "0.1.34"]
                 [lein-auto "0.1.2"]
                 [lein-autoreload "0.1.1"]
                 [venantius/ultra "0.5.1"]]}
 :repl-options {:init (require 'cljfmt.core)}}
