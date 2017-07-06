package safehouse;

import java.io.InputStream;
import java.net.URL;
import java.net.URLEncoder;
import org.apache.cxf.helpers.IOUtils;
import org.apache.cxf.io.CachedOutputStream;

public class CallRestStreetlamp {
	private String restClient() throws Exception{
		String addr = "http://api.data.go.kr/openapi/ce733cc5-e225-42ae-a8e6-0d0d7081728e"+"?ServiceKey=";
		String serviceKey = "dniAO7cIdEfnGtgmHFz6D2%2F87ZLlmLwxxKtIep%2B7%2Ft9em3PyDe68hqHeMf1zlT7Yri1FZcdBkLfOSj7FRlPhkQ%3D%3D";
		String parameter = "";
		
		//인증키(서비스키) url인코딩
		serviceKey = URLEncoder.encode(serviceKey, "UTF-8");
		
		/* parameter setting
		 * parameter = parameter + "&" + "PARAM1=AAA";
		 * parameter = parameter + "&" + "PARAM2=BBB";
		 * parameter = parameter + "&" + "PARAM3=CCC";
		 * */
		
		addr = addr + serviceKey + parameter;
		
		URL url = new URL(addr);
		InputStream in = url.openStream(); 
		CachedOutputStream bos = new CachedOutputStream();
		IOUtils.copy(in, bos);
		in.close();
		bos.close();
		return bos.getOut().toString();
	}
}
