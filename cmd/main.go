package main

import (
	"my-gin-app/routes"

	"github.com/gin-gonic/gin"
)

func main() {
    r := gin.Default()
    routes.SetupRoutes(r)
    r.Run("0.0.0.0:5007")
}
