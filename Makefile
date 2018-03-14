run: censor.far
run: alphabet.far
run: words.far

censor.far: censor.grm alphabet.far words.far
	LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/usr/lib/fst" thraxcompiler --input_grammar=$< --output_far=$@
alphabet.far: alphabet.grm
	LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/usr/lib/fst" thraxcompiler --input_grammar=$< --output_far=$@
words.far : words.grm
	LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/usr/lib/fst" thraxcompiler --input_grammar=$< --output_far=$@
