package geospatial.statusboard

import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured
import org.springframework.security.web.RedirectStrategy

import javax.servlet.http.HttpServletResponse

@Secured(['permitAll'])
class LogoutController {

    RedirectStrategy redirectStrategy

    def index() {
        if (!request.post && SpringSecurityUtils.securityConfig.logout.postOnly) {
            response.sendError HttpServletResponse.SC_METHOD_NOT_ALLOWED
            return
        }

        redirectStrategy.sendRedirect request, response, SpringSecurityUtils.securityConfig.logout.filterProcessesUrl as String
        response.flushBuffer()
    }
}
