package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * サーブレット用フィルター処理クラス
 */
@WebFilter("/*")
public class ServletFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// 文字コード設定
		request.setCharacterEncoding("UTF-8");

		chain.doFilter(request, response);
	}

}
