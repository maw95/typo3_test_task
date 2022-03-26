/*
 * This file is part of the TYPO3 CMS project.
 *
 * It is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License, either version 2
 * of the License, or any later version.
 *
 * For the full copyright and license information, please read the
 * LICENSE.txt file that was distributed with this source code.
 *
 * The TYPO3 project - inspiring people to share!
 */
var __importDefault=this&&this.__importDefault||function(t){return t&&t.__esModule?t:{default:t}};define(["require","exports","jquery","TYPO3/CMS/Core/Ajax/AjaxRequest","./ContextMenuActions"],(function(t,e,i,n,s){"use strict";i=__importDefault(i);class o{constructor(){this.mousePos={X:null,Y:null},this.delayContextMenuHide=!1,this.record={uid:null,table:null},this.closeMenuTimeout={},this.storeMousePositionEvent=t=>{this.mousePos={X:t.pageX,Y:t.pageY},this.mouseOutFromMenu("#contentMenu0"),this.mouseOutFromMenu("#contentMenu1")},this.initializeEvents()}static drawActionItem(t){const e=t.additionalAttributes||{};let i="";for(const t of Object.entries(e)){const[e,n]=t;i+=" "+e+'="'+n+'"'}return'<a class="list-group-item" data-callback-action="'+t.callbackAction+'"'+i+'><span class="list-group-item-icon">'+t.icon+"</span> "+t.label+"</a>"}static within(t,e,i){const n=t.offset();return i>=n.top&&i<n.top+t.height()&&e>=n.left&&e<n.left+t.width()}static initializeContextMenuContainer(){if(0===i.default("#contentMenu0").length){const t='<div id="contentMenu0" class="context-menu" style="display: none;"></div><div id="contentMenu1" class="context-menu" style="display: none;"></div>';i.default("body").append(t)}}initializeEvents(){i.default(document).on("click contextmenu",".t3js-contextmenutrigger",t=>{const e=i.default(t.currentTarget);e.prop("onclick")&&"click"===t.type||(t.preventDefault(),this.show(e.data("table"),e.data("uid"),e.data("context"),e.data("iteminfo"),e.data("parameters")))}),i.default(document).on("mousemove",this.storeMousePositionEvent)}show(t,e,i,n,s){this.hideAll(),this.closeMenuTimeout={},this.record={table:t,uid:e};let o="";void 0!==t&&(o+="table="+encodeURIComponent(t)),void 0!==e&&(o+=(o.length>0?"&":"")+"uid="+e),void 0!==i&&(o+=(o.length>0?"&":"")+"context="+i),void 0!==n&&(o+=(o.length>0?"&":"")+"enDisItems="+n),void 0!==s&&(o+=(o.length>0?"&":"")+"addParams="+s),this.fetch(o)}fetch(t){let e=TYPO3.settings.ajaxUrls.contextmenu;new n(e).withQueryArguments(t).get().then(async t=>{const e=await t.resolve();void 0!==t&&Object.keys(t).length>0&&this.populateData(e,0)})}populateData(e,n){o.initializeContextMenuContainer();const l=i.default("#contentMenu"+n);if(l.length&&(0===n||i.default("#contentMenu"+(n-1)).is(":visible"))){const o=this.drawMenu(e,n);l.html('<div class="list-group">'+o+"</div>"),i.default("a.list-group-item",l).click(e=>{e.preventDefault();const o=i.default(e.currentTarget);if(o.hasClass("list-group-item-submenu"))return void this.openSubmenu(n,o);const l=o.data("callback-action"),u=o.data("callback-module");o.data("callback-module")?t([u],t=>{t[l].bind(o)(this.record.table,this.record.uid)}):s&&"function"==typeof s[l]?s[l].bind(o)(this.record.table,this.record.uid):console.log("action: "+l+" not found"),this.hideAll()}),l.css(this.getPosition(l)).show()}}openSubmenu(t,e){const n=i.default("#contentMenu"+(t+1)).html("");e.next().find(".list-group").clone(!0).appendTo(n),n.css(this.getPosition(n)).show()}getPosition(t){let e=this.mousePos.X,n=this.mousePos.Y;const s=i.default(window).width()-20,o=i.default(window).height(),l=t.width(),u=t.height(),a=this.mousePos.X-i.default(document).scrollLeft(),c=this.mousePos.Y-i.default(document).scrollTop();return o-u<c&&(c>u?n-=u-10:n+=o-u-c),s-l<a&&(a>l?e-=l-10:s-l-a<i.default(document).scrollLeft()?e=i.default(document).scrollLeft():e+=s-l-a),{left:e+"px",top:n+"px"}}drawMenu(t,e){let i="";for(let n of Object.values(t))if("item"===n.type)i+=o.drawActionItem(n);else if("divider"===n.type)i+='<a class="list-group-item list-group-item-divider"></a>';else if("submenu"===n.type||n.childItems){i+='<a class="list-group-item list-group-item-submenu"><span class="list-group-item-icon">'+n.icon+"</span> "+n.label+'&nbsp;&nbsp;<span class="fa fa-caret-right"></span></a>';i+='<div class="context-menu contentMenu'+(e+1)+'" style="display:none;"><div class="list-group">'+this.drawMenu(n.childItems,1)+"</div></div>"}return i}mouseOutFromMenu(t){const e=i.default(t);e.length>0&&e.is(":visible")&&!o.within(e,this.mousePos.X,this.mousePos.Y)?this.hide(t):e.length>0&&e.is(":visible")&&(this.delayContextMenuHide=!0,window.clearTimeout(this.closeMenuTimeout[t]))}hide(t,e=!0){this.delayContextMenuHide=!1,window.clearTimeout(this.closeMenuTimeout[t]);const n=()=>{this.delayContextMenuHide||i.default(t).hide()};e?this.closeMenuTimeout[t]=window.setTimeout(n,500):n()}hideAll(){this.hide("#contentMenu0",!1),this.hide("#contentMenu1",!1)}}return new o}));