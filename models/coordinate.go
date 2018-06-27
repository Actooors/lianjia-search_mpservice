package models

import "github.com/Actooors/lianjia-search_mpservice/dao"

type Coordinate struct {
	Lat float64 `json:"lat"`
	Lng float64 `json:"lng"`
}

func GetCoordinate() (data []*Coordinate, err error) {
	table := dao.DB().Table("data_list")
	rows, err := table.Select("lat,lng").Where("lng is not null AND lat is not null").Rows()
	if err != nil {
		return
	}
	defer rows.Close()
	for rows.Next() {
		var tmp Coordinate
		table.ScanRows(rows, &tmp)
		data = append(data, &tmp)
	}
	return
}
