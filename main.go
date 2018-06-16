package main

import (
	"github.com/Actooors/lianjia-search_mpservice/routers"
)

func main() {
	routers.Router.Run(":8911")
}
