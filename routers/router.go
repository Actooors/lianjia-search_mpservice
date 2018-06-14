package routers

import (
	"github.com/gin-gonic/gin"
	"net/http"
	"lianjia-search_service/controllers"
)

var Router *gin.Engine


func init() {
	Router = gin.Default()
	Router.GET("/", func(context *gin.Context) {
		context.String(http.StatusOK,"asd")
	})
	apiGroup := Router.Group("/api")
	{
		apiGroup.POST("/search", controllers.SearchController)
	}
}
