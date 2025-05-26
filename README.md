<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-40README-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

# reblocks-cms - Content management system for sites built on Reblocks web framework

<a id="reblocks-cms-asdf-system-details"></a>

## REBLOCKS-CMS ASDF System Details

* Description: Content management system for sites built on Reblocks web framework
* Licence: Unlicense
* Author: Alexander Artemenko <svetlyak.40wt@gmail.com>
* Homepage: [https://40ants.com/reblocks-cms][318a]
* Bug tracker: [https://github.com/40ants/reblocks-cms
/issues][10da]
* Source control: [GIT][ce8b]
* Depends on: [3bmd][cc3e], [3bmd-ext-code-blocks][d94a], [40ants-routes][25b9], [alexandria][8236], [anaphora][c9ae], [mito][5b70], [parenscript][7921], [reblocks][184b], [reblocks-lass][28e0], [reblocks-parenscript][c07c], [reblocks-ui2][85c5], [reblocks-ui2-tailwind][a861], [serapeum][c41d]

[![](https://github-actions.40ants.com/40ants/reblocks-cms/matrix.svg?only=ci.run-tests)][a710]

![](http://quickdocs.org/badge/reblocks-cms.svg)

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40INSTALLATION-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

## Installation

You can install this library from Quicklisp, but you want to receive updates quickly, then install it from Ultralisp.org:

```
(ql-dist:install-dist "http://dist.ultralisp.org/"
                      :prompt nil)
(ql:quickload :reblocks-cms)
```
<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40USAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

## Usage

`TODO`: Write a library description. Put some examples here.

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40API-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

## API

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FCONTROLLER-2FCONTENT-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/CONTROLLER/CONTENT

<a id="x-28-23A-28-2831-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FCONTROLLER-2FCONTENT-22-29-20PACKAGE-29"></a>

#### [package](0d61) `reblocks-cms/controller/content`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FCONTROLLER-2FCONTENT-3FFunctions-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Functions

<a id="x-28REBLOCKS-CMS-2FCONTROLLER-2FCONTENT-3ACREATE-CONTENT-20FUNCTION-29"></a>

##### [function](8169) `reblocks-cms/controller/content:create-content` title text slug author &key (type :post) tags

<a id="x-28REBLOCKS-CMS-2FCONTROLLER-2FCONTENT-3AGET-CONTENT-BY-SLUG-20FUNCTION-29"></a>

##### [function](d10f) `reblocks-cms/controller/content:get-content-by-slug` slug

<a id="x-28REBLOCKS-CMS-2FCONTROLLER-2FCONTENT-3AUPDATE-CONTENT-20FUNCTION-29"></a>

##### [function](4376) `reblocks-cms/controller/content:update-content` content &key title text

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FCONTROLLER-2FCONTENT-TAG-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/CONTROLLER/CONTENT-TAG

<a id="x-28-23A-28-2835-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FCONTROLLER-2FCONTENT-TAG-22-29-20PACKAGE-29"></a>

#### [package](0b4e) `reblocks-cms/controller/content-tag`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FCONTROLLER-2FCONTENT-TAG-3FFunctions-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Functions

<a id="x-28REBLOCKS-CMS-2FCONTROLLER-2FCONTENT-TAG-3ABIND-CONTENT-TO-TAG-20FUNCTION-29"></a>

##### [function](cc74) `reblocks-cms/controller/content-tag:bind-content-to-tag` content tag

<a id="x-28REBLOCKS-CMS-2FCONTROLLER-2FCONTENT-TAG-3AGET-CONTENT-TAGS-20FUNCTION-29"></a>

##### [function](5fe8) `reblocks-cms/controller/content-tag:get-content-tags` content

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FMODELS-2FAUTHOR-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/MODELS/AUTHOR

<a id="x-28-23A-28-2826-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FMODELS-2FAUTHOR-22-29-20PACKAGE-29"></a>

#### [package](3f52) `reblocks-cms/models/author`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FMODELS-2FAUTHOR-3FClasses-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Classes

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FMODELS-2FAUTHOR-24AUTHOR-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### AUTHOR

<a id="x-28REBLOCKS-CMS-2FMODELS-2FAUTHOR-3AAUTHOR-20CLASS-29"></a>

###### [class](7deb) `reblocks-cms/models/author:author` (serial-pk-mixin dao-class record-timestamps-mixin)

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FMODELS-2FCONTENT-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/MODELS/CONTENT

<a id="x-28-23A-28-2827-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FMODELS-2FCONTENT-22-29-20PACKAGE-29"></a>

#### [package](bb86) `reblocks-cms/models/content`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FMODELS-2FCONTENT-3FClasses-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Classes

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FMODELS-2FCONTENT-24CONTENT-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### CONTENT

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-20CLASS-29"></a>

###### [class](14f0) `reblocks-cms/models/content:content` (serial-pk-mixin dao-class record-timestamps-mixin)

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/MODELS/CONTENT-TAG

<a id="x-28-23A-28-2831-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-22-29-20PACKAGE-29"></a>

#### [package](0e9e) `reblocks-cms/models/content-tag`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3FClasses-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Classes

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-24CONTENT-TAG-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### CONTENT-TAG

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3ACONTENT-TAG-20CLASS-29"></a>

###### [class](c624) `reblocks-cms/models/content-tag:content-tag` (serial-pk-mixin dao-class record-timestamps-mixin)

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FMODELS-2FTAG-24TAG-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### TAG

<a id="x-28REBLOCKS-CMS-2FMODELS-2FTAG-3ATAG-20CLASS-29"></a>

###### [class](2ad4) `reblocks-cms/models/tag:tag` (serial-pk-mixin dao-class record-timestamps-mixin)

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FMODELS-2FTAG-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/MODELS/TAG

<a id="x-28-23A-28-2823-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FMODELS-2FTAG-22-29-20PACKAGE-29"></a>

#### [package](2bf9) `reblocks-cms/models/tag`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FMODELS-2FTAG-3FClasses-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Classes

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FMODELS-2FTAG-24TAG-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### TAG

<a id="x-28REBLOCKS-CMS-2FMODELS-2FTAG-3ATAG-20CLASS-29"></a>

###### [class](2ad4) `reblocks-cms/models/tag:tag` (serial-pk-mixin dao-class record-timestamps-mixin)

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FROUTES-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/ROUTES

<a id="x-28-23A-28-2819-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FROUTES-22-29-20PACKAGE-29"></a>

#### [package](915a) `reblocks-cms/routes`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FROUTES-3FMacros-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Macros

<a id="x-28REBLOCKS-CMS-2FROUTES-3ACMS-PAGES-20-2840ANTS-DOC-2FLOCATIVES-3AMACRO-29-29"></a>

##### [macro](e09d) `reblocks-cms/routes:cms-pages` namespace

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FUTILS-2FMARKUP-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/UTILS/MARKUP

<a id="x-28-23A-28-2825-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FUTILS-2FMARKUP-22-29-20PACKAGE-29"></a>

#### [package](f91a) `reblocks-cms/utils/markup`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FUTILS-2FMARKUP-3FFunctions-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Functions

<a id="x-28REBLOCKS-CMS-2FUTILS-2FMARKUP-3AMARKDOWN-TO-HTML-20FUNCTION-29"></a>

##### [function](d4df) `reblocks-cms/utils/markup:markdown-to-html` text &key (stream reblocks/html:\*stream\*)

Renders given markdown `TEXT` as `HTML` into the current page's stream.

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FWIDGETS-2FCONTENT-PAGE-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/WIDGETS/CONTENT-PAGE

<a id="x-28-23A-28-2833-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FWIDGETS-2FCONTENT-PAGE-22-29-20PACKAGE-29"></a>

#### [package](323a) `reblocks-cms/widgets/content-page`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FWIDGETS-2FCONTENT-PAGE-3FClasses-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Classes

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FWIDGETS-2FCONTENT-PAGE-24CONTENT-PAGE-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### CONTENT-PAGE

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FCONTENT-PAGE-3ACONTENT-PAGE-20CLASS-29"></a>

###### [class](97c0) `reblocks-cms/widgets/content-page:content-page` (ui-widget)

**Readers**

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FCONTENT-PAGE-3ACONTENT-SLUG-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20REBLOCKS-CMS-2FWIDGETS-2FCONTENT-PAGE-3ACONTENT-PAGE-29-29"></a>

###### [reader](6120) `reblocks-cms/widgets/content-page:content-slug` (content-page) (:slug)

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FWIDGETS-2FCONTENT-PAGE-3FFunctions-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Functions

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FCONTENT-PAGE-3AMAKE-CONTENT-PAGE-20FUNCTION-29"></a>

##### [function](b1e2) `reblocks-cms/widgets/content-page:make-content-page` content-slug

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/WIDGETS/POSTS-LIST

<a id="x-28-23A-28-2831-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-22-29-20PACKAGE-29"></a>

#### [package](4191) `reblocks-cms/widgets/posts-list`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3FClasses-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Classes

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-24POSTS-LIST-ITEM-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### POSTS-LIST-ITEM

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3APOSTS-LIST-ITEM-20CLASS-29"></a>

###### [class](6b66) `reblocks-cms/widgets/posts-list:posts-list-item` (widget)

**Readers**

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3AITEM-CONTENT-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3APOSTS-LIST-ITEM-29-29"></a>

###### [reader](8939) `reblocks-cms/widgets/posts-list:item-content` (posts-list-item) (:content)

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-24POSTS-LIST-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### POSTS-LIST

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3APOSTS-LIST-20CLASS-29"></a>

###### [class](43aa) `reblocks-cms/widgets/posts-list:posts-list` (ui-widget)

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-24TAGGED-POSTS-LIST-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### TAGGED-POSTS-LIST

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3ATAGGED-POSTS-LIST-20CLASS-29"></a>

###### [class](2752) `reblocks-cms/widgets/posts-list:tagged-posts-list` (posts-list)

**Readers**

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3ATAG-NAME-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3ATAGGED-POSTS-LIST-29-29"></a>

###### [reader](d372) `reblocks-cms/widgets/posts-list:tag-name` (tagged-posts-list) (:tag)

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3FFunctions-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Functions

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3AMAKE-TAGGED-POSTS-LIST-20FUNCTION-29"></a>

##### [function](b2b6) `reblocks-cms/widgets/posts-list:make-tagged-posts-list` tag

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FWIDGETS-2FUTILS-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/WIDGETS/UTILS

<a id="x-28-23A-28-2826-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FWIDGETS-2FUTILS-22-29-20PACKAGE-29"></a>

#### [package](ba91) `reblocks-cms/widgets/utils`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FWIDGETS-2FUTILS-3FFunctions-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Functions

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FUTILS-3ARENDER-TAGS-20FUNCTION-29"></a>

##### [function](314c) `reblocks-cms/widgets/utils:render-tags` tags

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FWIDGETS-2FVARS-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/WIDGETS/VARS

<a id="x-28-23A-28-2825-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FWIDGETS-2FVARS-22-29-20PACKAGE-29"></a>

#### [package](996b) `reblocks-cms/widgets/vars`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FWIDGETS-2FVARS-3FVariables-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Variables

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FVARS-3A-2AH1-CLASSES-2A-20-28VARIABLE-29-29"></a>

##### [variable](3474) `reblocks-cms/widgets/vars:*h1-classes*` "text-4xl sm:text-5xl font-bold text-gray-800 mb-4 leading-tight tracking-wide text-center"

Redefine this variable to change style of the main header on your site.

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FVARS-3A-2AHIGHLIGHT-JS-PATH-2A-20-28VARIABLE-29-29"></a>

##### [variable](b85c) `reblocks-cms/widgets/vars:*highlight-js-path*` nil

Download the file with needed languages support and make a pathname like this:

```
(asdf:system-relative-pathname :lisp-ru
                                 (make-pathname :directory '(:relative "static")
                                                :name "highlight.min"
                                                :type "js"))
```
`JS` file can be downloaded on [official Highlight.js site][3c28].

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FVARS-3A-2AHIGHLIGHT-JS-THEME-PATH-2A-20-28VARIABLE-29-29"></a>

##### [variable](f835) `reblocks-cms/widgets/vars:*highlight-js-theme-path*` nil

Download the file with needed languages support and make a pathname like this:

```
(asdf:system-relative-pathname :lisp-ru
                                 (make-pathname :directory '(:relative "static")
                                                :name "atom-one-dark.min"
                                                :type "css"))
```
`JS` file can be downloaded on [official Highlight.js site][3c28].

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FVARS-3A-2ATAG-CLASSES-2A-20-28VARIABLE-29-29"></a>

##### [variable](4d44) `reblocks-cms/widgets/vars:*tag-classes*` "inline-block bg-gray-200 rounded-full px-2 text-sm font-semibold text-gray-700"

Redefine this variable to change appearence of the tag labels of the content.


[318a]: https://40ants.com/reblocks-cms
[ce8b]: https://github.com/40ants/reblocks-cms
[0b4e]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/controller/content-tag.lisp#L1
[cc74]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/controller/content-tag.lisp#L22
[5fe8]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/controller/content-tag.lisp#L36
[0d61]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/controller/content.lisp#L1
[d10f]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/controller/content.lisp#L16
[4376]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/controller/content.lisp#L21
[8169]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/controller/content.lisp#L32
[3f52]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/models/author.lisp#L1
[7deb]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/models/author.lisp#L10
[0e9e]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/models/content-tag.lisp#L1
[c624]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/models/content-tag.lisp#L22
[bb86]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/models/content.lisp#L1
[14f0]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/models/content.lisp#L19
[2bf9]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/models/tag.lisp#L1
[2ad4]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/models/tag.lisp#L10
[915a]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/routes.lisp#L1
[e09d]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/routes.lisp#L15
[f91a]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/utils/markup.lisp#L1
[d4df]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/utils/markup.lisp#L15
[323a]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/widgets/content-page.lisp#L1
[97c0]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/widgets/content-page.lisp#L55
[6120]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/widgets/content-page.lisp#L56
[b1e2]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/widgets/content-page.lisp#L65
[4191]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/widgets/posts-list.lisp#L1
[43aa]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/widgets/posts-list.lisp#L42
[2752]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/widgets/posts-list.lisp#L46
[d372]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/widgets/posts-list.lisp#L47
[6b66]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/widgets/posts-list.lisp#L52
[8939]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/widgets/posts-list.lisp#L53
[b2b6]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/widgets/posts-list.lisp#L66
[ba91]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/widgets/utils.lisp#L1
[314c]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/widgets/utils.lisp#L23
[996b]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/widgets/vars.lisp#L1
[3474]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/widgets/vars.lisp#L10
[4d44]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/widgets/vars.lisp#L15
[b85c]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/widgets/vars.lisp#L20
[f835]: https://github.com/40ants/reblocks-cms
/blob/a39f20e4dcf4bfbdca646458315869ce9039dab1/src/widgets/vars.lisp#L34
[10da]: https://github.com/40ants/reblocks-cms
/issues
[a710]: https://github.com/40ants/reblocks-cms/actions
[3c28]: https://highlightjs.org/download
[cc3e]: https://quickdocs.org/3bmd
[d94a]: https://quickdocs.org/3bmd-ext-code-blocks
[25b9]: https://quickdocs.org/40ants-routes
[8236]: https://quickdocs.org/alexandria
[c9ae]: https://quickdocs.org/anaphora
[5b70]: https://quickdocs.org/mito
[7921]: https://quickdocs.org/parenscript
[184b]: https://quickdocs.org/reblocks
[28e0]: https://quickdocs.org/reblocks-lass
[c07c]: https://quickdocs.org/reblocks-parenscript
[85c5]: https://quickdocs.org/reblocks-ui2
[a861]: https://quickdocs.org/reblocks-ui2-tailwind
[c41d]: https://quickdocs.org/serapeum

* * *
###### [generated by [40ANTS-DOC](https://40ants.com/doc/)]
