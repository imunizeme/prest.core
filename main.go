package main

import (
	config "github.com/imunizeme/config.core"
	log "github.com/nuveo/logSys"
	"github.com/nuveo/prest/cmd"
)

func main() {
	if err := config.Load(); err != nil {
		log.Fatal("Unable to load config", err.Error())
	}
	cmd.Execute()
}
