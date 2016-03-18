package com.anthony.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EncodingConvertFilter implements Filter
{

	@Override
    public void destroy() {

    }

    @Override
    public void doFilter(ServletRequest arg0, ServletResponse arg1,
                  FilterChain arg2) throws IOException, ServletException {
            HttpServletResponse response = (HttpServletResponse) arg1;
            HttpServletRequest request=(HttpServletRequest)arg0;
            response.setContentType("text/html;charset=utf-8");
            request.setCharacterEncoding("utf-8");
            arg2.doFilter(request, response);
    }

    @Override
    public void init(FilterConfig arg0) throws ServletException {

    }
}
