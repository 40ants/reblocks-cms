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
* Depends on: [3bmd][cc3e], [3bmd-ext-code-blocks][d94a], [alexandria][8236], [anaphora][c9ae], [mito][5b70], [parenscript][7921], [reblocks][184b], [reblocks-lass][28e0], [reblocks-parenscript][c07c], [reblocks-ui2][85c5], [reblocks-ui2-tailwind][a861], [serapeum][c41d]

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

#### [package](a4bd) `reblocks-cms/controller/content`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FCONTROLLER-2FCONTENT-3FFunctions-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Functions

<a id="x-28REBLOCKS-CMS-2FCONTROLLER-2FCONTENT-3ACREATE-CONTENT-20FUNCTION-29"></a>

##### [function](191a) `reblocks-cms/controller/content:create-content` title text slug author &key (type :post) tags

<a id="x-28REBLOCKS-CMS-2FCONTROLLER-2FCONTENT-3AGET-CONTENT-BY-SLUG-20FUNCTION-29"></a>

##### [function](7d16) `reblocks-cms/controller/content:get-content-by-slug` slug

<a id="x-28REBLOCKS-CMS-2FCONTROLLER-2FCONTENT-3AUPDATE-CONTENT-20FUNCTION-29"></a>

##### [function](aafc) `reblocks-cms/controller/content:update-content` content &key title text

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FCONTROLLER-2FCONTENT-TAG-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/CONTROLLER/CONTENT-TAG

<a id="x-28-23A-28-2835-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FCONTROLLER-2FCONTENT-TAG-22-29-20PACKAGE-29"></a>

#### [package](56ff) `reblocks-cms/controller/content-tag`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FCONTROLLER-2FCONTENT-TAG-3FFunctions-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Functions

<a id="x-28REBLOCKS-CMS-2FCONTROLLER-2FCONTENT-TAG-3ABIND-CONTENT-TO-TAG-20FUNCTION-29"></a>

##### [function](f0fa) `reblocks-cms/controller/content-tag:bind-content-to-tag` content tag

<a id="x-28REBLOCKS-CMS-2FCONTROLLER-2FCONTENT-TAG-3AGET-CONTENT-TAGS-20FUNCTION-29"></a>

##### [function](2058) `reblocks-cms/controller/content-tag:get-content-tags` content

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FMODELS-2FAUTHOR-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/MODELS/AUTHOR

<a id="x-28-23A-28-2826-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FMODELS-2FAUTHOR-22-29-20PACKAGE-29"></a>

#### [package](ea89) `reblocks-cms/models/author`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FMODELS-2FAUTHOR-3FClasses-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Classes

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FMODELS-2FAUTHOR-24AUTHOR-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### AUTHOR

<a id="x-28REBLOCKS-CMS-2FMODELS-2FAUTHOR-3AAUTHOR-20CLASS-29"></a>

###### [class](acaa) `reblocks-cms/models/author:author` (serial-pk-mixin dao-class record-timestamps-mixin)

**Readers**

<a id="x-28REBLOCKS-CMS-2FMODELS-2FAUTHOR-3AAUTHOR-NAME-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20REBLOCKS-CMS-2FMODELS-2FAUTHOR-3AAUTHOR-29-29"></a>

###### [reader](3061) `reblocks-cms/models/author:author-name` (author) (:name)

**Accessors**

<a id="x-28REBLOCKS-CMS-2FMODELS-2FAUTHOR-3AAUTHOR-NAME-20-2840ANTS-DOC-2FLOCATIVES-3AACCESSOR-20REBLOCKS-CMS-2FMODELS-2FAUTHOR-3AAUTHOR-29-29"></a>

###### [accessor](3061) `reblocks-cms/models/author:author-name` (author) (:name)

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FMODELS-2FCONTENT-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/MODELS/CONTENT

<a id="x-28-23A-28-2827-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FMODELS-2FCONTENT-22-29-20PACKAGE-29"></a>

#### [package](aa01) `reblocks-cms/models/content`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FMODELS-2FCONTENT-3FClasses-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Classes

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FMODELS-2FCONTENT-24CONTENT-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### CONTENT

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-20CLASS-29"></a>

###### [class](8a10) `reblocks-cms/models/content:content` (serial-pk-mixin dao-class record-timestamps-mixin)

**Readers**

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-AUTHOR-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-29-29"></a>

###### [reader] `reblocks-cms/models/content:content-author` (content) (:author)

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-AUTHOR-ID-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-29-29"></a>

###### [reader] `reblocks-cms/models/content:content-author-id` (content) (:author-id)

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-SLUG-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-29-29"></a>

###### [reader](cdfb) `reblocks-cms/models/content:content-slug` (content) (:slug)

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-TEXT-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-29-29"></a>

###### [reader](b046) `reblocks-cms/models/content:content-text` (content) (:text)

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-TITLE-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-29-29"></a>

###### [reader](65a5) `reblocks-cms/models/content:content-title` (content) (:title)

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-TYPE-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-29-29"></a>

###### [reader](9a8f) `reblocks-cms/models/content:content-type` (content) (:type)

**Accessors**

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-AUTHOR-20-2840ANTS-DOC-2FLOCATIVES-3AACCESSOR-20REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-29-29"></a>

###### [accessor] `reblocks-cms/models/content:content-author` (content) (:author)

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-AUTHOR-ID-20-2840ANTS-DOC-2FLOCATIVES-3AACCESSOR-20REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-29-29"></a>

###### [accessor] `reblocks-cms/models/content:content-author-id` (content) (:author-id)

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-SLUG-20-2840ANTS-DOC-2FLOCATIVES-3AACCESSOR-20REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-29-29"></a>

###### [accessor](cdfb) `reblocks-cms/models/content:content-slug` (content) (:slug)

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-TEXT-20-2840ANTS-DOC-2FLOCATIVES-3AACCESSOR-20REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-29-29"></a>

###### [accessor](b046) `reblocks-cms/models/content:content-text` (content) (:text)

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-TITLE-20-2840ANTS-DOC-2FLOCATIVES-3AACCESSOR-20REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-29-29"></a>

###### [accessor](65a5) `reblocks-cms/models/content:content-title` (content) (:title)

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-TYPE-20-2840ANTS-DOC-2FLOCATIVES-3AACCESSOR-20REBLOCKS-CMS-2FMODELS-2FCONTENT-3ACONTENT-29-29"></a>

###### [accessor](9a8f) `reblocks-cms/models/content:content-type` (content) (:type)

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/MODELS/CONTENT-TAG

<a id="x-28-23A-28-2831-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-22-29-20PACKAGE-29"></a>

#### [package](f274) `reblocks-cms/models/content-tag`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3FClasses-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Classes

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-24CONTENT-TAG-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### CONTENT-TAG

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3ACONTENT-TAG-20CLASS-29"></a>

###### [class](7a55) `reblocks-cms/models/content-tag:content-tag` (serial-pk-mixin dao-class record-timestamps-mixin)

**Readers**

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3ACONTENT-TAG-CONTENT-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3ACONTENT-TAG-29-29"></a>

###### [reader] `reblocks-cms/models/content-tag:content-tag-content` (content-tag) (:content)

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3ACONTENT-TAG-CONTENT-ID-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3ACONTENT-TAG-29-29"></a>

###### [reader] `reblocks-cms/models/content-tag:content-tag-content-id` (content-tag) (:content-id)

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3ACONTENT-TAG-TAG-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3ACONTENT-TAG-29-29"></a>

###### [reader] `reblocks-cms/models/content-tag:content-tag-tag` (content-tag) (:tag)

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3ACONTENT-TAG-TAG-ID-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3ACONTENT-TAG-29-29"></a>

###### [reader] `reblocks-cms/models/content-tag:content-tag-tag-id` (content-tag) (:tag-id)

**Accessors**

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3ACONTENT-TAG-CONTENT-20-2840ANTS-DOC-2FLOCATIVES-3AACCESSOR-20REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3ACONTENT-TAG-29-29"></a>

###### [accessor] `reblocks-cms/models/content-tag:content-tag-content` (content-tag) (:content)

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3ACONTENT-TAG-CONTENT-ID-20-2840ANTS-DOC-2FLOCATIVES-3AACCESSOR-20REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3ACONTENT-TAG-29-29"></a>

###### [accessor] `reblocks-cms/models/content-tag:content-tag-content-id` (content-tag) (:content-id)

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3ACONTENT-TAG-TAG-20-2840ANTS-DOC-2FLOCATIVES-3AACCESSOR-20REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3ACONTENT-TAG-29-29"></a>

###### [accessor] `reblocks-cms/models/content-tag:content-tag-tag` (content-tag) (:tag)

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3ACONTENT-TAG-TAG-ID-20-2840ANTS-DOC-2FLOCATIVES-3AACCESSOR-20REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3ACONTENT-TAG-29-29"></a>

###### [accessor] `reblocks-cms/models/content-tag:content-tag-tag-id` (content-tag) (:tag-id)

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FMODELS-2FTAG-24TAG-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### TAG

<a id="x-28REBLOCKS-CMS-2FMODELS-2FTAG-3ATAG-20CLASS-29"></a>

###### [class](77e5) `reblocks-cms/models/tag:tag` (serial-pk-mixin dao-class record-timestamps-mixin)

**Readers**

<a id="x-28REBLOCKS-CMS-2FMODELS-2FTAG-3ATAG-NAME-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20REBLOCKS-CMS-2FMODELS-2FTAG-3ATAG-29-29"></a>

###### [reader](8fc4) `reblocks-cms/models/tag:tag-name` (tag) (:name)

**Accessors**

<a id="x-28REBLOCKS-CMS-2FMODELS-2FTAG-3ATAG-NAME-20-2840ANTS-DOC-2FLOCATIVES-3AACCESSOR-20REBLOCKS-CMS-2FMODELS-2FTAG-3ATAG-29-29"></a>

###### [accessor](8fc4) `reblocks-cms/models/tag:tag-name` (tag) (:name)

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3FFunctions-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Functions

<a id="x-28REBLOCKS-CMS-2FMODELS-2FCONTENT-TAG-3AGET-CONTENT-BY-TAG-20FUNCTION-29"></a>

##### [function](534c) `reblocks-cms/models/content-tag:get-content-by-tag` tag-name

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FMODELS-2FTAG-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/MODELS/TAG

<a id="x-28-23A-28-2823-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FMODELS-2FTAG-22-29-20PACKAGE-29"></a>

#### [package](33b1) `reblocks-cms/models/tag`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FMODELS-2FTAG-3FClasses-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Classes

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FMODELS-2FTAG-24TAG-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### TAG

<a id="x-28REBLOCKS-CMS-2FMODELS-2FTAG-3ATAG-20CLASS-29"></a>

###### [class](77e5) `reblocks-cms/models/tag:tag` (serial-pk-mixin dao-class record-timestamps-mixin)

**Readers**

<a id="x-28REBLOCKS-CMS-2FMODELS-2FTAG-3ATAG-NAME-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20REBLOCKS-CMS-2FMODELS-2FTAG-3ATAG-29-29"></a>

###### [reader](8fc4) `reblocks-cms/models/tag:tag-name` (tag) (:name)

**Accessors**

<a id="x-28REBLOCKS-CMS-2FMODELS-2FTAG-3ATAG-NAME-20-2840ANTS-DOC-2FLOCATIVES-3AACCESSOR-20REBLOCKS-CMS-2FMODELS-2FTAG-3ATAG-29-29"></a>

###### [accessor](8fc4) `reblocks-cms/models/tag:tag-name` (tag) (:name)

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FUTILS-2FMARKUP-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/UTILS/MARKUP

<a id="x-28-23A-28-2825-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FUTILS-2FMARKUP-22-29-20PACKAGE-29"></a>

#### [package](cf08) `reblocks-cms/utils/markup`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FUTILS-2FMARKUP-3FFunctions-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Functions

<a id="x-28REBLOCKS-CMS-2FUTILS-2FMARKUP-3AMARKDOWN-TO-HTML-20FUNCTION-29"></a>

##### [function](088c) `reblocks-cms/utils/markup:markdown-to-html` text &key (stream reblocks/html:\*stream\*)

Renders given markdown `TEXT` as `HTML` into the current page's stream.

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FWIDGETS-2FCONTENT-PAGE-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/WIDGETS/CONTENT-PAGE

<a id="x-28-23A-28-2833-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FWIDGETS-2FCONTENT-PAGE-22-29-20PACKAGE-29"></a>

#### [package](e98b) `reblocks-cms/widgets/content-page`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FWIDGETS-2FCONTENT-PAGE-3FClasses-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Classes

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FWIDGETS-2FCONTENT-PAGE-24CONTENT-PAGE-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### CONTENT-PAGE

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FCONTENT-PAGE-3ACONTENT-PAGE-20CLASS-29"></a>

###### [class](c87e) `reblocks-cms/widgets/content-page:content-page` (ui-widget)

**Readers**

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FCONTENT-PAGE-3AURI-PREFIX-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20REBLOCKS-CMS-2FWIDGETS-2FCONTENT-PAGE-3ACONTENT-PAGE-29-29"></a>

###### [reader](0603) `reblocks-cms/widgets/content-page:uri-prefix` (content-page) (:uri-prefix)

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FWIDGETS-2FCONTENT-PAGE-3FFunctions-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Functions

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FCONTENT-PAGE-3AMAKE-CONTENT-PAGE-20FUNCTION-29"></a>

##### [function](c181) `reblocks-cms/widgets/content-page:make-content-page` uri-prefix

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/WIDGETS/POSTS-LIST

<a id="x-28-23A-28-2831-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-22-29-20PACKAGE-29"></a>

#### [package](0fb5) `reblocks-cms/widgets/posts-list`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3FClasses-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Classes

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-24POSTS-LIST-ITEM-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### POSTS-LIST-ITEM

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3APOSTS-LIST-ITEM-20CLASS-29"></a>

###### [class](2d88) `reblocks-cms/widgets/posts-list:posts-list-item` (widget)

**Readers**

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3AITEM-CONTENT-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3APOSTS-LIST-ITEM-29-29"></a>

###### [reader](9850) `reblocks-cms/widgets/posts-list:item-content` (posts-list-item) (:content)

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-24POSTS-LIST-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### POSTS-LIST

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3APOSTS-LIST-20CLASS-29"></a>

###### [class](b8b8) `reblocks-cms/widgets/posts-list:posts-list` (ui-widget)

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-24TAGGED-POSTS-LIST-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### TAGGED-POSTS-LIST

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3ATAGGED-POSTS-LIST-20CLASS-29"></a>

###### [class](7f56) `reblocks-cms/widgets/posts-list:tagged-posts-list` (posts-list)

**Readers**

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3AURI-PREFIX-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3ATAGGED-POSTS-LIST-29-29"></a>

###### [reader](da77) `reblocks-cms/widgets/posts-list:uri-prefix` (tagged-posts-list) (:uri-prefix)

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3FGenerics-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Generics

<a id="x-28REBLOCKS-CMS-2FMODELS-2FTAG-3ATAG-NAME-20GENERIC-FUNCTION-29"></a>

##### [generic-function] `reblocks-cms/models/tag:tag-name` object

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3FFunctions-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Functions

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FPOSTS-LIST-3AMAKE-TAGGED-POSTS-LIST-20FUNCTION-29"></a>

##### [function](2e86) `reblocks-cms/widgets/posts-list:make-tagged-posts-list` uri-prefix

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FWIDGETS-2FUTILS-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/WIDGETS/UTILS

<a id="x-28-23A-28-2826-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FWIDGETS-2FUTILS-22-29-20PACKAGE-29"></a>

#### [package](00fe) `reblocks-cms/widgets/utils`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FWIDGETS-2FUTILS-3FFunctions-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Functions

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FUTILS-3ARENDER-TAGS-20FUNCTION-29"></a>

##### [function](2970) `reblocks-cms/widgets/utils:render-tags` tags

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-40REBLOCKS-CMS-2FWIDGETS-2FVARS-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-CMS/WIDGETS/VARS

<a id="x-28-23A-28-2825-29-20BASE-CHAR-20-2E-20-22REBLOCKS-CMS-2FWIDGETS-2FVARS-22-29-20PACKAGE-29"></a>

#### [package](7a2f) `reblocks-cms/widgets/vars`

<a id="x-28REBLOCKS-CMS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-CMS-2FWIDGETS-2FVARS-3FVariables-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Variables

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FVARS-3A-2AHIGHLIGHT-JS-PATH-2A-20-28VARIABLE-29-29"></a>

##### [variable](55e8) `reblocks-cms/widgets/vars:*highlight-js-path*` nil

Download the file with needed languages support and make a pathname like this:

```
(asdf:system-relative-pathname :lisp-ru
                                 (make-pathname :directory '(:relative "static")
                                                :name "highlight.min"
                                                :type "js"))
```
`JS` file can be downloaded on [official Highlight.js site][3c28].

<a id="x-28REBLOCKS-CMS-2FWIDGETS-2FVARS-3A-2AHIGHLIGHT-JS-THEME-PATH-2A-20-28VARIABLE-29-29"></a>

##### [variable](bbe7) `reblocks-cms/widgets/vars:*highlight-js-theme-path*` nil

Download the file with needed languages support and make a pathname like this:

```
(asdf:system-relative-pathname :lisp-ru
                                 (make-pathname :directory '(:relative "static")
                                                :name "atom-one-dark.min"
                                                :type "css"))
```
`JS` file can be downloaded on [official Highlight.js site][3c28].


[318a]: https://40ants.com/reblocks-cms
[ce8b]: https://github.com/40ants/reblocks-cms
[56ff]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/controller/content-tag.lisp#L1
[f0fa]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/controller/content-tag.lisp#L22
[2058]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/controller/content-tag.lisp#L36
[a4bd]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/controller/content.lisp#L1
[7d16]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/controller/content.lisp#L16
[aafc]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/controller/content.lisp#L21
[191a]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/controller/content.lisp#L32
[ea89]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/models/author.lisp#L1
[acaa]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/models/author.lisp#L10
[3061]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/models/author.lisp#L11
[f274]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/models/content-tag.lisp#L1
[7a55]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/models/content-tag.lisp#L22
[534c]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/models/content-tag.lisp#L36
[aa01]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/models/content.lisp#L1
[8a10]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/models/content.lisp#L19
[65a5]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/models/content.lisp#L20
[b046]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/models/content.lisp#L24
[9a8f]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/models/content.lisp#L28
[cdfb]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/models/content.lisp#L35
[33b1]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/models/tag.lisp#L1
[77e5]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/models/tag.lisp#L10
[8fc4]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/models/tag.lisp#L11
[cf08]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/utils/markup.lisp#L1
[088c]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/utils/markup.lisp#L15
[e98b]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/widgets/content-page.lisp#L1
[c87e]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/widgets/content-page.lisp#L56
[0603]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/widgets/content-page.lisp#L57
[c181]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/widgets/content-page.lisp#L66
[0fb5]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/widgets/posts-list.lisp#L1
[b8b8]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/widgets/posts-list.lisp#L43
[7f56]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/widgets/posts-list.lisp#L47
[da77]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/widgets/posts-list.lisp#L48
[2d88]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/widgets/posts-list.lisp#L53
[9850]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/widgets/posts-list.lisp#L54
[2e86]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/widgets/posts-list.lisp#L67
[00fe]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/widgets/utils.lisp#L1
[2970]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/widgets/utils.lisp#L21
[7a2f]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/widgets/vars.lisp#L1
[55e8]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/widgets/vars.lisp#L20
[bbe7]: https://github.com/40ants/reblocks-cms
/blob/d63d7e682e76e3410d8cd0a13611232643fe60eb/src/widgets/vars.lisp#L34
[10da]: https://github.com/40ants/reblocks-cms
/issues
[a710]: https://github.com/40ants/reblocks-cms/actions
[3c28]: https://highlightjs.org/download
[cc3e]: https://quickdocs.org/3bmd
[d94a]: https://quickdocs.org/3bmd-ext-code-blocks
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
