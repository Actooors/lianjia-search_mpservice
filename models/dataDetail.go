package models

import (
	"github.com/jinzhu/gorm"
	"lianjia-search_mpservice/dao"
	"strings"
)

/*
 #楼型
  building_type       varchar(64),
  #权属
  ownership           varchar(64),
  #首付预算,string
  down_payment_budget varchar(64),
  #用途
  house_use           varchar(64),
  #年代
  completion_date     year,
  #楼层
  floor               varchar(64),
  visit7             int,
  visit30            int,
  #轮播图链接，以|分隔
  carousel_images     varchar(6000)
 */
type DataDetail struct {
	DataList
	BuildingType      string
	Ownership         string
	DownPaymentBudget string
	HouseUse          string
	CompletionDate    int
	Floor             string
	Visit7            int
	Visit30           int
	CarouselImages    string
}

var tableDataDetail *gorm.DB

func init() {
	tableDataDetail = dao.DB().Table("data_detail")
}

func GetDataDetail(pageId string) (data interface{}, err error) {
	var detail DataDetail
	err = tableDataDetail.Where(&DataDetail{DataList: DataList{PageId: pageId}}).Take(&detail).Error
	//对数据库中的carousel_images做分割后覆盖原key返回
	type ret struct {
		DataDetail
		CarouselImages []string
	}
	if err != nil {
		data = ret{
			detail,
			[]string{},
		}
		return data, err
	}
	images := strings.Split(detail.CarouselImages, "|")
	data = ret{
		detail,
		images,
	}
	return
}
