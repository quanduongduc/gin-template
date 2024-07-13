package unit

import (
	"net/http"
	"net/http/httptest"
	"testing"

	"my-gin-app/handlers"

	"github.com/gin-gonic/gin"
	"github.com/stretchr/testify/assert"
)

func TestHelloHandler(t *testing.T) {
    r := gin.Default()
    r.GET("/", handlers.HelloHandler)

    w := httptest.NewRecorder()
    req, _ := http.NewRequest("GET", "/", nil)
    r.ServeHTTP(w, req)

    assert.Equal(t, http.StatusOK, w.Code)
    assert.Equal(t, "{\"message\":\"Hello World!\"}", w.Body.String())
}
