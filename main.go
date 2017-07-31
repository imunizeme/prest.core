package main

import (
	config "github.com/imunizeme/config.core"
	"github.com/nuveo/log"
	"github.com/prest/cmd"
)

func main() {
	if err := config.Load(); err != nil {
		log.Fatal("Unable to load config", err.Error())
	}
	cmd.Execute()
}
