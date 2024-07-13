package routes

import (
	"my-gin-app/handlers"

	"github.com/gin-gonic/gin"
)

func SetupRoutes(r *gin.Engine) {
    r.GET("/", handlers.HelloHandler)
}
