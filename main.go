package main

import (
	config "github.com/imunizeme/config.core"
	"github.com/nuveo/log"
	"github.com/prest/cmd"
	"github.com/prest/middlewares"
	"github.com/rs/cors"
)

func main() {
	if err := config.Load(); err != nil {
		log.Fatal("Unable to load config", err.Error())
	}
	app := middlewares.GetApp()
	app.Use(cors.Default())
	cmd.Execute()
}
