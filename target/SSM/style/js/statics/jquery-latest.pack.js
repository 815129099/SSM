(function() {
    var w = window.jQuery,
        _$ = window.$;
    var D = window.jQuery = window.$ = function(a, b) {
        return new D.fn.init(a, b)
    };
    var u = /^[^<]*(<(.|\s)+>)[^>]*$|^#(\w+)$/,
        isSimple = /^.[^:#\[\.]*$/,
        undefined;
    D.fn = D.prototype = {
        init: function(d, b) {
            d = d || document;
            if (d.nodeType) {
                this[0] = d;
                this.length = 1;
                return this
            }
            if (typeof d == "string") {
                var c = u.exec(d);
                if (c && (c[1] || !b)) {
                    if (c[1]) d = D.clean([c[1]], b);
                    else {
                        var a = document.getElementById(c[3]);
                        if (a) {
                            if (a.id != c[3]) return D().find(d);
                            return D(a)
                        }
                        d = []
                    }
                } else return D(b).find(d)
            } else if (D.isFunction(d)) return D(document)[D.fn.ready ? "ready" : "load"](d);
            return this.setArray(D.makeArray(d))
        },
        jquery: "1.2.6",
        size: function() {
            return this.length
        },
        length: 0,
        get: function(a) {
            return a == undefined ? D.makeArray(this) : this[a]
        },
        pushStack: function(b) {
            var a = D(b);
            a.prevObject = this;
            return a
        },
        setArray: function(a) {
            this.length = 0;
            Array.prototype.push.apply(this, a);
            return this
        },
        each: function(a, b) {
            return D.each(this, a, b)
        },
        index: function(b) {
            var a = -1;
            return D.inArray(b && b.jquery ? b[0] : b, this)
        },
        attr: function(c, a, b) {
            var d = c;
            if (c.constructor == String)
                if (a === undefined) return this[0] && D[b || "attr"](this[0], c);
                else {
                    d = {};
                    d[c] = a
                }
            return this.each(function(i) {
                for (c in d) D.attr(b ? this.style : this, c, D.prop(this, d[c], b, i, c))
            })
        },
        css: function(b, a) {
            if ((b == 'width' || b == 'height') && parseFloat(a) < 0) a = undefined;
            return this.attr(b, a, "curCSS")
        },
        text: function(b) {
            if (typeof b != "object" && b != null) return this.empty().append((this[0] && this[0].ownerDocument || document).createTextNode(b));
            var a = "";
            D.each(b || this, function() {
                D.each(this.childNodes, function() {
                    if (this.nodeType != 8) a += this.nodeType != 1 ? this.nodeValue : D.fn.text([this])
                })
            });
            return a
        },
        wrapAll: function(b) {
            if (this[0]) D(b, this[0].ownerDocument).clone().insertBefore(this[0]).map(function() {
                var a = this;
                while (a.firstChild) a = a.firstChild;
                return a
            }).append(this);
            return this
        },
        wrapInner: function(a) {
            return this.each(function() {
                D(this).contents().wrapAll(a)
            })
        },
        wrap: function(a) {
            return this.each(function() {
                D(this).wrapAll(a)
            })
        },
        append: function() {
            return this.domManip(arguments, true, false, function(a) {
                if (this.nodeType == 1) this.appendChild(a)
            })
        },
        prepend: function() {
            return this.domManip(arguments, true, true, function(a) {
                if (this.nodeType == 1) this.insertBefore(a, this.firstChild)
            })
        },
        before: function() {
            return this.domManip(arguments, false, false, function(a) {
                this.parentNode.insertBefore(a, this)
            })
        },
        after: function() {
            return this.domManip(arguments, false, true, function(a) {
                this.parentNode.insertBefore(a, this.nextSibling)
            })
        },
        end: function() {
            return this.prevObject || D([])
        },
        find: function(b) {
            var c = D.map(this, function(a) {
                return D.find(b, a)
            });
            return this.pushStack(/[^+>] [^+>]/.test(b) || b.indexOf("..") > -1 ? D.unique(c) : c)
        },
        clone: function(e) {
            var f = this.map(function() {
                if (D.browser.msie && !D.isXMLDoc(this)) {
                    var a = this.cloneNode(true),
                        container = document.createElement("div");
                    container.appendChild(a);
                    return D.clean([container.innerHTML])[0]
                } else return this.cloneNode(true)
            });
            var d = f.find("*").andSelf().each(function() {
                if (this[E] != undefined) this[E] = null
            });
            if (e === true) this.find("*").andSelf().each(function(i) {
                if (this.nodeType == 3) return;
                var c = D.data(this, "events");
                for (var a in c)
                    for (var b in c[a]) D.event.add(d[i], a, c[a][b], c[a][b].data)
            });
            return f
        },
        filter: function(b) {
            return this.pushStack(D.isFunction(b) && D.grep(this, function(a, i) {
                return b.call(a, i)
            }) || D.multiFilter(b, this))
        },
        not: function(b) {
            if (b.constructor == String)
                if (isSimple.test(b)) return this.pushStack(D.multiFilter(b, this, true));
                else b = D.multiFilter(b, this);
            var a = b.length && b[b.length - 1] !== undefined && !b.nodeType;
            return this.filter(function() {
                return a ? D.inArray(this, b) < 0 : this != b
            })
        },
        add: function(a) {
            return this.pushStack(D.unique(D.merge(this.get(), typeof a == 'string' ? D(a) : D.makeArray(a))))
        },
        is: function(a) {
            return !!a && D.multiFilter(a, this).length > 0
        },
        hasClass: function(a) {
            return this.is("." + a)
        },
        val: function(b) {
            if (b == undefined) {
                if (this.length) {
                    var c = this[0];
                    if (D.nodeName(c, "select")) {
                        var e = c.selectedIndex,
                            values = [],
                            options = c.options,
                            one = c.type == "select-one";
                        if (e < 0) return null;
                        for (var i = one ? e : 0, max = one ? e + 1 : options.length; i < max; i++) {
                            var d = options[i];
                            if (d.selected) {
                                b = D.browser.msie && !d.attributes.value.specified ? d.text : d.value;
                                if (one) return b;
                                values.push(b)
                            }
                        }
                        return values
                    } else return (this[0].value || "").replace(/\r/g, "")
                }
                return undefined
            }
            if (b.constructor == Number) b += '';
            return this.each(function() {
                if (this.nodeType != 1) return;
                if (b.constructor == Array && /radio|checkbox/.test(this.type)) this.checked = (D.inArray(this.value, b) >= 0 || D.inArray(this.name, b) >= 0);
                else if (D.nodeName(this, "select")) {
                    var a = D.makeArray(b);
                    D("option", this).each(function() {
                        this.selected = (D.inArray(this.value, a) >= 0 || D.inArray(this.text, a) >= 0)
                    });
                    if (!a.length) this.selectedIndex = -1
                } else this.value = b
            })
        },
        html: function(a) {
            return a == undefined ? (this[0] ? this[0].innerHTML : null) : this.empty().append(a)
        },
        replaceWith: function(a) {
            return this.after(a).remove()
        },
        eq: function(i) {
            return this.slice(i, i + 1)
        },
        slice: function() {
            return this.pushStack(Array.prototype.slice.apply(this, arguments))
        },
        map: function(b) {
            return this.pushStack(D.map(this, function(a, i) {
                return b.call(a, i, a)
            }))
        },
        andSelf: function() {
            return this.add(this.prevObject)
        },
        data: function(d, b) {
            var a = d.split(".");
            a[1] = a[1] ? "." + a[1] : "";
            if (b === undefined) {
                var c = this.triggerHandler("getData" + a[1] + "!", [a[0]]);
                if (c === undefined && this.length) c = D.data(this[0], d);
                return c === undefined && a[1] ? this.data(a[0]) : c
            } else return this.trigger("setData" + a[1] + "!", [a[0], b]).each(function() {
                D.data(this, d, b)
            })
        },
        removeData: function(a) {
            return this.each(function() {
                D.removeData(this, a)
            })
        },
        domManip: function(g, f, h, d) {
            var e = this.length > 1,
                elems;
            return this.each(function() {
                if (!elems) {
                    elems = D.clean(g, this.ownerDocument);
                    if (h) elems.reverse()
                }
                var b = this;
                if (f && D.nodeName(this, "table") && D.nodeName(elems[0], "tr")) b = this.getElementsByTagName("tbody")[0] || this.appendChild(this.ownerDocument.createElement("tbody"));
                var c = D([]);
                D.each(elems, function() {
                    var a = e ? D(this).clone(true)[0] : this;
                    if (D.nodeName(a, "script")) c = c.add(a);
                    else {
                        if (a.nodeType == 1) c = c.add(D("script", a).remove());
                        d.call(b, a)
                    }
                });
                c.each(evalScript)
            })
        }
    };
    D.fn.init.prototype = D.fn;

    function evalScript(i, a) {
        if (a.src) D.ajax({
            url: a.src,
            async: false,
            dataType: "script"
        });
        else D.globalEval(a.text || a.textContent || a.innerHTML || ""); if (a.parentNode) a.parentNode.removeChild(a)
    }

    function now() {
        return +new Date
    }
    D.extend = D.fn.extend = function() {
        var b = arguments[0] || {},
            i = 1,
            length = arguments.length,
            deep = false,
            options;
        if (b.constructor == Boolean) {
            deep = b;
            b = arguments[1] || {};
            i = 2
        }
        if (typeof b != "object" && typeof b != "function") b = {};
        if (length == i) {
            b = this;
            --i
        }
        for (; i < length; i++)
            if ((options = arguments[i]) != null)
                for (var c in options) {
                    var a = b[c],
                        copy = options[c];
                    if (b === copy) continue;
                    if (deep && copy && typeof copy == "object" && !copy.nodeType) b[c] = D.extend(deep, a || (copy.length != null ? [] : {}), copy);
                    else if (copy !== undefined) b[c] = copy
                }
            return b
    };
    var E = "jQuery" + now(),
        uuid = 0,
        windowData = {},
        exclude = /z-?index|font-?weight|opacity|zoom|line-?height/i,
        defaultView = document.defaultView || {};
    D.extend({
        noConflict: function(a) {
            window.$ = _$;
            if (a) window.jQuery = w;
            return D
        },
        isFunction: function(a) {
            return !!a && typeof a != "string" && !a.nodeName && a.constructor != Array && /^[\s[]?function/.test(a + "")
        },
        isXMLDoc: function(a) {
            return a.documentElement && !a.body || a.tagName && a.ownerDocument && !a.ownerDocument.body
        },
        globalEval: function(a) {
            a = D.trim(a);
            if (a) {
                var b = document.getElementsByTagName("head")[0] || document.documentElement,
                    script = document.createElement("script");
                script.type = "text/javascript";
                if (D.browser.msie) script.text = a;
                else script.appendChild(document.createTextNode(a));
                b.insertBefore(script, b.firstChild);
                b.removeChild(script)
            }
        },
        nodeName: function(b, a) {
            return b.nodeName && b.nodeName.toUpperCase() == a.toUpperCase()
        },
        cache: {},
        data: function(c, d, b) {
            c = c == window ? windowData : c;
            var a = c[E];
            if (!a) a = c[E] = ++uuid;
            if (d && !D.cache[a]) D.cache[a] = {};
            if (b !== undefined) D.cache[a][d] = b;
            return d ? D.cache[a][d] : a
        },
        removeData: function(c, b) {
            c = c == window ? windowData : c;
            var a = c[E];
            if (b) {
                if (D.cache[a]) {
                    delete D.cache[a][b];
                    b = "";
                    for (b in D.cache[a]) break;
                    if (!b) D.removeData(c)
                }
            } else {
                try {
                    delete c[E]
                } catch (e) {
                    if (c.removeAttribute) c.removeAttribute(E)
                }
                delete D.cache[a]
            }
        },
        each: function(d, a, c) {
            var e, i = 0,
                length = d.length;
            if (c) {
                if (length == undefined) {
                    for (e in d)
                        if (a.apply(d[e], c) === false) break
                } else
                    for (; i < length;)
                        if (a.apply(d[i++], c) === false) break
            } else {
                if (length == undefined) {
                    for (e in d)
                        if (a.call(d[e], e, d[e]) === false) break
                } else
                    for (var b = d[0]; i < length && a.call(b, i, b) !== false; b = d[++i]) {}
            }
            return d
        },
        prop: function(b, a, c, i, d) {
            if (D.isFunction(a)) a = a.call(b, i);
            return a && a.constructor == Number && c == "curCSS" && !exclude.test(d) ? a + "px" : a
        },
        className: {
            add: function(c, b) {
                D.each((b || "").split(/\s+/), function(i, a) {
                    if (c.nodeType == 1 && !D.className.has(c.className, a)) c.className += (c.className ? " " : "") + a
                })
            },
            remove: function(c, b) {
                if (c.nodeType == 1) c.className = b != undefined ? D.grep(c.className.split(/\s+/), function(a) {
                    return !D.className.has(b, a)
                }).join(" ") : ""
            },
            has: function(b, a) {
                return D.inArray(a, (b.className || b).toString().split(/\s+/)) > -1
            }
        },
        swap: function(b, c, a) {
            var e = {};
            for (var d in c) {
                e[d] = b.style[d];
                b.style[d] = c[d]
            }
            a.call(b);
            for (var d in c) b.style[d] = e[d]
        },
        css: function(d, e, c) {
            if (e == "width" || e == "height") {
                var b, props = {
                        position: "absolute",
                        visibility: "hidden",
                        display: "block"
                    },
                    which = e == "width" ? ["Left", "Right"] : ["Top", "Bottom"];

                function getWH() {
                    b = e == "width" ? d.offsetWidth : d.offsetHeight;
                    var a = 0,
                        border = 0;
                    D.each(which, function() {
                        a += parseFloat(D.curCSS(d, "padding" + this, true)) || 0;
                        border += parseFloat(D.curCSS(d, "border" + this + "Width", true)) || 0
                    });
                    b -= Math.round(a + border)
                }
                if (D(d).is(":visible")) getWH();
                else D.swap(d, props, getWH);
                return Math.max(0, b)
            }
            return D.curCSS(d, e, c)
        },
        curCSS: function(f, l, k) {
            var e, style = f.style;

            function color(b) {
                if (!D.browser.safari) return false;
                var a = defaultView.getComputedStyle(b, null);
                return !a || a.getPropertyValue("color") == ""
            }
            if (l == "opacity" && D.browser.msie) {
                e = D.attr(style, "opacity");
                return e == "" ? "1" : e
            }
            if (D.browser.opera && l == "display") {
                var d = style.outline;
                style.outline = "0 solid black";
                style.outline = d
            }
            if (l.match(/float/i)) l = y;
            if (!k && style && style[l]) e = style[l];
            else if (defaultView.getComputedStyle) {
                if (l.match(/float/i)) l = "float";
                l = l.replace(/([A-Z])/g, "-$1").toLowerCase();
                var c = defaultView.getComputedStyle(f, null);
                if (c && !color(f)) e = c.getPropertyValue(l);
                else {
                    var g = [],
                        stack = [],
                        a = f,
                        i = 0;
                    for (; a && color(a); a = a.parentNode) stack.unshift(a);
                    for (; i < stack.length; i++)
                        if (color(stack[i])) {
                            g[i] = stack[i].style.display;
                            stack[i].style.display = "block"
                        }
                    e = l == "display" && g[stack.length - 1] != null ? "none" : (c && c.getPropertyValue(l)) || "";
                    for (i = 0; i < g.length; i++)
                        if (g[i] != null) stack[i].style.display = g[i]
                } if (l == "opacity" && e == "") e = "1"
            } else if (f.currentStyle) {
                var h = l.replace(/\-(\w)/g, function(a, b) {
                    return b.toUpperCase()
                });
                e = f.currentStyle[l] || f.currentStyle[h];
                if (!/^\d+(px)?$/i.test(e) && /^\d/.test(e)) {
                    var j = style.left,
                        rsLeft = f.runtimeStyle.left;
                    f.runtimeStyle.left = f.currentStyle.left;
                    style.left = e || 0;
                    e = style.pixelLeft + "px";
                    style.left = j;
                    f.runtimeStyle.left = rsLeft
                }
            }
            return e
        },
        clean: function(l, h) {
            var k = [];
            h = h || document;
            if (typeof h.createElement == 'undefined') h = h.ownerDocument || h[0] && h[0].ownerDocument || document;
            D.each(l, function(i, d) {
                if (!d) return;
                if (d.constructor == Number) d += '';
                if (typeof d == "string") {
                    d = d.replace(/(<(\w+)[^>]*?)\/>/g, function(b, a, c) {
                        return c.match(/^(abbr|br|col|img|input|link|meta|param|hr|area|embed)$/i) ? b : a + "></" + c + ">"
                    });
                    var f = D.trim(d).toLowerCase(),
                        div = h.createElement("div");
                    var e = !f.indexOf("<opt") && [1, "<select multiple='multiple'>", "</select>"] || !f.indexOf("<leg") && [1, "<fieldset>", "</fieldset>"] || f.match(/^<(thead|tbody|tfoot|colg|cap)/) && [1, "<table>", "</table>"] || !f.indexOf("<tr") && [2, "<table><tbody>", "</tbody></table>"] || (!f.indexOf("<td") || !f.indexOf("<th")) && [3, "<table><tbody><tr>", "</tr></tbody></table>"] || !f.indexOf("<col") && [2, "<table><tbody></tbody><colgroup>", "</colgroup></table>"] || D.browser.msie && [1, "div<div>", "</div>"] || [0, "", ""];
                    div.innerHTML = e[1] + d + e[2];
                    while (e[0]--) div = div.lastChild;
                    if (D.browser.msie) {
                        var g = !f.indexOf("<table") && f.indexOf("<tbody") < 0 ? div.firstChild && div.firstChild.childNodes : e[1] == "<table>" && f.indexOf("<tbody") < 0 ? div.childNodes : [];
                        for (var j = g.length - 1; j >= 0; --j)
                            if (D.nodeName(g[j], "tbody") && !g[j].childNodes.length) g[j].parentNode.removeChild(g[j]);
                        if (/^\s/.test(d)) div.insertBefore(h.createTextNode(d.match(/^\s*/)[0]), div.firstChild)
                    }
                    d = D.makeArray(div.childNodes)
                }
                if (d.length === 0 && (!D.nodeName(d, "form") && !D.nodeName(d, "select"))) return;
                if (d[0] == undefined || D.nodeName(d, "form") || d.options) k.push(d);
                else k = D.merge(k, d)
            });
            return k
        },
        attr: function(d, f, c) {
            if (!d || d.nodeType == 3 || d.nodeType == 8) return undefined;
            var e = !D.isXMLDoc(d),
                set = c !== undefined,
                msie = D.browser.msie;
            f = e && D.props[f] || f;
            if (d.tagName) {
                var g = /href|src|style/.test(f);
                if (f == "selected" && D.browser.safari) d.parentNode.selectedIndex;
                if (f in d && e && !g) {
                    if (set) {
                        if (f == "type" && D.nodeName(d, "input") && d.parentNode) throw "type property can't be changed";
                        d[f] = c
                    }
                    if (D.nodeName(d, "form") && d.getAttributeNode(f)) return d.getAttributeNode(f).nodeValue;
                    return d[f]
                }
                if (msie && e && f == "style") return D.attr(d.style, "cssText", c);
                if (set) d.setAttribute(f, "" + c);
                var h = msie && e && g ? d.getAttribute(f, 2) : d.getAttribute(f);
                return h === null ? undefined : h
            }
            if (msie && f == "opacity") {
                if (set) {
                    d.zoom = 1;
                    d.filter = (d.filter || "").replace(/alpha\([^)]*\)/, "") + (parseInt(c) + '' == "NaN" ? "" : "alpha(opacity=" + c * 100 + ")")
                }
                return d.filter && d.filter.indexOf("opacity=") >= 0 ? (parseFloat(d.filter.match(/opacity=([^)]*)/)[1]) / 100) + '' : ""
            }
            f = f.replace(/-([a-z])/ig, function(a, b) {
                return b.toUpperCase()
            });
            if (set) d[f] = c;
            return d[f]
        },
        trim: function(a) {
            return (a || "").replace(/^\s+|\s+$/g, "")
        },
        makeArray: function(b) {
            var a = [];
            if (b != null) {
                var i = b.length;
                if (i == null || b.split || b.setInterval || b.call) a[0] = b;
                else
                    while (i) a[--i] = b[i]
            }
            return a
        },
        inArray: function(b, a) {
            for (var i = 0, length = a.length; i < length; i++)
                if (a[i] === b) return i;
            return -1
        },
        merge: function(a, b) {
            var i = 0,
                elem, pos = a.length;
            if (D.browser.msie) {
                while (elem = b[i++])
                    if (elem.nodeType != 8) a[pos++] = elem
            } else
                while (elem = b[i++]) a[pos++] = elem;
            return a
        },
        unique: function(a) {
            var c = [],
                done = {};
            try {
                for (var i = 0, length = a.length; i < length; i++) {
                    var b = D.data(a[i]);
                    if (!done[b]) {
                        done[b] = true;
                        c.push(a[i])
                    }
                }
            } catch (e) {
                c = a
            }
            return c
        },
        grep: function(c, a, d) {
            var b = [];
            for (var i = 0, length = c.length; i < length; i++)
                if (!d != !a(c[i], i)) b.push(c[i]);
            return b
        },
        map: function(d, a) {
            var c = [];
            for (var i = 0, length = d.length; i < length; i++) {
                var b = a(d[i], i);
                if (b != null) c[c.length] = b
            }
            return c.concat.apply([], c)
        }
    });
    var v = navigator.userAgent.toLowerCase();
    D.browser = {
        version: (v.match(/.+(?:rv|it|ra|ie)[\/: ]([\d.]+)/) || [])[1],
        safari: /webkit/.test(v),
        opera: /opera/.test(v),
        msie: /msie/.test(v) && !/opera/.test(v),
        mozilla: /mozilla/.test(v) && !/(compatible|webkit)/.test(v)
    };
    var y = D.browser.msie ? "styleFloat" : "cssFloat";
    D.extend({
        boxModel: !D.browser.msie || document.compatMode == "CSS1Compat",
        props: {
            "for": "htmlFor",
            "class": "className",
            "float": y,
            cssFloat: y,
            styleFloat: y,
            readonly: "readOnly",
            maxlength: "maxLength",
            cellspacing: "cellSpacing"
        }
    });
    D.each({
        parent: function(a) {
            return a.parentNode
        },
        parents: function(a) {
            return D.dir(a, "parentNode")
        },
        next: function(a) {
            return D.nth(a, 2, "nextSibling")
        },
        prev: function(a) {
            return D.nth(a, 2, "previousSibling")
        },
        nextAll: function(a) {
            return D.dir(a, "nextSibling")
        },
        prevAll: function(a) {
            return D.dir(a, "previousSibling")
        },
        siblings: function(a) {
            return D.sibling(a.parentNode.firstChild, a)
        },
        children: function(a) {
            return D.sibling(a.firstChild)
        },
        contents: function(a) {
            return D.nodeName(a, "iframe") ? a.contentDocument || a.contentWindow.document : D.makeArray(a.childNodes)
        }
    }, function(c, d) {
        D.fn[c] = function(b) {
            var a = D.map(this, d);
            if (b && typeof b == "string") a = D.multiFilter(b, a);
            return this.pushStack(D.unique(a))
        }
    });
    D.each({
        appendTo: "append",
        prependTo: "prepend",
        insertBefore: "before",
        insertAfter: "after",
        replaceAll: "replaceWith"
    }, function(c, b) {
        D.fn[c] = function() {
            var a = arguments;
            return this.each(function() {
                for (var i = 0, length = a.length; i < length; i++) D(a[i])[b](this)
            })
        }
    });
    D.each({
        removeAttr: function(a) {
            D.attr(this, a, "");
            if (this.nodeType == 1) this.removeAttribute(a)
        },
        addClass: function(a) {
            D.className.add(this, a)
        },
        removeClass: function(a) {
            D.className.remove(this, a)
        },
        toggleClass: function(a) {
            D.className[D.className.has(this, a) ? "remove" : "add"](this, a)
        },
        remove: function(a) {
            if (!a || D.filter(a, [this]).r.length) {
                D("*", this).add(this).each(function() {
                    D.event.remove(this);
                    D.removeData(this)
                });
                if (this.parentNode) this.parentNode.removeChild(this)
            }
        },
        empty: function() {
            D(">*", this).remove();
            while (this.firstChild) this.removeChild(this.firstChild)
        }
    }, function(a, b) {
        D.fn[a] = function() {
            return this.each(b, arguments)
        }
    });
    D.each(["Height", "Width"], function(i, c) {
        var b = c.toLowerCase();
        D.fn[b] = function(a) {
            return this[0] == window ? D.browser.opera && document.body["client" + c] || D.browser.safari && window["inner" + c] || document.compatMode == "CSS1Compat" && document.documentElement["client" + c] || document.body["client" + c] : this[0] == document ? Math.max(Math.max(document.body["scroll" + c], document.documentElement["scroll" + c]), Math.max(document.body["offset" + c], document.documentElement["offset" + c])) : a == undefined ? (this.length ? D.css(this[0], b) : null) : this.css(b, a.constructor == String ? a : a + "px")
        }
    });

    function num(a, b) {
        return a[0] && parseInt(D.curCSS(a[0], b, true), 10) || 0
    }
    var C = D.browser.safari && parseInt(D.browser.version) < 417 ? "(?:[\\w*_-]|\\\\.)" : "(?:[\\w\u0128-\uFFFF*_-]|\\\\.)",
        quickChild = new RegExp("^>\\s*(" + C + "+)"),
        quickID = new RegExp("^(" + C + "+)(#)(" + C + "+)"),
        quickClass = new RegExp("^([#.]?)(" + C + "*)");
    D.extend({
        expr: {
            "": function(a, i, m) {
                return m[2] == "*" || D.nodeName(a, m[2])
            },
            "#": function(a, i, m) {
                return a.getAttribute("id") == m[2]
            },
            ":": {
                lt: function(a, i, m) {
                    return i < m[3] - 0
                },
                gt: function(a, i, m) {
                    return i > m[3] - 0
                },
                nth: function(a, i, m) {
                    return m[3] - 0 == i
                },
                eq: function(a, i, m) {
                    return m[3] - 0 == i
                },
                first: function(a, i) {
                    return i == 0
                },
                last: function(a, i, m, r) {
                    return i == r.length - 1
                },
                even: function(a, i) {
                    return i % 2 == 0
                },
                odd: function(a, i) {
                    return i % 2
                },
                "first-child": function(a) {
                    return a.parentNode.getElementsByTagName("*")[0] == a
                },
                "last-child": function(a) {
                    return D.nth(a.parentNode.lastChild, 1, "previousSibling") == a
                },
                "only-child": function(a) {
                    return !D.nth(a.parentNode.lastChild, 2, "previousSibling")
                },
                parent: function(a) {
                    return a.firstChild
                },
                empty: function(a) {
                    return !a.firstChild
                },
                contains: function(a, i, m) {
                    return (a.textContent || a.innerText || D(a).text() || "").indexOf(m[3]) >= 0
                },
                visible: function(a) {
                    return "hidden" != a.type && D.css(a, "display") != "none" && D.css(a, "visibility") != "hidden"
                },
                hidden: function(a) {
                    return "hidden" == a.type || D.css(a, "display") == "none" || D.css(a, "visibility") == "hidden"
                },
                enabled: function(a) {
                    return !a.disabled
                },
                disabled: function(a) {
                    return a.disabled
                },
                checked: function(a) {
                    return a.checked
                },
                selected: function(a) {
                    return a.selected || D.attr(a, "selected")
                },
                text: function(a) {
                    return "text" == a.type
                },
                radio: function(a) {
                    return "radio" == a.type
                },
                checkbox: function(a) {
                    return "checkbox" == a.type
                },
                file: function(a) {
                    return "file" == a.type
                },
                password: function(a) {
                    return "password" == a.type
                },
                submit: function(a) {
                    return "submit" == a.type
                },
                image: function(a) {
                    return "image" == a.type
                },
                reset: function(a) {
                    return "reset" == a.type
                },
                button: function(a) {
                    return "button" == a.type || D.nodeName(a, "button")
                },
                input: function(a) {
                    return /input|select|textarea|button/i.test(a.nodeName)
                },
                has: function(a, i, m) {
                    return D.find(m[3], a).length
                },
                header: function(a) {
                    return /h\d/i.test(a.nodeName)
                },
                animated: function(a) {
                    return D.grep(D.timers, function(b) {
                        return a == b.elem
                    }).length
                }
            }
        },
        parse: [/^(\[) *@?([\w-]+) *([!*$^~=]*) *('?"?)(.*?)\4 *\]/, /^(:)([\w-]+)\("?'?(.*?(\(.*?\))?[^(]*?)"?'?\)/, new RegExp("^([:.#]*)(" + C + "+)")],
        multiFilter: function(a, c, b) {
            var d, cur = [];
            while (a && a != d) {
                d = a;
                var f = D.filter(a, c, b);
                a = f.t.replace(/^\s*,\s*/, "");
                cur = b ? c = f.r : D.merge(cur, f.r)
            }
            return cur
        },
        find: function(t, o) {
            if (typeof t != "string") return [t];
            if (o && o.nodeType != 1 && o.nodeType != 9) return [];
            o = o || document;
            var d = [o],
                done = [],
                last, nodeName;
            while (t && last != t) {
                var r = [];
                last = t;
                t = D.trim(t);
                var l = false,
                    re = quickChild,
                    m = re.exec(t);
                if (m) {
                    nodeName = m[1].toUpperCase();
                    for (var i = 0; d[i]; i++)
                        for (var c = d[i].firstChild; c; c = c.nextSibling)
                            if (c.nodeType == 1 && (nodeName == "*" || c.nodeName.toUpperCase() == nodeName)) r.push(c);
                    d = r;
                    t = t.replace(re, "");
                    if (t.indexOf(" ") == 0) continue;
                    l = true
                } else {
                    re = /^([>+~])\s*(\w*)/i;
                    if ((m = re.exec(t)) != null) {
                        r = [];
                        var k = {};
                        nodeName = m[2].toUpperCase();
                        m = m[1];
                        for (var j = 0, rl = d.length; j < rl; j++) {
                            var n = m == "~" || m == "+" ? d[j].nextSibling : d[j].firstChild;
                            for (; n; n = n.nextSibling)
                                if (n.nodeType == 1) {
                                    var g = D.data(n);
                                    if (m == "~" && k[g]) break;
                                    if (!nodeName || n.nodeName.toUpperCase() == nodeName) {
                                        if (m == "~") k[g] = true;
                                        r.push(n)
                                    }
                                    if (m == "+") break
                                }
                        }
                        d = r;
                        t = D.trim(t.replace(re, ""));
                        l = true
                    }
                } if (t && !l) {
                    if (!t.indexOf(",")) {
                        if (o == d[0]) d.shift();
                        done = D.merge(done, d);
                        r = d = [o];
                        t = " " + t.substr(1, t.length)
                    } else {
                        var h = quickID;
                        var m = h.exec(t);
                        if (m) {
                            m = [0, m[2], m[3], m[1]]
                        } else {
                            h = quickClass;
                            m = h.exec(t)
                        }
                        m[2] = m[2].replace(/\\/g, "");
                        var f = d[d.length - 1];
                        if (m[1] == "#" && f && f.getElementById && !D.isXMLDoc(f)) {
                            var p = f.getElementById(m[2]);
                            if ((D.browser.msie || D.browser.opera) && p && typeof p.id == "string" && p.id != m[2]) p = D('[@id="' + m[2] + '"]', f)[0];
                            d = r = p && (!m[3] || D.nodeName(p, m[3])) ? [p] : []
                        } else {
                            for (var i = 0; d[i]; i++) {
                                var a = m[1] == "#" && m[3] ? m[3] : m[1] != "" || m[0] == "" ? "*" : m[2];
                                if (a == "*" && d[i].nodeName.toLowerCase() == "object") a = "param";
                                r = D.merge(r, d[i].getElementsByTagName(a))
                            }
                            if (m[1] == ".") r = D.classFilter(r, m[2]);
                            if (m[1] == "#") {
                                var e = [];
                                for (var i = 0; r[i]; i++)
                                    if (r[i].getAttribute("id") == m[2]) {
                                        e = [r[i]];
                                        break
                                    }
                                r = e
                            }
                            d = r
                        }
                        t = t.replace(h, "")
                    }
                }
                if (t) {
                    var b = D.filter(t, r);
                    d = r = b.r;
                    t = D.trim(b.t)
                }
            }
            if (t) d = [];
            if (d && o == d[0]) d.shift();
            done = D.merge(done, d);
            return done
        },
        classFilter: function(r, m, a) {
            m = " " + m + " ";
            var c = [];
            for (var i = 0; r[i]; i++) {
                var b = (" " + r[i].className + " ").indexOf(m) >= 0;
                if (!a && b || a && !b) c.push(r[i])
            }
            return c
        },
        filter: function(t, r, h) {
            var d;
            while (t && t != d) {
                d = t;
                var p = D.parse,
                    m;
                for (var i = 0; p[i]; i++) {
                    m = p[i].exec(t);
                    if (m) {
                        t = t.substring(m[0].length);
                        m[2] = m[2].replace(/\\/g, "");
                        break
                    }
                }
                if (!m) break;
                if (m[1] == ":" && m[2] == "not") r = isSimple.test(m[3]) ? D.filter(m[3], r, true).r : D(r).not(m[3]);
                else if (m[1] == ".") r = D.classFilter(r, m[2], h);
                else if (m[1] == "[") {
                    var g = [],
                        type = m[3];
                    for (var i = 0, rl = r.length; i < rl; i++) {
                        var a = r[i],
                            z = a[D.props[m[2]] || m[2]];
                        if (z == null || /href|src|selected/.test(m[2])) z = D.attr(a, m[2]) || '';
                        if ((type == "" && !!z || type == "=" && z == m[5] || type == "!=" && z != m[5] || type == "^=" && z && !z.indexOf(m[5]) || type == "$=" && z.substr(z.length - m[5].length) == m[5] || (type == "*=" || type == "~=") && z.indexOf(m[5]) >= 0) ^ h) g.push(a)
                    }
                    r = g
                } else if (m[1] == ":" && m[2] == "nth-child") {
                    var e = {},
                        g = [],
                        test = /(-?)(\d*)n((?:\+|-)?\d*)/.exec(m[3] == "even" && "2n" || m[3] == "odd" && "2n+1" || !/\D/.test(m[3]) && "0n+" + m[3] || m[3]),
                        first = (test[1] + (test[2] || 1)) - 0,
                        d = test[3] - 0;
                    for (var i = 0, rl = r.length; i < rl; i++) {
                        var j = r[i],
                            parentNode = j.parentNode,
                            id = D.data(parentNode);
                        if (!e[id]) {
                            var c = 1;
                            for (var n = parentNode.firstChild; n; n = n.nextSibling)
                                if (n.nodeType == 1) n.nodeIndex = c++;
                            e[id] = true
                        }
                        var b = false;
                        if (first == 0) {
                            if (j.nodeIndex == d) b = true
                        } else if ((j.nodeIndex - d) % first == 0 && (j.nodeIndex - d) / first >= 0) b = true;
                        if (b ^ h) g.push(j)
                    }
                    r = g
                } else {
                    var f = D.expr[m[1]];
                    if (typeof f == "object") f = f[m[2]];
                    if (typeof f == "string") f = eval("false||function(a,i){return " + f + ";}");
                    r = D.grep(r, function(a, i) {
                        return f(a, i, m, r)
                    }, h)
                }
            }
            return {
                r: r,
                t: t
            }
        },
        dir: function(b, c) {
            var a = [],
                cur = b[c];
            while (cur && cur != document) {
                if (cur.nodeType == 1) a.push(cur);
                cur = cur[c]
            }
            return a
        },
        nth: function(a, e, c, b) {
            e = e || 1;
            var d = 0;
            for (; a; a = a[c])
                if (a.nodeType == 1 && ++d == e) break;
            return a
        },
        sibling: function(n, a) {
            var r = [];
            for (; n; n = n.nextSibling) {
                if (n.nodeType == 1 && n != a) r.push(n)
            }
            return r
        }
    });
    D.event = {
        add: function(f, i, g, e) {
            if (f.nodeType == 3 || f.nodeType == 8) return;
            if (D.browser.msie && f.setInterval) f = window;
            if (!g.guid) g.guid = this.guid++;
            if (e != undefined) {
                var h = g;
                g = this.proxy(h, function() {
                    return h.apply(this, arguments)
                });
                g.data = e
            }
            var j = D.data(f, "events") || D.data(f, "events", {}),
                handle = D.data(f, "handle") || D.data(f, "handle", function() {
                    if (typeof D != "undefined" && !D.event.triggered) return D.event.handle.apply(arguments.callee.elem, arguments)
                });
            handle.elem = f;
            D.each(i.split(/\s+/), function(c, b) {
                var a = b.split(".");
                b = a[0];
                g.type = a[1];
                var d = j[b];
                if (!d) {
                    d = j[b] = {};
                    if (!D.event.special[b] || D.event.special[b].setup.call(f) === false) {
                        if (f.addEventListener) f.addEventListener(b, handle, false);
                        else if (f.attachEvent) f.attachEvent("on" + b, handle)
                    }
                }
                d[g.guid] = g;
                D.event.global[b] = true
            });
            f = null
        },
        guid: 1,
        global: {},
        remove: function(e, h, f) {
            if (e.nodeType == 3 || e.nodeType == 8) return;
            var i = D.data(e, "events"),
                ret, index;
            if (i) {
                if (h == undefined || (typeof h == "string" && h.charAt(0) == "."))
                    for (var g in i) this.remove(e, g + (h || ""));
                else {
                    if (h.type) {
                        f = h.handler;
                        h = h.type
                    }
                    D.each(h.split(/\s+/), function(b, a) {
                        var c = a.split(".");
                        a = c[0];
                        if (i[a]) {
                            if (f) delete i[a][f.guid];
                            else
                                for (f in i[a])
                                    if (!c[1] || i[a][f].type == c[1]) delete i[a][f]; for (ret in i[a]) break;
                            if (!ret) {
                                if (!D.event.special[a] || D.event.special[a].teardown.call(e) === false) {
                                    if (e.removeEventListener) e.removeEventListener(a, D.data(e, "handle"), false);
                                    else if (e.detachEvent) e.detachEvent("on" + a, D.data(e, "handle"))
                                }
                                ret = null;
                                delete i[a]
                            }
                        }
                    })
                }
                for (ret in i) break;
                if (!ret) {
                    var d = D.data(e, "handle");
                    if (d) d.elem = null;
                    D.removeData(e, "events");
                    D.removeData(e, "handle")
                }
            }
        },
        trigger: function(h, c, f, g, i) {
            c = D.makeArray(c);
            if (h.indexOf("!") >= 0) {
                h = h.slice(0, -1);
                var a = true
            }
            if (!f) {
                if (this.global[h]) D("*").add([window, document]).trigger(h, c)
            } else {
                if (f.nodeType == 3 || f.nodeType == 8) return undefined;
                var b, ret, fn = D.isFunction(f[h] || null),
                    event = !c[0] || !c[0].preventDefault;
                if (event) {
                    c.unshift({
                        type: h,
                        target: f,
                        preventDefault: function() {},
                        stopPropagation: function() {},
                        timeStamp: now()
                    });
                    c[0][E] = true
                }
                c[0].type = h;
                if (a) c[0].exclusive = true;
                var d = D.data(f, "handle");
                if (d) b = d.apply(f, c);
                if ((!fn || (D.nodeName(f, 'a') && h == "click")) && f["on" + h] && f["on" + h].apply(f, c) === false) b = false;
                if (event) c.shift();
                if (i && D.isFunction(i)) {
                    ret = i.apply(f, b == null ? c : c.concat(b));
                    if (ret !== undefined) b = ret
                }
                if (fn && g !== false && b !== false && !(D.nodeName(f, 'a') && h == "click")) {
                    this.triggered = true;
                    try {
                        f[h]()
                    } catch (e) {}
                }
                this.triggered = false
            }
            return b
        },
        handle: function(b) {
            var a, ret, namespace, all, handlers;
            b = arguments[0] = D.event.fix(b || window.event);
            namespace = b.type.split(".");
            b.type = namespace[0];
            namespace = namespace[1];
            all = !namespace && !b.exclusive;
            handlers = (D.data(this, "events") || {})[b.type];
            for (var j in handlers) {
                var c = handlers[j];
                if (all || c.type == namespace) {
                    b.handler = c;
                    b.data = c.data;
                    ret = c.apply(this, arguments);
                    if (a !== false) a = ret;
                    if (ret === false) {
                        b.preventDefault();
                        b.stopPropagation()
                    }
                }
            }
            return a
        },
        fix: function(b) {
            if (b[E] == true) return b;
            var d = b;
            b = {
                originalEvent: d
            };
            var c = "altKey attrChange attrName bubbles button cancelable charCode clientX clientY ctrlKey currentTarget data detail eventPhase fromElement handler keyCode metaKey newValue originalTarget pageX pageY prevValue relatedNode relatedTarget screenX screenY shiftKey srcElement target timeStamp toElement type view wheelDelta which".split(" ");
            for (var i = c.length; i; i--) b[c[i]] = d[c[i]];
            b[E] = true;
            b.preventDefault = function() {
                if (d.preventDefault) d.preventDefault();
                d.returnValue = false
            };
            b.stopPropagation = function() {
                if (d.stopPropagation) d.stopPropagation();
                d.cancelBubble = true
            };
            b.timeStamp = b.timeStamp || now();
            if (!b.target) b.target = b.srcElement || document;
            if (b.target.nodeType == 3) b.target = b.target.parentNode;
            if (!b.relatedTarget && b.fromElement) b.relatedTarget = b.fromElement == b.target ? b.toElement : b.fromElement;
            if (b.pageX == null && b.clientX != null) {
                var a = document.documentElement,
                    body = document.body;
                b.pageX = b.clientX + (a && a.scrollLeft || body && body.scrollLeft || 0) - (a.clientLeft || 0);
                b.pageY = b.clientY + (a && a.scrollTop || body && body.scrollTop || 0) - (a.clientTop || 0)
            }
            if (!b.which && ((b.charCode || b.charCode === 0) ? b.charCode : b.keyCode)) b.which = b.charCode || b.keyCode;
            if (!b.metaKey && b.ctrlKey) b.metaKey = b.ctrlKey;
            if (!b.which && b.button) b.which = (b.button & 1 ? 1 : (b.button & 2 ? 3 : (b.button & 4 ? 2 : 0)));
            return b
        },
        proxy: function(a, b) {
            b.guid = a.guid = a.guid || b.guid || this.guid++;
            return b
        },
        special: {
            ready: {
                setup: function() {
                    bindReady();
                    return
                },
                teardown: function() {
                    return
                }
            },
            mouseenter: {
                setup: function() {
                    if (D.browser.msie) return false;
                    D(this).bind("mouseover", D.event.special.mouseenter.handler);
                    return true
                },
                teardown: function() {
                    if (D.browser.msie) return false;
                    D(this).unbind("mouseover", D.event.special.mouseenter.handler);
                    return true
                },
                handler: function(a) {
                    if (F(a, this)) return true;
                    a.type = "mouseenter";
                    return D.event.handle.apply(this, arguments)
                }
            },
            mouseleave: {
                setup: function() {
                    if (D.browser.msie) return false;
                    D(this).bind("mouseout", D.event.special.mouseleave.handler);
                    return true
                },

                teardown: function() {
                    if (D.browser.msie) return false;
                    D(this).unbind("mouseout", D.event.special.mouseleave.handler);
                    return true
                },
                handler: function(a) {
                    if (F(a, this)) return true;
                    a.type = "mouseleave";
                    return D.event.handle.apply(this, arguments)
                }
            }
        }
    };
    D.fn.extend({
        bind: function(c, a, b) {
            return c == "unload" ? this.one(c, a, b) : this.each(function() {
                D.event.add(this, c, b || a, b && a)
            })
        },
        one: function(d, b, c) {
            var e = D.event.proxy(c || b, function(a) {
                D(this).unbind(a, e);
                return (c || b).apply(this, arguments)
            });
            return this.each(function() {
                D.event.add(this, d, e, c && b)
            })
        },
        unbind: function(a, b) {
            return this.each(function() {
                D.event.remove(this, a, b)
            })
        },
        trigger: function(c, a, b) {
            return this.each(function() {
                D.event.trigger(c, a, this, true, b)
            })
        },
        triggerHandler: function(c, a, b) {
            return this[0] && D.event.trigger(c, a, this[0], false, b)
        },
        toggle: function(b) {
            var c = arguments,
                i = 1;
            while (i < c.length) D.event.proxy(b, c[i++]);
            return this.click(D.event.proxy(b, function(a) {
                this.lastToggle = (this.lastToggle || 0) % i;
                a.preventDefault();
                return c[this.lastToggle++].apply(this, arguments) || false
            }))
        },
        hover: function(a, b) {
            return this.bind('mouseenter', a).bind('mouseleave', b)
        },
        ready: function(a) {
            bindReady();
            if (D.isReady) a.call(document, D);
            else D.readyList.push(function() {
                return a.call(this, D)
            });
            return this
        }
    });
    D.extend({
        isReady: false,
        readyList: [],
        ready: function() {
            if (!D.isReady) {
                D.isReady = true;
                if (D.readyList) {
                    D.each(D.readyList, function() {
                        this.call(document)
                    });
                    D.readyList = null
                }
                D(document).triggerHandler("ready")
            }
        }
    });
    var x = false;

    function bindReady() {
        if (x) return;
        x = true;
        if (document.addEventListener && !D.browser.opera) document.addEventListener("DOMContentLoaded", D.ready, false);
        if (D.browser.msie && window == top)(function() {
            if (D.isReady) return;
            try {
                document.documentElement.doScroll("left")
            } catch (error) {
                setTimeout(arguments.callee, 0);
                return
            }
            D.ready()
        })();
        if (D.browser.opera) document.addEventListener("DOMContentLoaded", function() {
            if (D.isReady) return;
            for (var i = 0; i < document.styleSheets.length; i++)
                if (document.styleSheets[i].disabled) {
                    setTimeout(arguments.callee, 0);
                    return
                }
            D.ready()
        }, false);
        if (D.browser.safari) {
            var a;
            (function() {
                if (D.isReady) return;
                if (document.readyState != "loaded" && document.readyState != "complete") {
                    setTimeout(arguments.callee, 0);
                    return
                }
                if (a === undefined) a = D("style, link[rel=stylesheet]").length;
                if (document.styleSheets.length != a) {
                    setTimeout(arguments.callee, 0);
                    return
                }
                D.ready()
            })()
        }
        D.event.add(window, "load", D.ready)
    }
    D.each(("blur,focus,load,resize,scroll,unload,click,dblclick," + "mousedown,mouseup,mousemove,mouseover,mouseout,change,select," + "submit,keydown,keypress,keyup,error").split(","), function(i, b) {
        D.fn[b] = function(a) {
            return a ? this.bind(b, a) : this.trigger(b)
        }
    });
    var F = function(a, c) {
        var b = a.relatedTarget;
        while (b && b != c) try {
            b = b.parentNode
        } catch (error) {
            b = c
        }
        return b == c
    };
    D(window).bind("unload", function() {
        D("*").add(document).unbind()
    });
    D.fn.extend({
        _load: D.fn.load,
        load: function(g, d, c) {
            if (typeof g != 'string') return this._load(g);
            var e = g.indexOf(" ");
            if (e >= 0) {
                var i = g.slice(e, g.length);
                g = g.slice(0, e)
            }
            c = c || function() {};
            var f = "GET";
            if (d)
                if (D.isFunction(d)) {
                    c = d;
                    d = null
                } else {
                    d = D.param(d);
                    f = "POST"
                }
            var h = this;
            D.ajax({
                url: g,
                type: f,
                dataType: "html",
                data: d,
                complete: function(a, b) {
                    if (b == "success" || b == "notmodified") h.html(i ? D("<div/>").append(a.responseText.replace(/<script(.|\s)*?\/script>/g, "")).find(i) : a.responseText);
                    h.each(c, [a.responseText, b, a])
                }
            });
            return this
        },
        serialize: function() {
            return D.param(this.serializeArray())
        },
        serializeArray: function() {
            return this.map(function() {
                return D.nodeName(this, "form") ? D.makeArray(this.elements) : this
            }).filter(function() {
                return this.name && !this.disabled && (this.checked || /select|textarea/i.test(this.nodeName) || /text|hidden|password/i.test(this.type))
            }).map(function(i, c) {
                var b = D(this).val();
                return b == null ? null : b.constructor == Array ? D.map(b, function(a, i) {
                    return {
                        name: c.name,
                        value: a
                    }
                }) : {
                    name: c.name,
                    value: b
                }
            }).get()
        }
    });
    D.each("ajaxStart,ajaxStop,ajaxComplete,ajaxError,ajaxSuccess,ajaxSend".split(","), function(i, o) {
        D.fn[o] = function(f) {
            return this.bind(o, f)
        }
    });
    var B = now();
    D.extend({
        get: function(d, b, a, c) {
            if (D.isFunction(b)) {
                a = b;
                b = null
            }
            return D.ajax({
                type: "GET",
                url: d,
                data: b,
                success: a,
                dataType: c
            })
        },
        getScript: function(b, a) {
            return D.get(b, null, a, "script")
        },
        getJSON: function(c, b, a) {
            return D.get(c, b, a, "json")
        },
        post: function(d, b, a, c) {
            if (D.isFunction(b)) {
                a = b;
                b = {}
            }
            return D.ajax({
                type: "POST",
                url: d,
                data: b,
                success: a,
                dataType: c
            })
        },
        ajaxSetup: function(a) {
            D.extend(D.ajaxSettings, a)
        },
        ajaxSettings: {
            url: location.href,
            global: true,
            type: "GET",
            timeout: 0,
            contentType: "application/x-www-form-urlencoded",
            processData: true,
            async: true,
            data: null,
            username: null,
            password: null,
            accepts: {
                xml: "application/xml, text/xml",
                html: "text/html",
                script: "text/javascript, application/javascript",
                json: "application/json, text/javascript",
                text: "text/plain",
                _default: "*/*"
            }
        },
        lastModified: {},
        ajax: function(s) {
            s = D.extend(true, s, D.extend(true, {}, D.ajaxSettings, s));
            var g, jsre = /=\?(&|$)/g,
                status, data, type = s.type.toUpperCase();
            if (s.data && s.processData && typeof s.data != "string") s.data = D.param(s.data);
            if (s.dataType == "jsonp") {
                if (type == "GET") {
                    if (!s.url.match(jsre)) s.url += (s.url.match(/\?/) ? "&" : "?") + (s.jsonp || "callback") + "=?"
                } else if (!s.data || !s.data.match(jsre)) s.data = (s.data ? s.data + "&" : "") + (s.jsonp || "callback") + "=?";
                s.dataType = "json"
            }
            if (s.dataType == "json" && (s.data && s.data.match(jsre) || s.url.match(jsre))) {
                g = "jsonp" + B++;
                if (s.data) s.data = (s.data + "").replace(jsre, "=" + g + "$1");
                s.url = s.url.replace(jsre, "=" + g + "$1");
                s.dataType = "script";
                window[g] = function(a) {
                    data = a;
                    success();
                    complete();
                    window[g] = undefined;
                    try {
                        delete window[g]
                    } catch (e) {}
                    if (i) i.removeChild(h)
                }
            }
            if (s.dataType == "script" && s.cache == null) s.cache = false;
            if (s.cache === false && type == "GET") {
                var j = now();
                var k = s.url.replace(/(\?|&)_=.*?(&|$)/, "$1_=" + j + "$2");
                s.url = k + ((k == s.url) ? (s.url.match(/\?/) ? "&" : "?") + "_=" + j : "")
            }
            if (s.data && type == "GET") {
                s.url += (s.url.match(/\?/) ? "&" : "?") + s.data;
                s.data = null
            }
            if (s.global && !D.active++) D.event.trigger("ajaxStart");
            var n = /^(?:\w+:)?\/\/([^\/?#]+)/;
            if (s.dataType == "script" && type == "GET" && n.test(s.url) && n.exec(s.url)[1] != location.host) {
                var i = document.getElementsByTagName("head")[0];
                var h = document.createElement("script");
                h.src = s.url;
                if (s.scriptCharset) h.charset = s.scriptCharset;
                if (!g) {
                    var l = false;
                    h.onload = h.onreadystatechange = function() {
                        if (!l && (!this.readyState || this.readyState == "loaded" || this.readyState == "complete")) {
                            l = true;
                            success();
                            complete();
                            i.removeChild(h)
                        }
                    }
                }
                i.appendChild(h);
                return undefined
            }
            var m = false;
            var c = window.ActiveXObject ? new ActiveXObject("Microsoft.XMLHTTP") : new XMLHttpRequest();
            if (s.username) c.open(type, s.url, s.async, s.username, s.password);
            else c.open(type, s.url, s.async);
            try {
                if (s.data) c.setRequestHeader("Content-Type", s.contentType);
                if (s.ifModified) c.setRequestHeader("If-Modified-Since", D.lastModified[s.url] || "Thu, 01 Jan 1970 00:00:00 GMT");
                c.setRequestHeader("X-Requested-With", "XMLHttpRequest");
                c.setRequestHeader("Accept", s.dataType && s.accepts[s.dataType] ? s.accepts[s.dataType] + ", */*" : s.accepts._default)
            } catch (e) {}
            if (s.beforeSend && s.beforeSend(c, s) === false) {
                s.global && D.active--;
                c.abort();
                return false
            }
            if (s.global) D.event.trigger("ajaxSend", [c, s]);
            var d = function(a) {
                if (!m && c && (c.readyState == 4 || a == "timeout")) {
                    m = true;
                    if (f) {
                        clearInterval(f);
                        f = null
                    }
                    status = a == "timeout" && "timeout" || !D.httpSuccess(c) && "error" || s.ifModified && D.httpNotModified(c, s.url) && "notmodified" || "success";
                    if (status == "success") {
                        try {
                            data = D.httpData(c, s.dataType, s.dataFilter)
                        } catch (e) {
                            status = "parsererror"
                        }
                    }
                    if (status == "success") {
                        var b;
                        try {
                            b = c.getResponseHeader("Last-Modified")
                        } catch (e) {}
                        if (s.ifModified && b) D.lastModified[s.url] = b;
                        if (!g) success()
                    } else D.handleError(s, c, status);
                    complete();
                    if (s.async) c = null
                }
            };
            if (s.async) {
                var f = setInterval(d, 13);
                if (s.timeout > 0) setTimeout(function() {
                    if (c) {
                        c.abort();
                        if (!m) d("timeout")
                    }
                }, s.timeout)
            }
            try {
                c.send(s.data)
            } catch (e) {
                D.handleError(s, c, null, e)
            }
            if (!s.async) d();

            function success() {
                if (s.success) s.success(data, status);
                if (s.global) D.event.trigger("ajaxSuccess", [c, s])
            }

            function complete() {
                if (s.complete) s.complete(c, status);
                if (s.global) D.event.trigger("ajaxComplete", [c, s]);
                if (s.global && !--D.active) D.event.trigger("ajaxStop")
            }
            return c
        },
        handleError: function(s, a, b, e) {
            if (s.error) s.error(a, b, e);
            if (s.global) D.event.trigger("ajaxError", [a, s, e])
        },
        active: 0,
        httpSuccess: function(a) {
            try {
                return !a.status && location.protocol == "file:" || (a.status >= 200 && a.status < 300) || a.status == 304 || a.status == 1223 || D.browser.safari && a.status == undefined
            } catch (e) {}
            return false
        },
        httpNotModified: function(a, c) {
            try {
                var b = a.getResponseHeader("Last-Modified");
                return a.status == 304 || b == D.lastModified[c] || D.browser.safari && a.status == undefined
            } catch (e) {}
            return false
        },
        httpData: function(a, c, b) {
            var d = a.getResponseHeader("content-type"),
                xml = c == "xml" || !c && d && d.indexOf("xml") >= 0,
                data = xml ? a.responseXML : a.responseText;
            if (xml && data.documentElement.tagName == "parsererror") throw "parsererror";
            if (b) data = b(data, c);
            if (c == "script") D.globalEval(data);
            if (c == "json") data = eval("(" + data + ")");
            return data
        },
        param: function(a) {
            var s = [];
            if (a.constructor == Array || a.jquery) D.each(a, function() {
                s.push(encodeURIComponent(this.name) + "=" + encodeURIComponent(this.value))
            });
            else
                for (var j in a)
                    if (a[j] && a[j].constructor == Array) D.each(a[j], function() {
                        s.push(encodeURIComponent(j) + "=" + encodeURIComponent(this))
                    });
                    else s.push(encodeURIComponent(j) + "=" + encodeURIComponent(D.isFunction(a[j]) ? a[j]() : a[j])); return s.join("&").replace(/%20/g, "+")
        }
    });
    D.fn.extend({
        show: function(c, b) {
            return c ? this.animate({
                height: "show",
                width: "show",
                opacity: "show"
            }, c, b) : this.filter(":hidden").each(function() {
                this.style.display = this.oldblock || "";
                if (D.css(this, "display") == "none") {
                    var a = D("<" + this.tagName + " />").appendTo("body");
                    this.style.display = a.css("display");
                    if (this.style.display == "none") this.style.display = "block";
                    a.remove()
                }
            }).end()
        },
        hide: function(b, a) {
            return b ? this.animate({
                height: "hide",
                width: "hide",
                opacity: "hide"
            }, b, a) : this.filter(":visible").each(function() {
                this.oldblock = this.oldblock || D.css(this, "display");
                this.style.display = "none"
            }).end()
        },
        _toggle: D.fn.toggle,
        toggle: function(a, b) {
            return D.isFunction(a) && D.isFunction(b) ? this._toggle.apply(this, arguments) : a ? this.animate({
                height: "toggle",
                width: "toggle",
                opacity: "toggle"
            }, a, b) : this.each(function() {
                D(this)[D(this).is(":hidden") ? "show" : "hide"]()
            })
        },
        slideDown: function(b, a) {
            return this.animate({
                height: "show"
            }, b, a)
        },
        slideUp: function(b, a) {
            return this.animate({
                height: "hide"
            }, b, a)
        },
        slideToggle: function(b, a) {
            return this.animate({
                height: "toggle"
            }, b, a)
        },
        fadeIn: function(b, a) {
            return this.animate({
                opacity: "show"
            }, b, a)
        },
        fadeOut: function(b, a) {
            return this.animate({
                opacity: "hide"
            }, b, a)
        },
        fadeTo: function(c, a, b) {
            return this.animate({
                opacity: a
            }, c, b)
        },
        animate: function(k, j, i, g) {
            var h = D.speed(j, i, g);
            return this[h.queue === false ? "each" : "queue"](function() {
                if (this.nodeType != 1) return false;
                var f = D.extend({}, h),
                    p, hidden = D(this).is(":hidden"),
                    self = this;
                for (p in k) {
                    if (k[p] == "hide" && hidden || k[p] == "show" && !hidden) return f.complete.call(this);
                    if (p == "height" || p == "width") {
                        f.display = D.css(this, "display");
                        f.overflow = this.style.overflow
                    }
                }
                if (f.overflow != null) this.style.overflow = "hidden";
                f.curAnim = D.extend({}, k);
                D.each(k, function(c, a) {
                    var e = new D.fx(self, f, c);
                    if (/toggle|show|hide/.test(a)) e[a == "toggle" ? hidden ? "show" : "hide" : a](k);
                    else {
                        var b = a.toString().match(/^([+-]=)?([\d+-.]+)(.*)$/),
                            start = e.cur(true) || 0;
                        if (b) {
                            var d = parseFloat(b[2]),
                                unit = b[3] || "px";
                            if (unit != "px") {
                                self.style[c] = (d || 1) + unit;
                                start = ((d || 1) / e.cur(true)) * start;
                                self.style[c] = start + unit
                            }
                            if (b[1]) d = ((b[1] == "-=" ? -1 : 1) * d) + start;
                            e.custom(start, d, unit)
                        } else e.custom(start, a, "")
                    }
                });
                return true
            })
        },
        queue: function(a, b) {
            if (D.isFunction(a) || (a && a.constructor == Array)) {
                b = a;
                a = "fx"
            }
            if (!a || (typeof a == "string" && !b)) return A(this[0], a);
            return this.each(function() {
                if (b.constructor == Array) A(this, a, b);
                else {
                    A(this, a).push(b);
                    if (A(this, a).length == 1) b.call(this)
                }
            })
        },
        stop: function(b, c) {
            var a = D.timers;
            if (b) this.queue([]);
            this.each(function() {
                for (var i = a.length - 1; i >= 0; i--)
                    if (a[i].elem == this) {
                        if (c) a[i](true);
                        a.splice(i, 1)
                    }
            });
            if (!c) this.dequeue();
            return this
        }
    });
    var A = function(b, c, a) {
        if (b) {
            c = c || "fx";
            var q = D.data(b, c + "queue");
            if (!q || a) q = D.data(b, c + "queue", D.makeArray(a))
        }
        return q
    };
    D.fn.dequeue = function(a) {
        a = a || "fx";
        return this.each(function() {
            var q = A(this, a);
            q.shift();
            if (q.length) q[0].call(this)
        })
    };
    D.extend({
        speed: function(b, a, c) {
            var d = b && b.constructor == Object ? b : {
                complete: c || !c && a || D.isFunction(b) && b,
                duration: b,
                easing: c && a || a && a.constructor != Function && a
            };
            d.duration = (d.duration && d.duration.constructor == Number ? d.duration : D.fx.speeds[d.duration]) || D.fx.speeds.def;
            d.old = d.complete;
            d.complete = function() {
                if (d.queue !== false) D(this).dequeue();
                if (D.isFunction(d.old)) d.old.call(this)
            };
            return d
        },
        easing: {
            linear: function(p, n, b, a) {
                return b + a * p
            },
            swing: function(p, n, b, a) {
                return ((-Math.cos(p * Math.PI) / 2) + 0.5) * a + b
            }
        },
        timers: [],
        timerId: null,
        fx: function(b, c, a) {
            this.options = c;
            this.elem = b;
            this.prop = a;
            if (!c.orig) c.orig = {}
        }
    });
    D.fx.prototype = {
        update: function() {
            if (this.options.step) this.options.step.call(this.elem, this.now, this);
            (D.fx.step[this.prop] || D.fx.step._default)(this);
            if (this.prop == "height" || this.prop == "width") this.elem.style.display = "block"
        },
        cur: function(a) {
            if (this.elem[this.prop] != null && this.elem.style[this.prop] == null) return this.elem[this.prop];
            var r = parseFloat(D.css(this.elem, this.prop, a));
            return r && r > -10000 ? r : parseFloat(D.curCSS(this.elem, this.prop)) || 0
        },
        custom: function(c, b, d) {
            this.startTime = now();
            this.start = c;
            this.end = b;
            this.unit = d || this.unit || "px";
            this.now = this.start;
            this.pos = this.state = 0;
            this.update();
            var e = this;

            function t(a) {
                return e.step(a)
            }
            t.elem = this.elem;
            D.timers.push(t);
            if (D.timerId == null) {
                D.timerId = setInterval(function() {
                    var a = D.timers;
                    for (var i = 0; i < a.length; i++)
                        if (!a[i]()) a.splice(i--, 1);
                    if (!a.length) {
                        clearInterval(D.timerId);
                        D.timerId = null
                    }
                }, 13)
            }
        },
        show: function() {
            this.options.orig[this.prop] = D.attr(this.elem.style, this.prop);
            this.options.show = true;
            this.custom(0, this.cur());
            if (this.prop == "width" || this.prop == "height") this.elem.style[this.prop] = "1px";
            D(this.elem).show()
        },
        hide: function() {
            this.options.orig[this.prop] = D.attr(this.elem.style, this.prop);
            this.options.hide = true;
            this.custom(this.cur(), 0)
        },
        step: function(a) {
            var t = now();
            if (a || t > this.options.duration + this.startTime) {
                this.now = this.end;
                this.pos = this.state = 1;
                this.update();
                this.options.curAnim[this.prop] = true;
                var b = true;
                for (var i in this.options.curAnim)
                    if (this.options.curAnim[i] !== true) b = false;
                if (b) {
                    if (this.options.display != null) {
                        this.elem.style.overflow = this.options.overflow;
                        this.elem.style.display = this.options.display;
                        if (D.css(this.elem, "display") == "none") this.elem.style.display = "block"
                    }
                    if (this.options.hide) this.elem.style.display = "none";
                    if (this.options.hide || this.options.show)
                        for (var p in this.options.curAnim) D.attr(this.elem.style, p, this.options.orig[p])
                }
                if (b) this.options.complete.call(this.elem);
                return false
            } else {
                var n = t - this.startTime;
                this.state = n / this.options.duration;
                this.pos = D.easing[this.options.easing || (D.easing.swing ? "swing" : "linear")](this.state, n, 0, 1, this.options.duration);
                this.now = this.start + ((this.end - this.start) * this.pos);
                this.update()
            }
            return true
        }
    };
    D.extend(D.fx, {
        speeds: {
            slow: 600,
            fast: 200,
            def: 400
        },
        step: {
            scrollLeft: function(a) {
                a.elem.scrollLeft = a.now
            },
            scrollTop: function(a) {
                a.elem.scrollTop = a.now
            },
            opacity: function(a) {
                D.attr(a.elem.style, "opacity", a.now)
            },
            _default: function(a) {
                a.elem.style[a.prop] = a.now + a.unit
            }
        }
    });
    D.fn.offset = function() {
        var b = 0,
            top = 0,
            elem = this[0],
            results;
        if (elem) with(D.browser) {
            var d = elem.parentNode,
                offsetChild = elem,
                offsetParent = elem.offsetParent,
                doc = elem.ownerDocument,
                safari2 = safari && parseInt(version) < 522 && !/adobeair/i.test(v),
                css = D.curCSS,
                fixed = css(elem, "position") == "fixed";
            if (elem.getBoundingClientRect) {
                var c = elem.getBoundingClientRect();
                add(c.left + Math.max(doc.documentElement.scrollLeft, doc.body.scrollLeft), c.top + Math.max(doc.documentElement.scrollTop, doc.body.scrollTop));
                add(-doc.documentElement.clientLeft, -doc.documentElement.clientTop)
            } else {
                add(elem.offsetLeft, elem.offsetTop);
                while (offsetParent) {
                    add(offsetParent.offsetLeft, offsetParent.offsetTop);
                    if (mozilla && !/^t(able|d|h)$/i.test(offsetParent.tagName) || safari && !safari2) border(offsetParent);
                    if (!fixed && css(offsetParent, "position") == "fixed") fixed = true;
                    offsetChild = /^body$/i.test(offsetParent.tagName) ? offsetChild : offsetParent;
                    offsetParent = offsetParent.offsetParent
                }
                while (d && d.tagName && !/^body|html$/i.test(d.tagName)) {
                    if (!/^inline|table.*$/i.test(css(d, "display"))) add(-d.scrollLeft, -d.scrollTop);
                    if (mozilla && css(d, "overflow") != "visible") border(d);
                    d = d.parentNode
                }
                if ((safari2 && (fixed || css(offsetChild, "position") == "absolute")) || (mozilla && css(offsetChild, "position") != "absolute")) add(-doc.body.offsetLeft, -doc.body.offsetTop);
                if (fixed) add(Math.max(doc.documentElement.scrollLeft, doc.body.scrollLeft), Math.max(doc.documentElement.scrollTop, doc.body.scrollTop))
            }
            results = {
                top: top,
                left: b
            }
        }

        function border(a) {
            add(D.curCSS(a, "borderLeftWidth", true), D.curCSS(a, "borderTopWidth", true))
        }

        function add(l, t) {
            b += parseInt(l, 10) || 0;
            top += parseInt(t, 10) || 0
        }
        return results
    };
    D.fn.extend({
        position: function() {
            var a = 0,
                top = 0,
                results;
            if (this[0]) {
                var b = this.offsetParent(),
                    offset = this.offset(),
                    parentOffset = /^body|html$/i.test(b[0].tagName) ? {
                        top: 0,
                        left: 0
                    } : b.offset();
                offset.top -= num(this, 'marginTop');
                offset.left -= num(this, 'marginLeft');
                parentOffset.top += num(b, 'borderTopWidth');
                parentOffset.left += num(b, 'borderLeftWidth');
                results = {
                    top: offset.top - parentOffset.top,
                    left: offset.left - parentOffset.left
                }
            }
            return results
        },
        offsetParent: function() {
            var a = this[0].offsetParent;
            while (a && (!/^body|html$/i.test(a.tagName) && D.css(a, 'position') == 'static')) a = a.offsetParent;
            return D(a)
        }
    });
    D.each(['Left', 'Top'], function(i, b) {
        var c = 'scroll' + b;
        D.fn[c] = function(a) {
            if (!this[0]) return;
            return a != undefined ? this.each(function() {
                this == window || this == document ? window.scrollTo(!i ? a : D(window).scrollLeft(), i ? a : D(window).scrollTop()) : this[c] = a
            }) : this[0] == window || this[0] == document ? self[i ? 'pageYOffset' : 'pageXOffset'] || D.boxModel && document.documentElement[c] || document.body[c] : this[0][c]
        }
    });
    D.each(["Height", "Width"], function(i, b) {
        var c = i ? "Left" : "Top",
            br = i ? "Right" : "Bottom";
        D.fn["inner" + b] = function() {
            return this[b.toLowerCase()]() + num(this, "padding" + c) + num(this, "padding" + br)
        };
        D.fn["outer" + b] = function(a) {
            return this["inner" + b]() + num(this, "border" + c + "Width") + num(this, "border" + br + "Width") + (a ? num(this, "margin" + c) + num(this, "margin" + br) : 0)
        }
    })
})();