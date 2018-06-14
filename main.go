package main

import (
	"lianjia-search_service/routers"
)

func main() {
	routers.Router.Run(":8911")
}
