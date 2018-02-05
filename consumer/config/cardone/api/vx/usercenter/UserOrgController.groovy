package top.cardone.api.vx.usercenter

import top.cardone.usercenter.service.UserOrgService
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.ResponseBody
import top.cardone.context.ApplicationContextHolder
import top.cardone.web.support.WebSupport

import javax.servlet.http.HttpServletRequest

/**
 * @author yht
 */
@Controller
@RequestMapping("/vx/usercenter/userOrg")
class UserOrgController {
    /**
     * /c0001.json begin
     **xx/
    @RequestMapping("/c0001.json")
    @ResponseBody
    Object c0001Json(HttpServletRequest request) {
        ApplicationContextHolder.getBean(WebSupport.class).func(request, { input -> ApplicationContextHolder.getBean(UserOrgService.class).insertByNotExistsCache(input) })
    }
    /** /c0001.json end **/
}