package models

import (
	"github.com/jinzhu/gorm"
	"lianjia-search_service/dao"
)

var table *gorm.DB
var searchQuery string

const (
	querySearchRaw = "SELECT * FROM city_lianjia_data_lianjia WHERE LOCATE(?,CONCAT("
)

type data struct {
	gorm.Model
	City          string `gorm:"column:city'"`
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
	TotalPrice    string
	UnitPrice     string
}

func init() {
	//限制table在city_lianji_data_lianjia之内
	db := dao.DB()
	table = db.Table("city_lianjia_data_lianjia")

	//拼接searchQuery
	var cols = []string{"city", "area", "sec_area", "title", "community_name", "house_type",
		"square", "toward", "decoration", "lift", "flood", "total_price", "unit_price"}
	searchQuery = querySearchRaw
	for _, col := range cols {
		searchQuery += col + ","
	}
	searchQuery = searchQuery[:len(searchQuery)-1]
	searchQuery += "));"
}

func GetData(keyword string) (datas []*data, err error) {
	//执行原生sql语句
	rows, err := table.Raw(searchQuery, keyword).Rows()
	if err != nil {
		return
	}
	datas = make([]*data, 0)
	defer rows.Close()
	for rows.Next() {
		var data data
		table.ScanRows(rows, &data)
		datas = append(datas, &data)
	}
	return
}
