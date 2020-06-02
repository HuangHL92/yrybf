package cc.mrbird.febs.common.configure;


import cc.mrbird.febs.common.properties.WxMaProperties;
import cn.binarywang.wx.miniapp.api.WxMaService;
import cn.binarywang.wx.miniapp.api.impl.WxMaServiceImpl;
import cn.binarywang.wx.miniapp.config.impl.WxMaDefaultConfigImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

/**
 * @author <a href="https://github.com/binarywang">Binary Wang</a>
 */
@Configuration
@EnableConfigurationProperties(WxMaProperties.class)
public class WxMaConfiguration {
    private WxMaProperties properties;

    private WxMaService service = new WxMaServiceImpl();

    static List<WxMaService> maServices = new  ArrayList<WxMaService>();

    @Autowired
    public WxMaConfiguration(WxMaProperties properties) {
        this.properties = properties;
    }

    public static WxMaService getMaService() {

        if (maServices.size()>0) {

            return maServices.get(0);
        }

        return  null;
    }

    @PostConstruct
    public void init() {
        WxMaDefaultConfigImpl config = new WxMaDefaultConfigImpl();


        config.setAppid(this.properties.getAppid());
        config.setSecret(this.properties.getSecret());
        /*config.setToken(this.properties.getToken());
        config.setAesKey(this.properties.getAesKey());
        config.setMsgDataFormat(this.properties.getMsgDataFormat());*/
        WxMaService wxservice = new WxMaServiceImpl();
        wxservice.setWxMaConfig(config);
        maServices.add(wxservice);
    }

}