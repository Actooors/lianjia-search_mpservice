package controllers

import (
	"github.com/gin-gonic/gin"
	"lianjia-search_service/tools"
	"github.com/tidwall/gjson"
	"lianjia-search_service/models"
)

func SearchController(c *gin.Context) {
	data, err := c.GetRawData()
	if err != nil {
		tools.Response(c, "FAILED", err.Error(), nil)
		return
	}
	keyword := gjson.GetBytes(data, "keyword").String()
	datas, err := models.GetData(keyword)
	if err != nil {
		tools.Response(c, "FAILED", err.Error(), nil)
		return
	}
	tools.Response(c, "SUCCESS", nil, datas)
}
