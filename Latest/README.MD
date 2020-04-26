# latest

[![](https://github.com/nu11secur1ty/OWASP_ZAP/blob/master/wall/owasp_logo_milan.png)](https://www.youtube.com/watch?v=U6CrsooLpAg)

![](https://github.com/nu11secur1ty/OWASP_ZAP/blob/master/Latest/screen/GadR.png)

<div style="width:100%;height:0px;position:relative;padding-bottom:63.158%;"><iframe src="https://streamable.com/e/9pyvry" frameborder="0" width="100%" height="100%" allowfullscreen style="width:100%;height:100%;position:absolute;left:0px;top:0px;overflow:hidden;"></iframe></div>



- - - Installing: OWASP_ZAP 

```
curl -s curl -s https://raw.githubusercontent.com/nu11secur1ty/OWASP_ZAP/master/Latest/KlaiLinux2020.2/installer2020.sh | bash
```
- - - - - - - Installing  gadmrusna OnlineAGI downloader: 

[OWASP-AGI Automation for Gathering Information-Kali Linux 2020.2]


```bash
curl -s https://raw.githubusercontent.com/nu11secur1ty/OWASP_ZAP/master/Latest/onlineAGI/gadmrusna_download.sh | bash
```

- output in file:

```xml
This XML file does not appear to have any style information associated with it. The document tree is shown below.
<OWASPZAPReport version="D-2020-04-21" generated="Fri, 24 Apr 2020 21:05:21">
<site name="http://example.com" host="example.com" port="80" ssl="false">
<alerts>
<alertitem>
<pluginid>10036</pluginid>
<alert>
Server Leaks Version Information via "Server" HTTP Response Header Field
</alert>
<name>
Server Leaks Version Information via "Server" HTTP Response Header Field
</name>
<riskcode>1</riskcode>
<confidence>3</confidence>
<riskdesc>Low (High)</riskdesc>
<desc>
<p>The web/application server is leaking version information via the "Server" HTTP response header. Access to such information may facilitate attackers identifying other vulnerabilities your web/application server is subject to.</p>
</desc>
<instances>
<instance>
<uri>http://example.com/robots.txt</uri>
<method>GET</method>
<evidence>ECS (dcb/7F5B)</evidence>
</instance>
<instance>
<uri>http://example.com/</uri>
<method>GET</method>
<evidence>ECS (dcb/7F15)</evidence>
</instance>
<instance>
<uri>http://example.com/</uri>
<method>GET</method>
<evidence>ECS (dcb/7F5D)</evidence>
</instance>
<instance>
<uri>http://example.com/sitemap.xml</uri>
<method>GET</method>
<evidence>ECS (dcb/7F18)</evidence>
</instance>
</instances>
<count>4</count>
<solution>
<p>Ensure that your web server, application server, load balancer, etc. is configured to suppress the "Server" header or provide generic details.</p>
</solution>
<reference>
<p>http://httpd.apache.org/docs/current/mod/core.html#servertokens</p><p>http://msdn.microsoft.com/en-us/library/ff648552.aspx#ht_urlscan_007</p><p>http://blogs.msdn.com/b/varunm/archive/2013/04/23/remove-unwanted-http-response-headers.aspx</p><p>http://www.troyhunt.com/2012/02/shhh-dont-let-your-response-headers.html</p>
</reference>
<cweid>200</cweid>
<wascid>13</wascid>
<sourceid>3</sourceid>
</alertitem>
<alertitem>
<pluginid>40025</pluginid>
<alert>Proxy Disclosure</alert>
<name>Proxy Disclosure</name>
<riskcode>2</riskcode>
<confidence>2</confidence>
<riskdesc>Medium (Medium)</riskdesc>
<desc>
<p>1 proxy server(s) were detected or fingerprinted. This information helps a potential attacker to determine </p><p> - A list of targets for an attack against the application.</p><p> - Potential vulnerabilities on the proxy servers that service the application.</p><p> - The presence or absence of any proxy-based components that might cause attacks against the application to be detected, prevented, or mitigated. </p>
</desc>
<instances>
<instance>
<uri>http://example.com/robots.txt</uri>
<method>GET</method>
<attack>
TRACE, OPTIONS methods with 'Max-Forwards' header. TRACK method.
</attack>
</instance>
<instance>
<uri>http://example.com/</uri>
<method>GET</method>
<attack>
TRACE, OPTIONS methods with 'Max-Forwards' header. TRACK method.
</attack>
</instance>
</instances>
<count>2</count>
<solution>
<p>Disable the 'TRACE' method on the proxy servers, as well as the origin web/application server.</p><p>Disable the 'OPTIONS' method on the proxy servers, as well as the origin web/application server, if it is not required for other purposes, such as 'CORS' (Cross Origin Resource Sharing).</p><p>Configure the web and application servers with custom error pages, to prevent 'fingerprintable' product-specific error pages being leaked to the user in the event of HTTP errors, such as 'TRACK' requests for non-existent pages.</p><p>Configure all proxies, application servers, and web servers to prevent disclosure of the technology and version information in the 'Server' and 'X-Powered-By' HTTP response headers.</p><p></p>
</solution>
<otherinfo>
<p>Using the TRACE, OPTIONS, and TRACK methods, the following proxy servers have been identified between OWASP ZAP and the application/web server: </p><p>- ECSF (dcb/7EC9)</p><p>The following web/application server has been identified: </p><p>- ECSF (dcb/7EA6)</p><p></p>
</otherinfo>
<reference>
<p>https://tools.ietf.org/html/rfc7231#section-5.1.2</p>
</reference>
<cweid>200</cweid>
<wascid>45</wascid>
<sourceid>1</sourceid>
</alertitem>
<alertitem>
<pluginid>10050</pluginid>
<alert>Retrieved from Cache</alert>
<name>Retrieved from Cache</name>
<riskcode>0</riskcode>
<confidence>2</confidence>
<riskdesc>Informational (Medium)</riskdesc>
<desc>
<p>The content was retrieved from a shared cache. If the response data is sensitive, personal or user-specific, this may result in sensitive information being leaked. In some cases, this may even result in a user gaining complete control of the session of another user, depending on the configuration of the caching components in use in their environment. This is primarily an issue where caching servers such as "proxy" caches are configured on the local network. This configuration is typically found in corporate or educational environments, for instance. </p>
</desc>
<instances>
<instance>
<uri>http://example.com/robots.txt</uri>
<method>GET</method>
<evidence>Age: 65629</evidence>
</instance>
<instance>
<uri>http://example.com/sitemap.xml</uri>
<method>GET</method>
<evidence>Age: 567597</evidence>
</instance>
<instance>
<uri>http://example.com/</uri>
<method>GET</method>
<evidence>HIT</evidence>
</instance>
</instances>
<count>3</count>
<solution>
<p>Validate that the response does not contain sensitive, personal or user-specific information. If it does, consider the use of the following HTTP response headers, to limit, or prevent the content being stored and retrieved from the cache by another user:</p><p>Cache-Control: no-cache, no-store, must-revalidate, private</p><p>Pragma: no-cache</p><p>Expires: 0</p><p>This configuration directs both HTTP 1.0 and HTTP 1.1 compliant caching servers to not store the response, and to not retrieve the response (without validation) from the cache, in response to a similar request.</p>
</solution>
<otherinfo>
<p>The presence of the 'Age' header indicates that that a HTTP/1.1 compliant caching server is in use.</p>
</otherinfo>
<reference>
<p>https://tools.ietf.org/html/rfc7234</p><p>https://tools.ietf.org/html/rfc7231</p><p>http://www.w3.org/Protocols/rfc2616/rfc2616-sec13.html (obsoleted by rfc7234)</p>
</reference>
<sourceid>3</sourceid>
</alertitem>
<alertitem>
<pluginid>10038</pluginid>
<alert>Content Security Policy (CSP) Header Not Set</alert>
<name>Content Security Policy (CSP) Header Not Set</name>
<riskcode>1</riskcode>
<confidence>2</confidence>
<riskdesc>Low (Medium)</riskdesc>
<desc>
<p>Content Security Policy (CSP) is an added layer of security that helps to detect and mitigate certain types of attacks, including Cross Site Scripting (XSS) and data injection attacks. These attacks are used for everything from data theft to site defacement or distribution of malware. CSP provides a set of standard HTTP headers that allow website owners to declare approved sources of content that browsers should be allowed to load on that page — covered types are JavaScript, CSS, HTML frames, fonts, images and embeddable objects such as Java applets, ActiveX, audio and video files.</p>
</desc>
<instances>
<instance>
<uri>http://example.com/sitemap.xml</uri>
<method>GET</method>
</instance>
<instance>
<uri>http://example.com/robots.txt</uri>
<method>GET</method>
</instance>
<instance>
<uri>http://example.com/</uri>
<method>GET</method>
</instance>
</instances>
<count>3</count>
<solution>
<p>Ensure that your web server, application server, load balancer, etc. is configured to set the Content-Security-Policy header, to achieve optimal browser support: "Content-Security-Policy" for Chrome 25+, Firefox 23+ and Safari 7+, "X-Content-Security-Policy" for Firefox 4.0+ and Internet Explorer 10+, and "X-WebKit-CSP" for Chrome 14+ and Safari 6+.</p>
</solution>
<reference>
<p>https://developer.mozilla.org/en-US/docs/Web/Security/CSP/Introducing_Content_Security_Policy</p><p>https://www.owasp.org/index.php/Content_Security_Policy</p><p>http://www.w3.org/TR/CSP/</p><p>http://w3c.github.io/webappsec/specs/content-security-policy/csp-specification.dev.html</p><p>http://www.html5rocks.com/en/tutorials/security/content-security-policy/</p><p>http://caniuse.com/#feat=contentsecuritypolicy</p><p>http://content-security-policy.com/</p>
</reference>
<cweid>16</cweid>
<wascid>15</wascid>
<sourceid>3</sourceid>
</alertitem>
<alertitem>
<pluginid>10021</pluginid>
<alert>X-Content-Type-Options Header Missing</alert>
<name>X-Content-Type-Options Header Missing</name>
<riskcode>1</riskcode>
<confidence>2</confidence>
<riskdesc>Low (Medium)</riskdesc>
<desc>
<p>The Anti-MIME-Sniffing header X-Content-Type-Options was not set to 'nosniff'. This allows older versions of Internet Explorer and Chrome to perform MIME-sniffing on the response body, potentially causing the response body to be interpreted and displayed as a content type other than the declared content type. Current (early 2014) and legacy versions of Firefox will use the declared content type (if one is set), rather than performing MIME-sniffing.</p>
</desc>
<instances>
<instance>
<uri>http://example.com/</uri>
<method>GET</method>
<param>X-Content-Type-Options</param>
</instance>
</instances>
<count>1</count>
<solution>
<p>Ensure that the application/web server sets the Content-Type header appropriately, and that it sets the X-Content-Type-Options header to 'nosniff' for all web pages.</p><p>If possible, ensure that the end user uses a standards-compliant and modern web browser that does not perform MIME-sniffing at all, or that can be directed by the web application/web server to not perform MIME-sniffing.</p>
</solution>
<otherinfo>
<p>This issue still applies to error type pages (401, 403, 500, etc.) as those pages are often still affected by injection issues, in which case there is still concern for browsers sniffing pages away from their actual content type.</p><p>At "High" threshold this scanner will not alert on client or server error responses.</p>
</otherinfo>
<reference>
<p>http://msdn.microsoft.com/en-us/library/ie/gg622941%28v=vs.85%29.aspx</p><p>https://www.owasp.org/index.php/List_of_useful_HTTP_headers</p>
</reference>
<cweid>16</cweid>
<wascid>15</wascid>
<sourceid>3</sourceid>
</alertitem>
<alertitem>
<pluginid>10020</pluginid>
<alert>X-Frame-Options Header Not Set</alert>
<name>X-Frame-Options Header Not Set</name>
<riskcode>2</riskcode>
<confidence>2</confidence>
<riskdesc>Medium (Medium)</riskdesc>
<desc>
<p>X-Frame-Options header is not included in the HTTP response to protect against 'ClickJacking' attacks.</p>
</desc>
<instances>
<instance>
<uri>http://example.com/</uri>
<method>GET</method>
<param>X-Frame-Options</param>
</instance>
</instances>
<count>1</count>
<solution>
<p>Most modern Web browsers support the X-Frame-Options HTTP header. Ensure it's set on all web pages returned by your site (if you expect the page to be framed only by pages on your server (e.g. it's part of a FRAMESET) then you'll want to use SAMEORIGIN, otherwise if you never expect the page to be framed, you should use DENY. ALLOW-FROM allows specific websites to frame the web page in supported web browsers).</p>
</solution>
<reference>
<p>https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options</p>
</reference>
<cweid>16</cweid>
<wascid>15</wascid>
<sourceid>3</sourceid>
</alertitem>
</alerts>
</site>
</OWASPZAPReport>
```
