  //local site configuration just overrtide sd.Configuration values
  
  //sd.Configuration should already be defined in the master configuration file in js\sd\Configuration but we need this when config loaded for Login as this page is not protected
var sd = sd || {};
sd.Configuration = sd.Configuration || {};

//location of webservices and vaults
sd.Configuration.site = "https://mccann.screendragon.net/redesign";
sd.Configuration.ws = sd.Configuration.site + "/ws";
sd.Configuration.vault = "https://mccann.screendragon.net/redesign/vault";
sd.Configuration.tileSource = "vault";

sd.Configuration.buildVersion = "1.28";

sd.Configuration.defaultDateFormat = "dd-mm-yy";

sd.Configuration.site = "mccann";
sd.Configuration.siteTitle = "Brand Lounge";
sd.Configuration.csid = -1;

sd.Configuration.siteRoot = 1;
sd.Configuration.discussionRoot = 2;
sd.Configuration.libraryInode = 3;

sd.Configuration.previewerShowToolButton = false;
sd.Configuration.previewerShowAnnotationButtons = false;
sd.Configuration.previewerShowAddNoteButton = false;
sd.Configuration.previewerShowAnnotationLeftPanel = false;

sd.Configuration.terms = 4095;
sd.Configuration.userGuide = 4158;
sd.Configuration.crewFAQinode = 13525;

sd.Configuration.confirmExitMessage = "";

sd.Configuration.csAccess = 1;
sd.Configuration.csTheme = "";
sd.Configuration.csLogo = "";
sd.Configuration.csBackground = "";
sd.Configuration.data = "";


//Folder Template
sd.Configuration.folderTemplates = [
    { label: "Beauty Artist", type: "artist", contentType: "artist", allowSearch: true, allowMeta: true },
    { label: "Best Case", type: "bestcase", contentType: "bestcase", allowSearch: true, allowMeta: true },
    { label: "Egnyte Embed", type: "egnyteEmbed", contentType: "egnyteEmbed", allowSearch: false, allowMeta: false },
    { label: "Client Directory", type: "client", contentType: "client", allowSearch: false, allowMeta: false },
	{ label: "Dream Team", type: "dreamteam", contentType: "dreamteam", allowSearch: true, allowMeta: true },
    { label: "Experts Under Contract", type: "expert", contentType: "expert", allowSearch: true, allowMeta: true },
	{ label: "Folder", type: "folder", contentType: "document", allowSearch: false, allowMeta: true },
	{ label: "Newsletter", type: "newsletter", contentType: "newsletter", allowSearch: false, allowMeta: false },
	{ label: "Team", type: "team", contentType: "team", allowSearch: true, allowMeta: false },
	{ label: "Article", type: "article", contentType: "article", allowSearch: false, allowMeta: false },
    { label: "Google Map", type: "map", contentType: "map", allowSearch: false, allowMeta: false },
	{ label: "Social Media", type: "social", contentType: "social", allowSearch: false, allowMeta: false }
];


//Custom Profile Fields for this Site
sd.Configuration.customProfileFields = [
    { type: "birthday", label: "Birthday" },
    { type: "twitter", label: "Twitter" },
    { type: "facebook", label: "Facebook" },
    { type: "website", label: "Website" },
    { type: "region", label: "Region" }
];


sd.Configuration.sections = [
    {type: "mccann", label: "HOME", title: "HOME" }
];

/*
mapFillColor = //Country Fill
offFillColor =  //Disabled Country Fill
mapStrokeColor  //??
waterFillColor  //Water/Sea
*/

sd.Configuration.mapData["58"] = {
    mapFillColor: "#5C93CE",
    offFillColor: "#9cd8e8",
    mapStrokeColor: "#9cd8e8",
    waterFillColor: "#E7E8EA",
    pinIcon: "images/mccann/g-map/yellow_pin.png",
    dataFile: "pinDataGrouped.json",
    title: "GM Agencies",
    description: "Navigate map tags to show office location, Agency, GM agency lead and time zone.",
    legends: [{ pin: "images/mccann/g-map/yellow_pin.png", text: "Office Location" }]
};//GM Lounge

sd.Configuration.mapData["27"] = {
    mapFillColor: "#5B6770",
    offFillColor: "#D0D3D48",
    mapStrokeColor: "#D0D3D4",
    waterFillColor: "#E7E8EA",
    pinIcon: "images/mccann/g-map/orange_pin.png",
    dataFile: "pinDataGrouped_Craft.json",
    title: "Craft Studios",
    description: "Navigate map tags to show Craft location, studio lead and time zone.",
    legends: [{ pin: "images/mccann/g-map/orange_pin.png", text: "CRAFT INTEGRATED LOCATIONS" },{ pin: "images/mccann/g-map/yellow_pin.png", text: "Offshore Hubs" }]
};//Craft

sd.Configuration.mapData["32"] = {
    mapFillColor: "#5B6770",
    offFillColor: "#D0D3D48",
    mapStrokeColor: "#D0D3D4",
    waterFillColor: "#E7E8EA",
    pinIcon: "images/mccann/g-map/orange_pin.png",
    dataFile: "pinDataGrouped_Craft.json",
    title: "Craft Studios",
    description: "Navigate map tags to show Craft location, studio lead and time zone.",
    legends: [{ pin: "images/mccann/g-map/orange_pin.png", text: "Office Location" }, { pin: "images/mccann/g-map/cyan_pin.png", text: "HQ" }]
};//Demo Site

sd.Configuration.blockEdit = [16644];
sd.Configuration.folderLink["16730"] = { url: "https://mccann.screendragon.net/QMS" };
sd.Configuration.QMSCustomMeta = [16644];

sd.Configuration.homepageLinks["1"] = [
    { heading: "Our Work" },
    { text: "OPEN", url: "http://beautyteam-mccann-open.groupetransatlantic.com/" },
    { text: "BT Servers", url: "http://share-loreal.mccann.com/" },
    { text: "L'Oreal FYI", url: "http://www.loreal-fyi.com/" }
];

sd.Configuration.homepageLinks["23"] = [
    { heading: "Our Work" },
    { text: "Gotham Central", url: "https://gothamcentral.gothaminc.com/"  }
];
sd.Configuration.homepageLinks["44"] = [
    { heading: "Our Work" },
    { text: "Gotham Central", url: "https://gothamcentral.gothaminc.com/" }
];
sd.Configuration.homepageLinks["27"] = [
    { heading: "cPlus Platform " },
    { text: "ManagePlus", url: "https://craftww.wipsystems.co.uk/studio.asp" },
    { text: "OrganizePlus", url: "https://app.smartsheet.com/b/home" },
    { text: "ApprovePlus", url: "https://approvals.craftww.com/" },
    { text: "Request Help", url: "https://mwgsolutions.zendesk.com/agent/tickets/new/1" },
    { text: "Knowledge Channel", url: "https://support.mwgsolutions.com/hc/en-us/categories/203097748-cPlus-Knowledge-Channel?flash_digest=ee1a2183671f7457b1e3a06426beef2d9cd2dadf" }
];

sd.Configuration.metaDataMandatory = true;

