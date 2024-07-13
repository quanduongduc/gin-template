package handlers

import (
	"math/rand"
	"net/http"
	"time"

	"github.com/gin-gonic/gin"
)

func HelloHandler(c *gin.Context) {
    rand.Seed(time.Now().UnixNano())

    if rand.Intn(10) < 2 { // 20% chance to simulate an error
        c.JSON(http.StatusInternalServerError, gin.H{"error": "An unexpected error occurred"})
        return
    }

    c.JSON(http.StatusOK, gin.H{"message": "Hello, World!"})
}