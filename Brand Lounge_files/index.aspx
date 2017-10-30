

<!doctype html>

<html class="no-js" lang="en">

<head>
    <!-- Http request. No Chaching. Set a base url for version control. -->
    <meta http-equiv="Content-type" content="text/html" charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
    <meta http-equiv="Cache-control" content="no-cache">
    <meta http-equiv="pragma" content="no-cache">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
    <!--stops doubletap from zooming, and let the multitouch gestures work.-->
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <!-- Favicon ico -->
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="/favicon_16.png" type="image/png">

    <!-- google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700" rel="stylesheet"> 

    <title>Brand Lounge</title>

    <script>
            //Simple Clickjacking Defense - required by Box for embed (McCann)
            //Cutom header in ISS should batch request before we get here!
            try {
                if (top.location.hostname != self.location.hostname) throw 1;
            } catch (e) {
                top.location.href = self.location.href;
            }
        </script>

        <script>
            /*! grunt-grunticon Stylesheet Loader - v2.1.6 | https://github.com/filamentgroup/grunticon | (c) 2015 Scott Jehl, Filament Group, Inc. | MIT license. */

            ! function () {
                function e(e, t) {
                    function n() {
                        !o && t && (o = !0, t.call(e))
                    }
                    var o;
                    e.addEventListener && e.addEventListener("load", n), e.attachEvent && e.attachEvent("onload", n),
                    "isApplicationInstalled" in navigator && "onloadcssdefined" in e && e.onloadcssdefined(n)
                }! function (e) {
                    "use strict";
                    var t = function (t, n, o) {
                        function r(e) {
                            if (c.body) return e();
                            setTimeout(function () {
                                r(e)
                            })
                        }

                        function a() {
                            d.addEventListener && d.removeEventListener("load", a), d.media = o || "all"
                        }
                        var i, c = e.document,
                        d = c.createElement("link");
                        if (n) i = n;
                        else {
                            var l = (c.body || c.getElementsByTagName("head")[0]).childNodes;
                            i = l[l.length - 1]
                        }
                        var s = c.styleSheets;
                        d.rel = "stylesheet", d.href = t, d.media = "only x", r(function () {
                            i.parentNode.insertBefore(d, n ? i : i.nextSibling)
                        });
                        var u = function (e) {
                            for (var t = d.href, n = s.length; n--;)
                                if (s[n].href === t) return e();
                            setTimeout(function () {
                                u(e)
                            })
                        };
                        return d.addEventListener && d.addEventListener("load", a), d.onloadcssdefined = u, u(a), d
                    };
                    "undefined" != typeof exports ? exports.loadCSS = t : e.loadCSS = t
                }("undefined" != typeof global ? global : this),
                function (t) {
                    var n = function (o, r) {
                        "use strict";
                        if (o && 3 === o.length) {
                            var a = t.navigator,
                            i = t.document,
                            c = t.Image,
                            d = !(!i.createElementNS || !i.createElementNS("http://www.w3.org/2000/svg", "svg")
                                .createSVGRect || !i.implementation.hasFeature(
                                    "http://www.w3.org/TR/SVG11/feature#Image", "1.1") || t.opera && -1 === a.userAgent
                                .indexOf("Chrome") || -1 !== a.userAgent.indexOf("Series40")),
                            l = new c;
                            l.onerror = function () {
                                n.method = "png", n.href = o[2], loadCSS(o[2])
                            }, l.onload = function () {
                                var t = 1 === l.width && 1 === l.height,
                                a = o[t && d ? 0 : t ? 1 : 2];
                                n.method = t && d ? "svg" : t ? "datapng" : "png", n.href = a, e(loadCSS(a), r)
                            }, l.src = "data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw==",
                            i.documentElement.className += " grunticon"
                        }
                    };
                    n.loadCSS = loadCSS, n.onloadCSS = e, t.grunticon = n
                }(this),
                function (e, t) {
                    "use strict";
                    var n, o = t.document,
                    r = function (e) {
                        if (o.attachEvent ? "complete" === o.readyState : "loading" !== o.readyState) e();
                        else {
                            var t = !1;
                            o.addEventListener("readystatechange", function () {
                                t || (t = !0, e())
                            }, !1)
                        }
                    },
                    a = function (e) {
                        return t.document.querySelector('link[href$="' + e + '"]')
                    },
                    i = function (e, t) {
                        if (n && !t) return n;
                        n = {};
                        var o, r, a, i, c, d;
                        if (!(o = e.sheet)) return n;
                        r = o.cssRules ? o.cssRules : o.rules;
                        for (var l = 0; l < r.length; l++) a = r[l].cssText, i = "grunticon:" + r[l].selectorText,
                            (c = a.split(");")[0].match(/US\-ASCII\,([^"']+)/)) && c[1] && (d = decodeURIComponent(
                                c[1]), n[i] = d);
                        return n
                    },
                    c = function (e, t) {
                        var n, r, a, i, c;
                        t ? n = e : (t = e, n = o), i = "data-grunticon-embed";
                        for (var d in t) {
                            c = d.slice("grunticon:".length);
                            try {
                                r = n.querySelectorAll(c)
                            } catch (e) {
                                continue
                            }
                            a = [];
                            for (var l = 0; l < r.length; l++) null !== r[l].getAttribute(i) && a.push(r[l]);
                                if (a.length)
                                    for (l = 0; l < a.length; l++) a[l].innerHTML = t[d], a[l].style.backgroundImage =
                                        "none", a[l].removeAttribute(i)
                                }
                                return a
                            },
                            d = function (t, n) {
                                "svg" === e.method && r(function () {
                                    var o = i(a(e.href));
                                    "function" == typeof n ? (c(t, o), n()) : c(o), "function" == typeof t && t()
                                })
                            };
                            e.embedIcons = c, e.getCSS = a, e.getIcons = i, e.ready = r, e.svgLoadedCallback = d, e.embedSVG =
                            d
                        }(grunticon, this)
                    }();


                    grunticon(["svg/output/icons.data.svg.css", "svg/output/icons.data.png.css",
                        "svg/output/icons.fallback.css"
                        ], grunticon.svgLoadedCallback);
                    </script>

                    <!-- CSS: 3rd Party -->
                    <link rel="stylesheet" type="text/css" href="sass/maccann.css" />
                    <link rel="stylesheet" type="text/css" href="css/libs/jquery.multiselect.css" />
                    <link rel="stylesheet" type="text/css" href="css/libs/jquery.multiselect.filter.css" />
                    <link rel="stylesheet" type="text/css" href="css/libs/jquery.listSelect.css" />
                    <link rel="stylesheet" type="text/css" href="css/libs/tinyeditor.css" />
                    <link rel="stylesheet" type="text/css" href="css/libs/ticker-style.css" />
                    <link rel="stylesheet" type="text/css" href="css/libs/jquery.checkList.css" />
                    <link rel="stylesheet" type="text/css" href="css/libs/jquery-ui-1.8.20.custom.css" />
                    <link rel="stylesheet" type="text/css" href="css/libs/ddmenu.css" />
                    <link rel="stylesheet" type="text/css" href="js/libs/jquery.fineuploader-3.7.1/fineuploader-3.7.1.css" />
                    <link href="resources/jquery.mmenu/jquery.mmenu.all.css" type="text/css" rel="stylesheet" />


                    <!-- CSS: SD -->
                    <link rel="stylesheet" type="text/css" href="css/mccann-global.css?v=1.28" />


                    <!-- only here for testing -->
         <!--            <link rel="stylesheet" type="text/css" href="scss/skins/default/skin.css" /> -->

                    <link href="css/mccann/light-theme.css?v=1.28" rel="stylesheet" type="text/css" /><link href="css/mccann/skin/theme-2.css?v=1.28" rel="stylesheet" type="text/css" />
                    <!-- Google Analytics -->
                    <script>
                        (function (i, s, o, g, r, a, m) {
                            i['GoogleAnalyticsObject'] = r;
                            i[r] = i[r] || function () {
                                (i[r].q = i[r].q || []).push(arguments)
                            }, i[r].l = 1 * new Date();
                            a = s.createElement(o),
                            m = s.getElementsByTagName(o)[0];
                            a.async = 1;
                            a.src = g;
                            m.parentNode.insertBefore(a, m)
                        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

                        ga('create', 'UA-47064718-1', 'brand-lounge.org');
                        ga('send', 'pageview');
                    </script>
                    <!-- End Analytics -->
                    
                    <script type="text/javascript">
                            //handle 401 and 500 error from server if session lost
                            $(document).ajaxError(function (e, jqXHR, ajaxSettings, thrownError) {
                                if (jqXHR.status == '401' || jqXHR.status == '500' || jqXHR.statusText ==
                                    "Unauthorized") {

                                    sd.component.messageBox.action({
                                        title: "Session Expired",
                                        text: "Your session has expired. <br> <br> Please click OK to login again.",
                                        btn1: "Ok",
                                        btn1callback: location.reload
                                    });
                            }
                        });
                    </script>
                    

                </head>

                <body>
                    <!-- loading svg defs for icons -->
                    <div style="height:0;">
                        <svg xmlns="http://www.w3.org/2000/svg"><symbol viewBox="0 0 36 32" id="shape-chat">  <path d="M15 4c-1.583 0-3.112 0.248-4.543 0.738-1.341 0.459-2.535 1.107-3.547 1.926-1.876 1.518-2.91 3.463-2.91 5.474 0 1.125 0.315 2.217 0.935 3.247 0.646 1.073 1.622 2.056 2.821 2.842 0.951 0.624 1.592 1.623 1.761 2.748 0.028 0.187 0.051 0.375 0.068 0.564 0.085-0.079 0.169-0.16 0.254-0.244 0.754-0.751 1.771-1.166 2.823-1.166 0.167 0 0.335 0.011 0.503 0.032 0.605 0.077 1.223 0.116 1.836 0.116 1.583 0 3.112-0.248 4.543-0.738 1.341-0.459 2.535-1.107 3.547-1.926 1.876-1.518 2.91-3.463 2.91-5.474s-1.033-3.956-2.91-5.474c-1.012-0.819-2.206-1.467-3.547-1.926-1.431-0.49-2.96-0.738-4.543-0.738zM15 0v0c8.284 0 15 5.435 15 12.139s-6.716 12.139-15 12.139c-0.796 0-1.576-0.051-2.339-0.147-3.222 3.209-6.943 3.785-10.661 3.869v-0.785c2.008-0.98 3.625-2.765 3.625-4.804 0-0.285-0.022-0.564-0.063-0.837-3.392-2.225-5.562-5.625-5.562-9.434 0-6.704 6.716-12.139 15-12.139zM31.125 27.209c0 1.748 1.135 3.278 2.875 4.118v0.673c-3.223-0.072-6.181-0.566-8.973-3.316-0.661 0.083-1.337 0.126-2.027 0.126-2.983 0-5.732-0.805-7.925-2.157 4.521-0.016 8.789-1.464 12.026-4.084 1.631-1.32 2.919-2.87 3.825-4.605 0.961-1.84 1.449-3.799 1.449-5.825 0-0.326-0.014-0.651-0.039-0.974 2.268 1.873 3.664 4.426 3.664 7.24 0 3.265-1.88 6.179-4.82 8.086-0.036 0.234-0.055 0.474-0.055 0.718z"/> </symbol><symbol viewBox="0 0 24 24" id="shape-download"> <path d="M19 9h-4V3H9v6H5l7 7 7-7zM5 18v2h14v-2H5z"/> <path d="M0 0h24v24H0z" fill="none"/> </symbol><symbol viewBox="0 0 32 32" id="shape-facebook">  <path d="M19 6h5v-6h-5c-3.86 0-7 3.14-7 7v3h-4v6h4v16h6v-16h5l1-6h-6v-3c0-0.542 0.458-1 1-1z"/> </symbol><symbol viewBox="0 0 32 32" id="shape-link">  <path d="M13.757 19.868c-0.416 0-0.832-0.159-1.149-0.476-2.973-2.973-2.973-7.81 0-10.783l6-6c1.44-1.44 3.355-2.233 5.392-2.233s3.951 0.793 5.392 2.233c2.973 2.973 2.973 7.81 0 10.783l-2.743 2.743c-0.635 0.635-1.663 0.635-2.298 0s-0.635-1.663 0-2.298l2.743-2.743c1.706-1.706 1.706-4.481 0-6.187-0.826-0.826-1.925-1.281-3.094-1.281s-2.267 0.455-3.094 1.281l-6 6c-1.706 1.706-1.706 4.481 0 6.187 0.635 0.635 0.635 1.663 0 2.298-0.317 0.317-0.733 0.476-1.149 0.476z"/> <path d="M8 31.625c-2.037 0-3.952-0.793-5.392-2.233-2.973-2.973-2.973-7.81 0-10.783l2.743-2.743c0.635-0.635 1.664-0.635 2.298 0s0.635 1.663 0 2.298l-2.743 2.743c-1.706 1.706-1.706 4.481 0 6.187 0.826 0.826 1.925 1.281 3.094 1.281s2.267-0.455 3.094-1.281l6-6c1.706-1.706 1.706-4.481 0-6.187-0.635-0.635-0.635-1.663 0-2.298s1.663-0.635 2.298 0c2.973 2.973 2.973 7.81 0 10.783l-6 6c-1.44 1.44-3.355 2.233-5.392 2.233z"/> </symbol><symbol viewBox="0 0 24 24" id="shape-mail"> <path d="M0 0h24v24H0z" fill="none"/> <path d="M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 14H4V8l8 5 8-5v10zm-8-7L4 6h16l-8 5z"/> </symbol><symbol viewBox="0 0 24 24" id="shape-mcann-delete-icon"> <path d="M6 19c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2V7H6v12zM19 4h-3.5l-1-1h-5l-1 1H5v2h14V4z"/> <path d="M0 0h24v24H0z" fill="none"/> </symbol><symbol viewBox="0 0 24 24" id="shape-mcann-edit-icon"> <g> <path d="M14.8,4.2L19.6,9L7.4,21.3l-4.8-4.8L14.8,4.2z M23.3,3l-2.2-2.2c-0.8-0.8-2.2-0.8-3,0L16,2.9l4.8,4.8l2.4-2.4
		C23.9,4.7,23.9,3.6,23.3,3z M0.1,23.2C0,23.6,0.3,24,0.7,23.9l5.4-1.3l-4.8-4.8L0.1,23.2z"/> </g> </symbol><symbol viewBox="0 0 24 24" id="shape-mcann-exclaimation-icon"> <style type="text/css"> .st0{fill:none;} </style> <path class="st0" d="M0,0h24v24H0V0z"/> <path d="M12,0.9C5.9,0.9,0.9,5.9,0.9,12s5,11.1,11.1,11.1s11.1-5,11.1-11.1S18.1,0.9,12,0.9z M13.4,18.9h-2.9v-3.2h2.9V18.9z
	 M13.4,13.3h-2.9V3.7h2.9V13.3z"/> </symbol><symbol viewBox="0 0 24 24" id="shape-mcann-favorite-icon"> <style type="text/css"> .st0{fill:none;} </style> <path class="st0" d="M0,0h24v24H0V0z"/> <path d="M12,21.4L10.6,20C5.4,15.4,2,12.3,2,8.5C2,5.4,4.4,3,7.5,3c1.7,0,3.4,0.8,4.5,2.1C13.1,3.8,14.8,3,16.5,3
	C19.6,3,22,5.4,22,8.5c0,3.8-3.4,6.9-8.6,11.5L12,21.4z"/> </symbol><symbol viewBox="0 0 24 24" id="shape-mcann-linkedin-icon"> <style type="text/css"> .st0{fill:none;} </style> <path class="st0" d="M0,0h24v24H0V0z"/> <path d="M12,0.9C5.9,0.9,0.9,5.9,0.9,12s5,11.1,11.1,11.1s11.1-5,11.1-11.1S18.1,0.9,12,0.9z M7.6,6.3c0.6,0,1.1,0.5,1.1,1.1
	c0,0.6-0.5,1.1-1.1,1.1C7,8.6,6.5,8,6.5,7.4C6.5,6.8,7,6.3,7.6,6.3z M8.8,16.8H6.5V9.5h2.3V16.8z M17.5,16.8h-2.3V13
	c0-2.3-2.8-2.1-2.8,0v3.8h-2.3V9.5h2.3v1c1-1.8,5.1-1.9,5.1,1.7V16.8z"/> </symbol><symbol viewBox="0 0 24 24" id="shape-mcann-list-icon"> <style type="text/css"> .st0{fill:none;} </style> <path class="st0" d="M0,0h24v24H0V0z"/> <g> <rect x="0.5" y="0.4" width="5.7" height="5.7"/> <rect x="7.5" y="0.4" width="15.2" height="2.4"/> <rect x="7.5" y="3.4" width="9.6" height="2.4"/> </g> <g> <rect x="0.5" y="8.9" width="5.7" height="5.7"/> <rect x="7.5" y="8.9" width="15.2" height="2.4"/> <rect x="7.5" y="11.9" width="9.6" height="2.4"/> </g> <g> <rect x="0.5" y="17.4" width="5.7" height="5.7"/> <rect x="7.5" y="17.4" width="15.2" height="2.4"/> <rect x="7.5" y="20.4" width="9.6" height="2.4"/> </g> </symbol><symbol viewBox="0 0 24 24" id="shape-mcann-location-pin-icon"> <style type="text/css"> .st0{fill:none;} </style> <path d="M12.2,1.4c-4.1,0-7.5,3.3-7.5,7.5c0,5.6,7.5,13.7,7.5,13.7s7.5-8.1,7.5-13.7C19.7,4.8,16.4,1.4,12.2,1.4z M12.2,11.4
	c-1.4,0-2.5-1.1-2.5-2.5s1.1-2.5,2.5-2.5s2.5,1.1,2.5,2.5S13.6,11.4,12.2,11.4z"/> <path class="st0" d="M0,0h24v24H0V0z"/> </symbol><symbol viewBox="0 0 24 24" id="shape-mcann-mail-icon"> <style type="text/css"> .st0{fill:none;} </style> <path class="st0" d="M0,0h24v24H0V0z"/> <path d="M12,0.9C5.9,0.9,0.9,5.9,0.9,12s5,11.1,11.1,11.1s11.1-5,11.1-11.1S18.1,0.9,12,0.9z M18.5,16.2c0,0.3-0.1,0.6-0.3,0.8
	s-0.5,0.3-0.8,0.3H6.7c-0.3,0-0.6-0.1-0.8-0.3s-0.3-0.5-0.3-0.8v-5.7c0.2,0.2,0.5,0.4,0.7,0.6c1.7,1.2,2.9,2,3.6,2.5
	c0.3,0.2,0.5,0.4,0.7,0.5s0.4,0.2,0.7,0.3c0.3,0.1,0.5,0.2,0.8,0.2h0c0.2,0,0.5-0.1,0.8-0.2c0.3-0.1,0.5-0.2,0.7-0.3
	s0.4-0.3,0.7-0.5c0.8-0.6,2-1.4,3.6-2.5c0.3-0.2,0.5-0.4,0.7-0.6V16.2z M18.1,9.4c-0.2,0.3-0.5,0.6-0.9,0.9c-1.8,1.3-2.9,2-3.4,2.3
	c0,0-0.2,0.1-0.3,0.2c-0.2,0.1-0.3,0.2-0.4,0.3c-0.1,0.1-0.2,0.1-0.4,0.2c-0.1,0.1-0.3,0.2-0.4,0.2c-0.1,0-0.3,0.1-0.4,0.1h0
	c-0.1,0-0.2,0-0.4-0.1c-0.1,0-0.3-0.1-0.4-0.2c-0.1-0.1-0.3-0.2-0.4-0.2c-0.1-0.1-0.2-0.2-0.4-0.3c-0.2-0.1-0.3-0.2-0.3-0.2
	c-0.4-0.3-1.1-0.7-1.9-1.3c-0.8-0.6-1.3-0.9-1.5-1C6.5,10.1,6.2,9.8,6,9.5c-0.3-0.4-0.4-0.7-0.4-1c0-0.4,0.1-0.7,0.3-0.9
	c0.2-0.3,0.5-0.4,0.9-0.4h10.6c0.3,0,0.6,0.1,0.8,0.3c0.2,0.2,0.3,0.5,0.3,0.8C18.5,8.7,18.4,9.1,18.1,9.4z"/> </symbol><symbol viewBox="0 0 24 24" id="shape-mcann-map-icon"> <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z"/> <path d="M0 0h24v24H0z" fill="none"/> </symbol><symbol viewBox="0 0 24 24" id="shape-mcann-question-icon"> <style type="text/css"> .st0{fill:none;} </style> <path class="st0" d="M0,0h24v24H0V0z"/> <g> <path d="M12.1,1.4C5.9,1.4,1,6.4,1,12.5c0,6.1,5,11.1,11.1,11.1c6.1,0,11.1-5,11.1-11.1C23.2,6.4,18.2,1.4,12.1,1.4z M12.1,21.9
		c-5.2,0-9.4-4.2-9.4-9.4s4.2-9.4,9.4-9.4s9.4,4.2,9.4,9.4S17.3,21.9,12.1,21.9z"/> <g> <path d="M10.1,14c0-0.6,0.1-1.1,0.3-1.5s0.6-0.8,1.1-1.2c0.2-0.1,0.4-0.2,0.6-0.3s0.5-0.3,0.7-0.5c0.2-0.2,0.4-0.4,0.6-0.6
			c0.2-0.2,0.2-0.5,0.2-0.8c0-0.2,0-0.4-0.1-0.6c-0.1-0.2-0.2-0.3-0.4-0.5c-0.1-0.1-0.3-0.2-0.5-0.3s-0.4-0.1-0.6-0.1
			c-0.2,0-0.5,0-0.7,0.1S11,7.9,10.9,8s-0.3,0.3-0.4,0.4c-0.1,0.2-0.2,0.3-0.3,0.5l-1.5-1C8.8,7.5,9,7.2,9.2,7
			C9.5,6.7,9.7,6.5,10,6.3s0.6-0.3,1-0.4c0.4-0.1,0.7-0.1,1.1-0.1c0.4,0,0.9,0.1,1.3,0.2c0.4,0.1,0.8,0.3,1.1,0.6s0.6,0.6,0.8,1
			C15.6,8,15.7,8.5,15.7,9c0,0.4,0,0.7-0.1,1c-0.1,0.3-0.2,0.5-0.4,0.8c-0.2,0.2-0.3,0.4-0.6,0.6c-0.2,0.2-0.5,0.4-0.7,0.5
			c-0.2,0.1-0.5,0.3-0.7,0.4c-0.2,0.1-0.4,0.3-0.6,0.4c-0.2,0.2-0.3,0.3-0.5,0.5C12.1,13.4,12,13.7,12,14H10.1z M10.2,17.9v-2.3H12
			v2.3H10.2z"/> </g> </g> </symbol><symbol viewBox="0 0 24 24" id="shape-mcann-settings-icon"> <style type="text/css"> .st0{fill:none;} </style> <path class="st0" d="M0,0h24v24H0V0z"/> <path d="M19.4,13c0-0.3,0.1-0.6,0.1-1s0-0.7-0.1-1l2.1-1.6c0.2-0.1,0.2-0.4,0.1-0.6l-2-3.5c-0.1-0.2-0.4-0.3-0.6-0.2l-2.5,1
	c-0.5-0.4-1.1-0.7-1.7-1l-0.4-2.7C14.5,2.2,14.3,2,14,2h-4C9.8,2,9.5,2.2,9.5,2.4L9.1,5.1C8.5,5.3,8,5.7,7.4,6.1l-2.5-1
	C4.7,5,4.5,5.1,4.3,5.3l-2,3.5C2.2,8.9,2.3,9.2,2.5,9.4L4.6,11c0,0.3-0.1,0.6-0.1,1s0,0.7,0.1,1l-2.1,1.6c-0.2,0.1-0.2,0.4-0.1,0.6
	l2,3.5C4.5,18.9,4.7,19,5,18.9l2.5-1c0.5,0.4,1.1,0.7,1.7,1l0.4,2.6c0,0.2,0.2,0.4,0.5,0.4h4c0.3,0,0.5-0.2,0.5-0.4l0.4-2.6
	c0.6-0.3,1.2-0.6,1.7-1l2.5,1c0.2,0.1,0.5,0,0.6-0.2l2-3.5c0.1-0.2,0.1-0.5-0.1-0.6L19.4,13z M12,15.5c-1.9,0-3.5-1.6-3.5-3.5
	s1.6-3.5,3.5-3.5s3.5,1.6,3.5,3.5S13.9,15.5,12,15.5z"/> </symbol><symbol viewBox="0 0 24 24" id="shape-mcann-skype-icon"> <style type="text/css"> .st0{fill:none;} </style> <path class="st0" d="M0,0h24v24H0V0z"/> <g> <path d="M14.5,12.1c-0.6-0.4-1.2-0.5-2-0.7c-0.1,0-0.2,0-0.3-0.1c-1.7-0.4-1.7-0.7-1.6-1.1c0-0.5,0.8-0.7,1.3-0.7
		c0.8,0.1,1.4,0.4,2,1c0.3,0.4,0.9,0.4,1.3,0c0.4-0.3,0.4-0.9,0-1.3c-0.9-0.9-1.9-1.4-3.1-1.5l-0.1,0C10.5,7.6,8.9,8.4,8.8,10l0,0
		c-0.1,2.2,1.8,2.7,3,3c0.1,0,0.2,0,0.3,0.1c1.5,0.4,1.7,0.6,1.7,1l0,0c0,0.2-0.1,0.4-0.2,0.5c-0.3,0.3-0.8,0.4-1.4,0.4
		c-0.8,0-1.5-0.4-2-1c-0.3-0.4-0.9-0.5-1.3-0.2c-0.4,0.3-0.5,0.9-0.2,1.3c0.6,0.7,1.6,1.6,3.3,1.7l0,0c0.1,0,0.1,0,0.2,0
		c1,0,1.9-0.3,2.5-0.9c0.5-0.5,0.8-1.1,0.8-1.8C15.6,13.3,15.2,12.6,14.5,12.1z"/> <path d="M12,0.9C5.9,0.9,0.9,5.9,0.9,12s5,11.1,11.1,11.1s11.1-5,11.1-11.1S18.1,0.9,12,0.9z M15,19.1c-0.6,0-1.3-0.2-1.8-0.5
		c-0.4,0.1-0.7,0.1-1.1,0.1c-3.5,0-6.3-2.9-6.3-6.5c0-0.4,0-0.8,0.1-1.2c-0.3-0.5-0.5-1.2-0.5-1.8c0-2,1.6-3.6,3.7-3.6
		c0.6,0,1.1,0.1,1.6,0.3c0.5-0.1,1-0.2,1.5-0.2c3.5,0,6.3,2.9,6.3,6.5c0,0.5-0.1,1-0.2,1.5c0.3,0.5,0.4,1.1,0.4,1.7
		C18.6,17.5,17,19.1,15,19.1z"/> </g> </symbol><symbol viewBox="0 0 24 24" id="shape-mcann-slack-icon"> <style type="text/css"> .st0{fill:none;} </style> <path class="st0" d="M0,0h24v24H0V0z"/> <g> <path d="M12,0.9C5.9,0.9,0.9,5.9,0.9,12s5,11.1,11.1,11.1s11.1-5,11.1-11.1S18.1,0.9,12,0.9z M19,13.8l-0.7,0.3l0.3,0.7
		c0.3,0.7,0,1.5-0.7,1.8c-0.7,0.3-1.5,0-1.8-0.7l-0.3-0.7L12,16.9l0.3,0.7c0.3,0.7,0,1.5-0.7,1.8c-0.7,0.3-1.5,0-1.8-0.7L9.5,18
		l-0.7,0.3c-0.7,0.3-1.5,0-1.8-0.7c-0.3-0.7,0-1.5,0.7-1.8l0.7-0.3l-1.7-3.8L6,12c-0.7,0.3-1.5,0-1.8-0.7c-0.3-0.7,0-1.5,0.7-1.8
		l0.7-0.3L5.2,8.5C4.9,7.8,5.2,7,5.9,6.7c0.7-0.3,1.5,0,1.8,0.7L8,8l3.8-1.7l-0.3-0.7c-0.3-0.7,0-1.5,0.7-1.8c0.7-0.3,1.5,0,1.8,0.7
		l0.3,0.7l0.7-0.3c0.7-0.3,1.5,0,1.8,0.7c0.3,0.7,0,1.5-0.7,1.8l-0.7,0.3l1.7,3.8l0.7-0.3c0.7-0.3,1.5,0,1.8,0.7
		C20.1,12.6,19.7,13.5,19,13.8z"/> <rect x="9.8" y="9.5" transform="matrix(0.9129 -0.4082 0.4082 0.9129 -3.6999 5.8862)" width="4.2" height="4.2"/> </g> </symbol><symbol viewBox="0 0 24 24" id="shape-mcann-thin-close-icon"> <g> <path d="M13.5,12l10.1-9.9c0.4-0.4,0.4-1.1,0-1.5s-1.1-0.4-1.5,0L12,10.5L1.9,0.6c-0.4-0.4-1.1-0.4-1.5,0s-0.4,1.1,0,1.5L10.5,12
		L0.4,22c-0.4,0.4-0.4,1.1,0,1.5c0.2,0.2,0.7,0.2,0.9,0.2s0.7,0,0.7-0.2L12,13.5l10.1,9.9c0.2,0.2,0.7,0.2,0.9,0.2s0.7,0,0.7-0.2
		c0.4-0.4,0.4-1.1,0-1.5L13.5,12z"/> </g> </symbol><symbol viewBox="0 0 24 24" id="shape-mcann-thumb-icon"> <style type="text/css"> .st0{fill:none;} </style> <path class="st0" d="M0,0h24v24H0V0z"/> <rect x="0.5" y="0.4" width="5.7" height="5.7"/> <rect x="9.1" y="0.4" width="5.7" height="5.7"/> <rect x="17.7" y="0.4" width="5.7" height="5.7"/> <rect x="0.5" y="8.9" width="5.7" height="5.7"/> <rect x="9.1" y="8.9" width="5.7" height="5.7"/> <rect x="17.7" y="8.9" width="5.7" height="5.7"/> <rect x="0.5" y="17.4" width="5.7" height="5.7"/> <rect x="9.1" y="17.4" width="5.7" height="5.7"/> <rect x="17.7" y="17.4" width="5.7" height="5.7"/> </symbol><symbol viewBox="0 0 24 24" id="shape-mcann-user-pin-chat-icon"> <path fill="currentcolor" d="M16.9,7.5l-1.8,1.8l0-6.5C14.2,2.3,13.1,2,12,2C8.1,2,5,5.1,5,9c0,5.3,7,13,7,13s7-7.8,7-13
		c0-0.5-0.1-1-0.2-1.5H16.9z M12,4c1.1,0,2,0.9,2,2c0,1.1-0.9,2-2,2s-2-0.9-2-2C10,4.9,10.9,4,12,4z M12,14c-1.7,0-3.1-0.8-4-2.2
		c0-1.3,2.7-2,4-2s4,0.7,4,2C15.1,13.2,13.7,14,12,14z"/> <path fill="currentcolor" d="M22.2,0.3h-5.5c-0.4,0-0.7,0.3-0.7,0.7l0,6.2l1.4-1.4h4.8c0.4,0,0.7-0.3,0.7-0.7V0.9
		C22.9,0.6,22.6,0.3,22.2,0.3z M18.4,3.4h-0.7V2.7h0.7V3.4z M19.8,3.4h-0.7V2.7h0.7V3.4z M21.2,3.4h-0.7V2.7h0.7V3.4z"/> </symbol><symbol viewBox="0 0 59 59" id="shape-mccan-trash-icon"><path d="M29.5,51a1,1,0,0,0,1-1V17a1,1,0,0,0-2,0V50A1,1,0,0,0,29.5,51Z"/><path d="M19.5,51a1,1,0,0,0,1-1V17a1,1,0,0,0-2,0V50A1,1,0,0,0,19.5,51Z"/><path d="M39.5,51a1,1,0,0,0,1-1V17a1,1,0,0,0-2,0V50A1,1,0,0,0,39.5,51Z"/><path d="M52.5,6h-14a8,8,0,0,0-1.81-4.71A4.23,4.23,0,0,0,33.5,0h-10a4.23,4.23,0,0,0-3.14,1.29A8,8,0,0,0,18.54,6H6.5a1,1,0,0,0,0,2h2l1.91,46a4.85,4.85,0,0,0,4.91,5H43.64a4.85,4.85,0,0,0,4.91-5L50.46,8h2a1,1,0,0,0,0-2ZM21.79,2.68A2.27,2.27,0,0,1,23.5,2h10a2.27,2.27,0,0,1,1.71.68A5.88,5.88,0,0,1,36.45,6H20.55A5.89,5.89,0,0,1,21.79,2.68ZM46.54,54a2.9,2.9,0,0,1-2.91,3H15.36c-2.73,0-2.9-2.72-2.91-3L10.54,8H48.46Z"/></symbol><symbol viewBox="0 0 32 32" id="shape-mccann-burger-icon"><path d="M4,10H28a2,2,0,0,0,0-4H4a2,2,0,0,0,0,4Zm24,4H4a2,2,0,0,0,0,4H28a2,2,0,0,0,0-4Zm0,8H4a2,2,0,0,0,0,4H28a2,2,0,0,0,0-4Z"/></symbol><symbol viewBox="0 0 32 32" id="shape-mccann-cloud-upload"><g transform="translate(96 0)"><path d="M-68.072,13.055C-68.023,12.707-68,12.354-68,12c0-4.41-3.589-8-8-8c-2.56,0-4.908,1.208-6.396,3.189   C-82.919,7.063-83.455,7-84,7c-3.859,0-7,3.141-7,7c0,0.098,0.002,0.191,0.006,0.288C-93.888,15.146-96,17.832-96,21   c0,3.857,3.141,7,7,7h17c4.411,0,8-3.588,8-8C-64,17.083-65.604,14.449-68.072,13.055z M-72,26h-17.001c-2.762,0-5-2.238-5-5   c0-2.763,2.238-5,5-5c0.152,0,0.298,0.031,0.445,0.045c-0.281-0.625-0.445-1.314-0.445-2.045c0-2.763,2.238-5,5-5   c0.902,0,1.738,0.258,2.47,0.675C-80.626,7.516-78.49,6-76.001,6C-72.687,6-70,8.686-70,12c0,0.788-0.162,1.538-0.439,2.229   c2.554,0.69,4.439,3,4.439,5.771C-66,23.313-68.685,26-72,26z"/><path d="M-86.001,18h4v6h4v-6h4l-6-6L-86.001,18z"/></g></symbol><symbol viewBox="0 0 24 24" id="shape-mobile"> <path d="M0 0h24v24H0z" fill="none"/> <path d="M17 1.01L7 1c-1.1 0-2 .9-2 2v18c0 1.1.9 2 2 2h10c1.1 0 2-.9 2-2V3c0-1.1-.9-1.99-2-1.99zM17 19H7V5h10v14z"/> </symbol><symbol viewBox="0 0 379.794 379.794" id="shape-permissions"> <path d="M305.901,163.69v-47.686C305.901,52.039,253.862,0,189.897,0S73.893,52.039,73.893,116.004v47.236
	c-7.213,2.752-14.349,8.96-14.349,21.258v64.942c0,71.877,58.477,130.354,130.354,130.354S320.25,321.317,320.25,249.44v-64.942
	C320.25,172.829,313.289,166.643,305.901,163.69z M214.673,303.232c0.408,2.162-1.058,3.931-3.258,3.931H168.87
	c-2.2,0-3.666-1.769-3.258-3.931l6.814-36.114c-5.201-4.743-8.465-11.574-8.465-19.167c0-14.324,11.612-25.936,25.936-25.936
	s25.936,11.612,25.936,25.936c0,7.387-3.093,14.047-8.049,18.771L214.673,303.232z M265.901,161.375H113.893v-45.371
	c0-41.908,34.095-76.004,76.004-76.004c41.908,0,76.004,34.096,76.004,76.004V161.375z"/>                </symbol><symbol viewBox="0 0 24 24" id="shape-phone"> <path d="M0 0h24v24H0z" fill="none"/> <path d="M6.62 10.79c1.44 2.83 3.76 5.14 6.59 6.59l2.2-2.2c.27-.27.67-.36 1.02-.24 1.12.37 2.33.57 3.57.57.55 0 1 .45 1 1V20c0 .55-.45 1-1 1-9.39 0-17-7.61-17-17 0-.55.45-1 1-1h3.5c.55 0 1 .45 1 1 0 1.25.2 2.45.57 3.57.11.35.03.74-.25 1.02l-2.2 2.2z"/> </symbol><symbol viewBox="0 0 24 24" id="shape-preview"> <path d="M0 0h24v24H0z" fill="none"/> <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"/> </symbol><symbol viewBox="0 0 24 24" id="shape-sort"> <path d="M3 18h6v-2H3v2zM3 6v2h18V6H3zm0 7h12v-2H3v2z"/> <path d="M0 0h24v24H0z" fill="none"/> </symbol><symbol viewBox="0 0 448 448" id="shape-trash"> <g> <g> <path d="M10.667,85.333V128h25.6l38.4,320h298.667l38.4-320h25.6V85.333H10.667z M334.933,405.333H113.067L78.933,128h288
			L334.933,405.333z"/> </g> </g> <g> <g> <rect x="138.667" width="170.667" height="42.667"/> </g> </g> <g> <g> <g> <rect x="160" y="192" width="42.667" height="149.333"/> <rect x="245.333" y="192" width="42.667" height="149.333"/> </g> </g> </g>                </symbol><symbol viewBox="0 0 32 32" id="shape-twitter">  <path d="M32 7.075c-1.175 0.525-2.444 0.875-3.769 1.031 1.356-0.813 2.394-2.1 2.887-3.631-1.269 0.75-2.675 1.3-4.169 1.594-1.2-1.275-2.906-2.069-4.794-2.069-3.625 0-6.563 2.938-6.563 6.563 0 0.512 0.056 1.012 0.169 1.494-5.456-0.275-10.294-2.888-13.531-6.862-0.563 0.969-0.887 2.1-0.887 3.3 0 2.275 1.156 4.287 2.919 5.463-1.075-0.031-2.087-0.331-2.975-0.819 0 0.025 0 0.056 0 0.081 0 3.181 2.263 5.838 5.269 6.437-0.55 0.15-1.131 0.231-1.731 0.231-0.425 0-0.831-0.044-1.237-0.119 0.838 2.606 3.263 4.506 6.131 4.563-2.25 1.762-5.075 2.813-8.156 2.813-0.531 0-1.050-0.031-1.569-0.094 2.913 1.869 6.362 2.95 10.069 2.95 12.075 0 18.681-10.006 18.681-18.681 0-0.287-0.006-0.569-0.019-0.85 1.281-0.919 2.394-2.075 3.275-3.394z"/> </symbol></svg>
                    </div>



                    <div id="jquery-wrapped-fine-uploader" class="fine-uploader"></div>

                    <div class="fullscreen flex flex-1 minheight flex-column">

                        <!-- Header section, menus search etc  -->
                        <header id="header" class="header main-header w-12"></header>

                        <!-- Main section, all the content load in here -->

                        <section id="mainSection" class="main-section theme-bg flex flex-auto flex-column">

                            <!-- Background -->
                            <!--<div class="slideshow-wrapper jsCarouselContainer" style="display:none"> </div>-->

                            <%--<div class="jsCarouselContainer1 cf">--%>
                                <%--<div class="slideshow-wrapper">--%>
                                    <%--<div class="preloader"></div>--%>
                                    <%--<ul data-orbit data-options="animation: 'fade'; slide_number: false; bullets:false;  pause_on_hover: false;"></ul>--%>
                                <%--</div>--%>
                            <%--</div>--%>

                            <%--<section id="mc-back" class="mc-backround">--%>
                                <%--<div class="call-to-action flex justify-center self-center pa-all-half" style="display:none">--%>
                                    <%--<span class="action-link flex"></span>--%>
                                <%--</div>--%>
                            <%--</section>--%>
                            <%--<div class="mc-bg theme-background">--%>
                                <%--<div id="sectionContainer" class="section-container flex-1 flex-wrap"></div>--%>
                            <%--</div>--%>
                        </section>

                        <div></div>


                        <!-- Footer -->
                        <footer id="footer" class="footer w-12" style="background-color:black">
                            <div class="max-width  flex flex-1 justify-between">
                                <div class="flex flex-column footer-col exploreSite">
                                    <h5>EXPLORE THE SITE</h5>
                                </div>
                                <div class="flex flex-column footer-col quickLinks">
                                    <h5>QUICK LINKS</h5>
                                    <div class="flex flex-1 ma-t-half js-qlinks">
                                    </div>
                                </div>
                                <div class="flex flex-column footer-col">
                                    <h5>THE BRAND LOUNGE</h5>
                                    <div class="flex flex-column ma-t-half">
                                        <span>Work better as a local or global team. Brand Lounge is a dynamic CMS environment for sharing information, publishing the latest news, and creating a connected community. </span>
                                        <button class="justify-end ma-b-half button brand__outline ma-t-1 w-8 js-fAbout">ABOUT BRAND LOUNGE</button>
                                    </div>
                                </div>
                            </div>
                        </footer>
                        <div id="loader" class="loader-wrapper loader-overlay flex flex-1 w-12 minheight justify-center">
                            <div class="spinner-3 centerxy">
                                <div class="double-bounce1"></div>
                                <div class="double-bounce2"></div>
                            </div>
                        </div>
                    </div>


                    <!-- ??? -->
                    <nav id="mainNavigation"></nav>

                    <!-- ???? -->
                    <div id="movearea" class=" movearea topleft"></div>

                    <!-- Table Top -->
                    <div id="tabletopDiv" class="tabletopDiv topleft fill"></div>

                    <!-- HTML previewer -->
                    <div id="previewer" class="previewer topleft fill"></div>

                    <!-- New previewer -->
                    <div id="previewContainer"></div>

                    <!-- MessageBox -->
                    <div class="modalOverlay"></div>
                    <div id="messageBox"></div>

                    <!-- iFrame -->
                    <div class="modal-overlay-iframe"></div>
                    <div class="close-iframe brand-color">
                        <button class="standard-mc-btn left add-edit brand-button"> CLOSE X</button>
                    </div>
                    <div id="homeIFrame" class="overlay">
                        <div class="iFrameContainer "></div>
                    </div>

                    <!-- Training Overlay -->

                    <div id="overlay" class="overlay w-12">
                        <div id="overlayBackground" class="overlayBackground"></div>
                        <div class="overlay-buttons w-12 justify-between">
                            <button id="overlayPaging" class="overlayPaging brand medium hover-icon w-3">
                                <span>CONTINUE INTRODUCTION </span> 
                            </button>
                            <div class="overlayCancel brand-bg w-3 text-center">
                                <label class="text-on-brand">
                                    <input type="checkbox" id="overlayCancel" class="ma-r-1"/> Don't show this tutorial overlay again</div>
                                </label>
                                <button id="overlayClose" class="overlayClose brand medium hover-icon w-3"><span>Close Help & Start Using the Tool</span></button>
                            </div>
                        </div>

                        <div id="dvAnnouncements" class="announcements w-12">
                        </div>

                        <div class="guide">

                            <!-- homepage carousel -->
                            <ul data-options="animation:'fade'; navigation_arrows: true; slide_number:false; bullets:false; next_on_click: false; pause_on_hover:false; animation_speed:1000; timer_speed: 5000; timer:true; circular: true;" style="height:300px" class="js_carousel">
                                <li style="height:300px">
                                    <a class="js_TL" href="" target="_blank"><img src="" /></a>
                                    <img src="" />
                                    <div class="orbit-caption js_carCap"><a class="js_TL" href="" target="_blank"></a></div>
                                </li>
                            </ul>

        <li class="js_favRow"><label>TEXT TEXT</label><div class="js_remove">DEL</div></li>
        <li class="js_megaRow"></li>
        <li class="js_carousel1">
            <div class="orbit-caption">Caption 1.</div>
        </li>

                            <!-- user list -->
                            <div class="teamGuideList">
                                <div class="flex flex-1 flex-column this-page-bg list-wrap">

                                </div>

                                <div class="flex pa-all-1 ma-t-1 ma-lr-1  border-bottom user-list listHeaderClick">


                                    <div class="flex pic-list ma-r-1 js-pic  js-act list-image">
                                        <div class="key-user-list tag brand" style="display:none">Key Contact</div>
                                    </div>


                                    <div class="flex flex-column flex-1">

                                        <div class="flex flex-1 flex-column">
                                            <a class="pa-b-half brand-color js-name name list-username js-act h-6"></a>
                                            <div class="pa-b-half job-title">
                                                <label class="bold">Title:</label> <span class="userTitle"></span>
                                            </div>
                                            <div class="department">
                                                <label class="bold">Department:</label> <span class="userDepartment"></span>
                                            </div>
                                            <div class="description">
                                                <label class="bold"></label> <span class="crewDescription"></span>
                                            </div>
                                            <div class="client">
                                                <span class="city"></span>
                                            </div>
                                            <div class="client">
                                               <span class="country"></span>
                                           </div>
                                       </div>

                                       <div class="flex list-buttons">
                                        <a class="ma-r-half facebook-list tiny-rnd brand" style="display:none"> <svg role="img" class="svg-icon-tiny" > <use xlink:href="#shape-facebook"></use> </svg></a>
                                        <a class="ma-r-half twitter-list tiny-rnd brand" style="display:none"> <svg role="img" class="svg-icon-tiny" > <use xlink:href="#shape-twitter"></use> </svg></a>
                                        <a class="ma-r-half website-list tiny-rnd brand" style="display:none"> <svg role="img" class="svg-icon-tiny" > <use xlink:href="#shape-link"></use> </svg></a>
                                        <a class="ma-r-half mail-list" style="display:none"> <svg role="img" class="svg-icon-tiny" > <use xlink:href="#shape-mcann-mail-icon"></use> </svg></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- user thmbs -->
                        <div class="userThumbGuide">
                            <ul class="equal-height-thumbnail list-thumb-wrap frame-bg"></ul>

                            <li class="db pa-all-1 guide-row flex-column border-bottom border-right searchThumbItem">
                                <div class="flex pic-thumb ma-b-1 js-pic list-image js-act">
                                    <div class="key-user-list tag brand" style="display:none">Key Contact</div>
                                </div>


                                <div class="flex flex-column fixed-size flex-1 justify-between">

                                    <div class="flex flex-column">
                                        <a class="pa-b-half brand-color js-name name js-act loud"></a>

                                        <div class="pa-b-half job-title">
                                            <label class="bold flex">Title:</label> 
                                            <span class="userTitle">Business Development Partner</span>
                                        </div>
                                        <div class="pa-b-1 department">
                                            <label class="bold flex">Department:</label> 
                                            <span class="userDepartment"></span>
                                        </div>
                                        <div class=" description">
                                            <span class="crewDescription pa-b-1"></span>
                                        </div>
                                        <div class=" client">
                                            <span class="city pa-b-1"></span>
                                        </div>
                                        <div class=" client">
                                            <span class="country pa-b-1"></span>
                                        </div>
                                    </div>

                                    <div class="flex list-buttons">
                                        <a class="ma-r-half facebook-thumb tiny-rnd brand" style="display:none"> <svg role="img" class="svg-icon-tiny" > <use xlink:href="#shape-facebook"></use> </svg></a>
                                        <a class="ma-r-half twitter-thumb tiny-rnd brand" style="display:none"> <svg role="img" class="svg-icon-tiny" > <use xlink:href="#shape-twitter"></use> </svg></a>
                                        <a class="ma-r-half website-thumb tiny-rnd brand" style="display:none"> <svg role="img" class="svg-icon-tiny" > <use xlink:href="#shape-link"></use> </svg></a>
                                        <a class="ma-r-half mail-thumb" style="display:none"> <svg role="img" class="svg-icon-tiny" > <use xlink:href="#shape-mcann-mail-icon"></use> </svg></a>
                                    </div>

                                </div>
                            </li>

                        </div>


                        <!-- team global search list -->
                        <div class="teamGlobalSearchGuide">
                            <div class="flex flex-1 flex-column this-page-bg list-wrap">
                            </div>
                            <div class="flex pa-all-1 ma-t-1 ma-lr-1  border-bottom user-list listHeaderClick">

                                <div class="flex pic-list ma-r-1 js-pic list-image"></div>

                                <div class="flex flex-column flex-1">

                                    <div class="flex flex-1 flex-column">
                                        <h6 class="pa-b-half brand-color js-name name list-username ma-t-0 ma-b-qtr"> </h6>
                                        <div class="pa-b-half">
                                            <span class="js-details"></span>
                                        </div>
                                    </div>

                                    <div class="flex-column list-buttons">
                                        <div class="ma-b-half email-wrap">
                                            <svg role="img" class="svg-icon-nano ma-r-qtr" >
                                                <use xlink:href="#shape-mcann-mail-icon"></use>
                                            </svg>
                                            <a class="js-email" href=""></a>
                                        </div>
                                        <div class="ma-b-half phone-wrap">
                                            <svg role="img" class="svg-icon-nano dib ma-r-qtr" >
                                                <use xlink:href="#shape-phone"></use>
                                            </svg>  
                                            <strong class="js-phone"></strong>
                                        </div>
                                        <div class="mobile-wrap">
                                            <svg role="img" class="svg-icon-nano dib ma-r-qtr" >
                                                <use xlink:href="#shape-mobile"></use>
                                            </svg>  
                                            <strong class="js-mobile"></strong>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <!-- library list -->
                        <div class="docListGuide">
                            <div class="flex flex-auto flex-column this-page-bg docList-Wrapper"></div>

                            <div class="flex ma-t-1 ma-lr-1 guide-row border-bottom list-item">
                                <div class="w-3 pa-lr-1 pa-b-1 ">
                                    <div class="flex pic-list ma-r-1 js-image js-click">
                                        <img class="libraryFavItem" src="#"/>
                                    </div>
                                </div>
                                <div class="flex-1 flex">
                                    <div class="flex flex-column w-5 pa-b-1">

                                        <div class="flex flex-auto flex-column pa-b-half pa-r-1 justify-between">
                                            <div>
                                                <h6 class="pa-b-half js-file-name js-click ma-tb-0"></h6>
                                                <div class="pa-b-half">
                                                    <span class="js-file-desc list-width"></span>
                                                </div>
                                            </div>
                                            <div class="downloads">
                                                <div class='flex'>
                                                    <div class ='library-preview js-click brand-color pa-r-1' >
                                                        <i class="ft-eye"></i>
                                                        <span class="list-btn-vault">PREVIEW</span>
                                                    </div>
                                                    <div class = "library-download brand-color js-download">
                                                        <i class="ft-download-alt"></i>
                                                        <span class="list-btn-vault">DOWNLOAD</span>
                                                    </div>
                                                    <div class="linksPreview js-link" style="display:none">

                                                        <div class = "library-edit newsletter-edit newsletter-btn brand-color js-ledit">
                                                            <i class="icon-edit"></i>
                                                            <span class="list-btn-vault">EDIT</span>
                                                        </div>

                                                    </div>

                                                        <div class = "library-edit newsletter-edit newsletter-btn brand-color js-nedit js-newsletter ma-r-1" style="display:none;">
                                                            <i class="icon-edit"></i>
                                                            <span class="list-btn-vault">EDIT</span>
                                                        </div>
                                                        <div class = "library-preview newsletter-preview newsletter-btn js-click brand-color js-newsletter ma-r-1" style="display:none;">
                                                            <i class="ft-eye"></i>
                                                            <span class="list-btn-vault">VIEW</span>
                                                        </div>
                                                        <div class = 'library-link newsletter-link newsletter-btn brand-color js-nlink js-newsletter ma-r-1' style="display:none;">
                                                            <i class='icon-link'></i>
                                                            <span class='list-btn-vault'>LINK</span>
                                                        </div>




                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="flex w-5 pa-r-1">
                                        <a class="js-file-author loud"></a>
                                    </div>
                                    <div class="flex w-2">
                                        <span class="js-file-date"></span>
                                    </div>
                                </div>




                            </div>
                        </div>

                        <!-- library thumbs -->
                        <div class="docThumbGuide">
                            <div class="flex flex-auto this-page-bg docThumb-Wrapper flex-wrap blocktoflex"></div>

                            <div class="flex pa-all-1 flex-column thumb-item flex-1">
                                <div class="flex pic-thumb ma-b-1 js-image js-click">
                                    <img class="libraryFavItem" src="#"/>
                                </div>

                                <div class="flex-auto">

                                    <span class="js-file-date pa-b-half">17/02/2016</span>
                                    <h6 class="js-file-author w-12 brand-color flex-ellipsis pa-b-half thumb-width ma-tb-half clickme">Emanuelle Levandosky</h6>

                                    <div class="flex flex-column list-preview listHeaderClick flex-1">
                                        <span class="pa-b-half brand-color js-file-name flex-ellipsis js-click">0000_yC-Yzbqy7PY.jpeg</span>
                                        <div class="pa-b-half">
                                            <span class="js-file-desc file-desc-thumb thumb-width">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phâ€¦</span>
                                        </div>
                                    </div>
                                    <div class='listLinks' >
                                        <a class="ma-b-qtr w-12 dib js-click">
                                            <svg role="img" class="svg-icon-tiny dark-grey-text" >
                                                <use xlink:href="#shape-preview"></use>
                                            </svg>
                                            <strong>Preview</strong>
                                        </a>
                                        <a class="w-12 dib js-download">
                                            <svg role="img" class="svg-icon-tiny dark-grey-text" >
                                                <use xlink:href="#shape-download"></use>
                                            </svg>
                                            <strong>Download</strong>
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <!-- search list -->
                        <div class="searchListGuide w-12">
                            <div class="flex flex-auto flex-column this-page-bg docList-Wrapper"></div>

                            <div class="flex ma-t-1 ma-lr-1 guide-row border-bottom list-item">
                                <div class="pa-lr-1 pa-b-1 ">
                                    <div class="flex pic-list ma-r-1 js-image listHeaderClick">
                                    </div>
                                </div>
                                <div class="flex-1 flex">
                                    <div class="flex flex-1 flex-column pa-b-1">

                                        <div class="flex flex-1 flex-column pa-b-half pa-r-1">
                                            <strong class="pa-b-half js-file-name listHeaderClick"></strong>
                                            <div class="pa-b-half">
                                                <span class="js-field1 list-width"></span>
                                            </div>
                                            <div class="pa-b-half">
                                                <span class="js-field2 list-width"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pa-r-1" style="width:20%">
                                        <span class="js-file-location brand-color"></span>
                                    </div>
                                    <div class="pa-r-1" style="width:20%">
                                        <strong class="js-file-author brand-color"></strong>
                                    </div>
                                    <div class="" style="width:20%">
                                        <span class="js-file-date"></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- search thumbs -->
                        <div class="searchThumbGuide thumb-item border-bottom border-right">
                            <div class="flex flex-auto this-page-bg docThumb-Wrapper flex-wrap blocktoflex"></div>

                            <div class="flex pa-all-1 flex-column  w-12">

                                <div class="flex pic-thumb ma-b-1 js-image listHeaderClick">
                                </div>

                                <div class="flex flex-column-reverse">
                                    <div class="flex flex-column list-preview listHeaderClick">

                                        <div class="flex flex-auto flex-column">
                                            <span class="pa-b-half brand-color js-file-name flex-ellipsis"></span>
                                        </div>
                                    </div>
                                    <div class='listLinks flex-1'>
                                        <i></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <!-- JS: 3rd Party -->

                <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
                <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
                <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Clamp.js/0.5.1/clamp.min.js"></script>

                <!-- Google Map API -->

                <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

                <!-- CK Editor -->

                <script src="//cdn.ckeditor.com/4.5.6/full/ckeditor.js"></script>

                <!-- JS: 3rd Party -->

                <script type="text/javascript" src="js/libs/gridifier.min.js"></script>
                <script type="text/javascript" src="js/libs/jquery.pagination.js"></script>
                <script type="text/javascript" src="js/libs/openseadragon.js"></script>
                <script type="text/javascript" src="js/libs/hoverIntent.js"></script>
                <script type="text/javascript" src="js/libs/jquery.dotdotdot-1.5.9.min.js"></script>
                <script type="text/javascript" src="js/libs/jquery.listSelect.js"></script>
                <script type="text/javascript" src="js/libs/jquery.ui.checkList.js"></script>
                <script type="text/javascript" src="js/libs/jquery.multiselect.min.js"></script>
                <script type="text/javascript" src="js/libs/jquery.ticker.js"></script>
                <script type="text/javascript" src="js/libs/jquery.sortable.js"></script>
                <script type="text/javascript" src="js/libs/ddmenu.js"></script>
                <script type="text/javascript" src="js/libs/waitUntilExists.js"></script>
                <script type="text/javascript" src="js/libs/jquery.multiselect.filter.min.js"></script>
                <script type="text/javascript" src="js/libs/imagesloaded.pkgd.min.js"></script>
                <script type="text/javascript" src="js/libs/jquery.quicksearch.js"></script>
                <!--<script type="text/javascript" src="js/libs/imgPreview.js"></script>-->
                <script type="text/javascript" src="js/foundation.min.js"></script>
                <script type="text/javascript" src="resources/swfobject/swfobject.js"></script>
                <script type="text/javascript" src="resources/sticky/sticky-kit.js"></script>
                <script type="text/javascript" src="resources/jquery.mmenu/jquery.mmenu.all.js" ></script>
                <script>
                    $(document).foundation();
					
                    $(function(){
                        $("#header").stick_in_parent().on("sticky_kit:stick", function(e) {
                    //console.log("has stuck!", e.target);
                }).on("sticky_kit:unstick", function(e) {
                    //console.log("has unstuck!", e.target);
                });
                $(".jumpto-nav").stick_in_parent();
          

            });
        </script>
        <script type="text/javascript" src="js/libs/tinymce/js/tinymce/tinymce.min.js"></script>
        <script type="text/javascript" src="js/libs/jquery.fineuploader-3.7.1/jquery.fineuploader-3.7.1.js"></script>

        
        <!-- Combined/Minified JS -->
        <script type="text/javascript" src="mccann.min.js?v=1.28"></script>

        

        <script type="text/javascript" src="Configuration.js?v=1.28"></script>

        <script>sd.Configuration.csid=32;sd.Configuration.csName='Screendragon';sd.Configuration.csTheme='light-theme.css';sd.Configuration.csSkin='theme-2.css';sd.Configuration.csLogo='MWG Logo.jpeg';sd.Configuration.csBackground='3.jpeg';sd.Configuration.csAccess=3;sd.Configuration.siteRoot=26186;sd.Configuration.libraryInode=26188;sd.Configuration.discussionRoot=26187;sd.Configuration.csData='channelAdminGroup:0;channelAdminGroupID:270;background0:1.jpeg;background1:2.png;background2:3.png;bestcase0:Homepage Carousel Text;bestcase1:Test Title and Link;bestcase2:2000 x 400;itemlink0:http%3A//www.screendragon.com;itemlink1:http%3A//www.screendragon.com;itemlink2:;numBackgrounds:3';sd.Configuration.csFeatureID=0;sd.Configuration.csContact='';sd.Configuration.csEmail='paddy@screendragon.com';sd.Configuration.csBCEmail='                                                                                                                                                                                                                                                          ';sd.Configuration.terms='';sd.Configuration.userGuide='';sd.Configuration.homepagePosting='True';sd.Configuration.displayIFrame='False';</script>

            <script>
                if (!window.console) window.console = {
                    log: function () {}
                };

                $(document).ready(init);
            </script>

            <!-- Hidden Box SSO iFrame to allow SSO to Box Embed -->
            <!--<iframe style="display:none;" width="10px" height="10px" src="https://sso.services.box.net/sp/startSSO.ping?PartnerIdpId=MWG:PRO:Box:SAML2:IdP&amp;TargetResource=https%3A%2F%2Fassetshare.app.box.com%2Fsso%2Fping_federate&amp;InErrorResource=https://login.interpublic.com/OnePass/Error.html">Loading.....</iframe>-->
        </body>
        </html>