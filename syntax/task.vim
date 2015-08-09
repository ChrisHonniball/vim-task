if exists("b:current_syntax")
  finish
endif

syntax keyword taskKeyword New new Working working Done done Todo TODO todo bug Bug

syntax match taskWorkingIcon "^-" contained
syntax match taskWorkingIcon "^\s*-" contained
syntax match taskDoneIcon "^✓" contained
syntax match taskDoneIcon "^\s*✓" contained

syntax match taskWorkingItem "^-.*" contains=taskWorkingIcon,taskKeyword
syntax match taskWorkingItem "^\s*-.*" contains=taskWorkingIcon,taskKeyword
syntax match taskDoneItem "^✓.*" contains=taskDoneIcon,taskKeyword
syntax match taskDoneItem "^\s*✓.*" contains=taskDoneIcon,taskKeyword

syntax match sectionTitleLine "^.*:\s*$" contains=sectionTitle
syntax match sectionTitle "\S.*:\s*$"

let b:current_syntax = "task"

