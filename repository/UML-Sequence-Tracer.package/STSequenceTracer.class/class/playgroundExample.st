examples
playgroundExample
	"Don't execute all at once.
	Don't lose reference to tracer, otherwise you will have to uninstall all links manually (see the other example method).
	
	Copy the method code WITHOUT the |tracer t1| to Playground."

	| tracer t1 |
	"create new instance"
	tracer := STSequenceTracer new.

	"pick all classes you want to watch"
	tracer
		traceClasses:
			{STTest1.
			STTest2}.

	"this is if you want to uninstall the watchers from all classes"
	tracer uninstall.

	"clear the message log"
	tracer clearMessages.

	"sample object"
	t1 := STTest1 new.

	"sample call which will generate other calls"
	t1 otherCall.

	"you can view the generated instances"
	tracer messages.

	"now convert the messages to PlantUML text"
	STPUmlSDGenerator textFor: tracer messages