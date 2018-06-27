package controllers

import (
	"github.com/gin-gonic/gin"
	"github.com/Actooors/lianjia-search_mpservice/models"
	"github.com/Actooors/lianjia-search_mpservice/tools"
)

func CoordinateController(ctx *gin.Context) {
	data, err := models.GetCoordinate()
	if err != nil {
		tools.Response(ctx, "ERROR", err.Error(), nil)
		return
	}
	tools.Response(ctx, "SUCCESS", nil, gin.H{
		"data": data,
	})
}
