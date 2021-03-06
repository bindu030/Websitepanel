﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using WebsitePanel.WebDav.Core.Security.Authentication.Principals;
using WebsitePanel.WebDav.Core.Wsp.Framework;

namespace WebsitePanel.WebDav.Core
{
    public class WspContext
    {
        public static WspPrincipal User { get { return HttpContext.Current.User as WspPrincipal; } }
        public static WSP Services { get { return WSP.Services; } }
    }
}
