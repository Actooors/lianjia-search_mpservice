package controllers

import (
	"github.com/gin-gonic/gin"
	"github.com/Actooors/lianjia-search_mpservice/tools"
	"github.com/tidwall/gjson"
	"github.com/Actooors/lianjia-search_mpservice/models"
)

func SearchController(c *gin.Context) {
	data, err := c.GetRawData()
	if err != nil {
		tools.Response(c, "ERROR", err.Error(), nil)
		return
	}
	results := gjson.GetManyBytes(data, "keyword", "pageSize", "page")
	for _, result := range results {
		if !result.Exists() {
			tools.Response(c, "ERROR", "参数不正确", nil)
			return
		}
	}
	keyword := results[0].String()
	page := results[1].Int()
	pageSize := results[2].Int()
	datas, err := models.GetDataList(keyword, page, pageSize)
	if err != nil {
		tools.Response(c, "ERROR", err.Error(), nil)
		return
	}
	tools.Response(c, "SUCCESS", nil, datas)
}

func DetailController(c *gin.Context) {
	pageId, ok := c.GetQuery("pageId")
	if !ok {
		tools.Response(c, "ERROR", "参数不正确", nil)
		return
	}
	data, err := models.GetDataDetail(pageId)
	if err != nil {
		tools.Response(c, "ERROR", err.Error(), nil)
		return
	}
	tools.Response(c, "SUCCESS", nil, data)
}
