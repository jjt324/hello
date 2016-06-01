package controllers

import (
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	c.Data["Website"] = "jjt324.github.io"
	c.Data["Email"] = "jjt324@nyu.edu"
	c.TplName = "index.tpl"
}
