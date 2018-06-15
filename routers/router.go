package routers

import (
	"github.com/gin-gonic/gin"
	"lianjia-search_mpservice/controllers"
	"github.com/gin-contrib/cors"
)

var Router *gin.Engine


func init() {
	Router = gin.Default()
	Router.Use(cors.Default())//CORS, allows all origins
	apiGroup := Router.Group("/api")
	{
		apiGroup.POST("/search", controllers.SearchController)
	}
}
