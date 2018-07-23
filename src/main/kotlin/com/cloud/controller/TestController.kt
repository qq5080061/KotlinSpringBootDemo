package com.cloud.controller

import com.cloud.dao.UserDao
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping
import javax.servlet.http.HttpServletRequest

@Controller
class TestController {

    @Autowired
    lateinit var userDao: UserDao

    @RequestMapping("/test")
    fun index(request: HttpServletRequest): String {
        val users = userDao.getAllUser()
        request.setAttribute("users",users)
        return "/index.jsp"
    }
}