package routers

import (
	"github.com/gin-gonic/gin"
	"github.com/gin-contrib/cors"
	"github.com/Actooors/lianjia-search_mpservice/controllers"
)

var Router *gin.Engine


func init() {
	Router = gin.Default()
	Router.Use(cors.Default())//CORS, allows all origins
	apiGroup := Router.Group("/lianjia-search_mp")
	{
		apiGroup.POST("/search", controllers.SearchController)
		apiGroup.GET("/detail", controllers.DetailController)
		apiGroup.GET("/coordinate",controllers.CoordinateController)
	}
}
