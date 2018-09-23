package com.smart.exception;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    /**
     * Handler执行完成之后调用这个方法
     */
    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response, Object handler, Exception exc)
            throws Exception {

    }

    /**
     * Handler执行之后，ModelAndView返回之前调用这个方法
     */
    public void postHandle(HttpServletRequest request, HttpServletResponse response,
                           Object handler, ModelAndView modelAndView) throws Exception {
    }

    /**
     * Handler执行之前调用这个方法
     */
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
                             Object handler) throws Exception {
        String url = request.getRequestURI();
        //URL:login.jsp是公开的;这个demo是除了login.jsp是可以公开访问的，其它的URL都进行拦截控制
        if(url.indexOf("login")>=0 || url.indexOf("index")>=0 || url.indexOf("register")>=0 || url.indexOf("reset")>=0 || url.indexOf("showError")>=0 || url.indexOf("allResume")>=0 || url.indexOf("UserType.do")>=0 || url.indexOf("reg")>=0 || url.indexOf("isEmailExist.do")>=0 || url.indexOf("resetPassword")>=0 || url.indexOf("findResumeByName")>=0) {
            return true;
        }
        //获取Session
        HttpSession session = request.getSession();
        String email = (String)session.getAttribute("email");
        //Object email = modelMap.get("email");
        if(email != null){
            System.out.println(email);
            return true;
        }
        System.out.println(123);
        //不符合条件的，跳转到登录界面
        request.getRequestDispatcher("/login").forward(request, response);
        return false;
    }
}
