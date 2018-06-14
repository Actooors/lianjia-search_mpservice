package dao

import (
	"github.com/jinzhu/gorm"
	_ "github.com/go-sql-driver/mysql"
	"log"
	"sync"
)

var db *gorm.DB
var once sync.Once

func initDB() {
	var err error
	db, err = gorm.Open("mysql", "root:root@/city_lianjia_data?parseTime=true")
	if err != nil {
		log.Fatal(err)
	}
}

func DB() *gorm.DB {
	once.Do(initDB)
	return db
}
