{:user
	{	:dependencies [[org.clojure/tools.namespace "0.2.11"]
									[spyscope "0.1.3"]
                  [criterium "0.4.1"]]
		:injections		[(require '(clojure.tools.namespace repl find))
									(try (require 'spyscope.core)
										(catch RuntimeException e))]
                  }}
