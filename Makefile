
echo-bbM:
	bb -m loom-bb.echo

echo-bbX:
	bb -x loom-bb.echo/-main

# This should be using the `:jvm-opts` defined in `deps.edn`
echo-cljM:
	clj -M -m loom-bb.echo


echo-cljX:
	clj -X loom-bb.echo/-main

# Manually adding `enable-preview` to force the option
echo-cljM-preview:
	clj -J--enable-preview -M -m loom-bb.echo

echo-cljX-preview:
	clj -J--enable-preview  -X loom-bb.echo/-main
