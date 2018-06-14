package main

import (
	"lianjia-search_mpservice/routers"
)

func main() {
	routers.Router.Run(":8911")
}
