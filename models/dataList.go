package models

import (
	"github.com/jinzhu/gorm"
	"github.com/Actooors/lianjia-search_mpservice/dao"
	"time"
)

var tableDataList *gorm.DB
var searchQuery string

const (
	querySearchRaw = "SELECT * FROM data_detail WHERE LOCATE(?,CONCAT("
)

type DataList struct {
	gorm.Model
	PageId        string
	City          string
	Area          string
	SecArea       string
	Title         string
	CommunityName string
	HouseType     string
	Square        float64
	Toward        string
	Decoration    string
	Lift          string
	Flood         string
	TotalPrice    int
	UnitPrice     int
	Image         string
	Star          int
	Visit         int
	PublishTime   time.Time
}

func init() {
	//限制table在city_lianji_data_lianjia之内
	db := dao.DB()
	tableDataList = db.Table("data_list")

	//拼接searchQuery
	var cols = []string{"city", "area", "sec_area", "title", "community_name", "house_type",
		"square", "toward", "decoration", "lift", "flood", "total_price", "unit_price"}
	searchQuery = querySearchRaw
	for _, col := range cols {
		searchQuery += col + ","
	}
	searchQuery = searchQuery[:len(searchQuery)-1]
	searchQuery += ")) limit ?,?;"
}

func GetDataList(keyword string, pageSize int64, page int64) (datas []*DataList, err error) {
	//执行原生sql语句
	rows, err := tableDataList.Raw(searchQuery, keyword, (page-1)*pageSize, pageSize).Rows()
	if err != nil {
		return
	}
	datas = make([]*DataList, 0)
	defer rows.Close()
	for rows.Next() {
		var data DataList
		tableDataList.ScanRows(rows, &data)
		datas = append(datas, &data)
	}
	return
}
