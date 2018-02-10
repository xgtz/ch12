package interceptor;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class MyInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation ai) throws Exception {
		
		Object object=ai.getAction();
		if(null==object)
			return Action.LOGIN;
		if(object instanceof PublicAction)
		{
			PublicAction ac=(PublicAction) object;
			String content=ac.getContent();
			if(content.contains("讨厌"))
			{
				content=content.replaceAll("讨厌", "喜欢");
				ac.setContent(content);
			}
			return ai.invoke();
		}
		else{
			return Action.LOGIN;
		}
	}

}
