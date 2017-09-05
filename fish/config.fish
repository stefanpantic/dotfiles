set pom 'Artificial Intelligence usually beats natural stupidity.'
set pom $pom 'Hacking is like sex. You get in, you get out, and hope that you didn’t leave something that can be traced back to you.'
set pom $pom 'Failure is not an option, it comes bundled with Windows.'
set pom $pom 'If at first you don’t succeed; call it version 1.0'
set pom $pom 'The more I C, the less I see.'
set pom $pom 'My software never has bugs. It just develops random features.'
set pom $pom 'rm -rf /bin/laden'
set pom $pom 'The great thing about Object Oriented code is that it can make small, simple problems look like large, complex ones.'
set pom $pom 'Unix is user-friendly. It is just very selective about who its friends are.'
set pom $pom 'Microsoft: You have got questions. We have got dancing paperclips.'
set pom $pom 'If you don’t want to be replaced by a computer, don’t act like one.'
set pom $pom 'Better to be a geek than an idiot.'
set pom $pom 'There are 10 types of people in the world: those who understand binary, and those who don’t.'
set pom $pom 'Difference between a virus and windows? Viruses rarely fail.'
set pom $pom 'Any fool can use a computer. Many do.'
set pom $pom 'Those who can’t write programs, write help files.'
set pom $pom 'In theory, theory and practice are the same. In practice, they’re not.'

set i (expr (random) '%' (count $pom))
set i (expr $i + 1)
set fish_greeting $pom[$i]
