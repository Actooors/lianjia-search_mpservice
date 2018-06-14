package tools

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

func Response(c *gin.Context, code string, message, data interface{}) {
	switch message.(type) {
	case string:
		message = message.(string)
	default:
		message = nil
	}
	c.JSON(http.StatusOK, gin.H{
		"code":    code,
		"message": message,
		"data":    data,
	})
}
