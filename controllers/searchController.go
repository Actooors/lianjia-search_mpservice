package controllers

import (
	"github.com/gin-gonic/gin"
	"lianjia-search_mpservice/tools"
	"github.com/tidwall/gjson"
	"lianjia-search_mpservice/models"
)

func SearchController(c *gin.Context) {
	data, err := c.GetRawData()
	if err != nil {
		tools.Response(c, "ERROR", err.Error(), nil)
		return
	}
	result := gjson.GetBytes(data, "keyword")
	if !result.Exists() {
		tools.Response(c, "ERROR", "参数不正确", nil)
		return
	}
	keyword := result.String()
	datas, err := models.GetDataList(keyword)
	if err != nil {
		tools.Response(c, "ERROR", err.Error(), nil)
		return
	}
	tools.Response(c, "SUCCESS", nil, datas)
}

func DetailController(c *gin.Context) {
	keyword, ok := c.GetQuery("pageId")
	if !ok {
		tools.Response(c, "ERROR", "参数不正确", nil)
		return
	}
	data, err := models.GetDataDetail(keyword)
	if err != nil {
		tools.Response(c, "ERROR", err.Error(), nil)
		return
	}
	tools.Response(c, "SUCCESS", nil, data)
}
