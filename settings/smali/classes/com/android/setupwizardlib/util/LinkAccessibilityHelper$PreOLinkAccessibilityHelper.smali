.class Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;
.super Landroid/support/v4/widget/ExploreByTouchHelper;
.source "LinkAccessibilityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreOLinkAccessibilityHelper"
.end annotation


# instance fields
.field private final mTempRect:Landroid/graphics/Rect;

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;

    .line 151
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    .line 152
    iput-object p1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    .line 153
    return-void
.end method

.method private static convertToLocalHorizontalCoordinate(Landroid/widget/TextView;F)F
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "x"    # F

    .line 306
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 308
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 309
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 310
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 311
    return p1
.end method

.method private getBoundsForSpan(Landroid/text/style/ClickableSpan;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 11
    .param p1, "span"    # Landroid/text/style/ClickableSpan;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .line 260
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 261
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 262
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_2

    .line 263
    iget-object v1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 264
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_2

    .line 265
    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    .line 266
    .local v2, "spannedText":Landroid/text/Spanned;
    invoke-interface {v2, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 267
    .local v3, "spanStart":I
    invoke-interface {v2, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 268
    .local v4, "spanEnd":I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    .line 269
    .local v5, "xStart":F
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    .line 270
    .local v6, "xEnd":F
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 271
    .local v7, "lineStart":I
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 272
    .local v8, "lineEnd":I
    invoke-virtual {v1, v7, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 273
    if-ne v8, v7, :cond_0

    .line 276
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    iput v9, p2, Landroid/graphics/Rect;->left:I

    .line 277
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v9

    float-to-int v9, v9

    iput v9, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v1, v7}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 284
    float-to-int v9, v5

    iput v9, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 286
    :cond_1
    float-to-int v9, v5

    iput v9, p2, Landroid/graphics/Rect;->left:I

    .line 291
    :goto_0
    iget-object v9, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v9

    iget-object v10, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 294
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    :cond_2
    return-object p2
.end method

.method private static getLineAtCoordinate(Landroid/widget/TextView;F)I
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "y"    # F

    .line 315
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 317
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 318
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 319
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 320
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method private static getOffsetAtCoordinate(Landroid/widget/TextView;IF)I
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "line"    # I
    .param p2, "x"    # F

    .line 324
    invoke-static {p0, p2}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->convertToLocalHorizontalCoordinate(Landroid/widget/TextView;F)F

    move-result p2

    .line 325
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method private static getOffsetForPosition(Landroid/widget/TextView;FF)I
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 300
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 301
    :cond_0
    invoke-static {p0, p2}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getLineAtCoordinate(Landroid/widget/TextView;F)I

    move-result v0

    .line 302
    .local v0, "line":I
    invoke-static {p0, v0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getOffsetAtCoordinate(Landroid/widget/TextView;IF)I

    move-result v1

    return v1
.end method

.method private getSpanForOffset(I)Landroid/text/style/ClickableSpan;
    .locals 5
    .param p1, "offset"    # I

    .line 235
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 236
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 237
    move-object v1, v0

    check-cast v1, Landroid/text/Spanned;

    .line 238
    .local v1, "spannedText":Landroid/text/Spanned;
    const-class v2, Landroid/text/style/ClickableSpan;

    invoke-interface {v1, p1, p1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    .line 239
    .local v2, "spans":[Landroid/text/style/ClickableSpan;
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 240
    const/4 v3, 0x0

    aget-object v3, v2, v3

    return-object v3

    .line 243
    .end local v1
    .end local v2
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getTextForSpan(Landroid/text/style/ClickableSpan;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "span"    # Landroid/text/style/ClickableSpan;

    .line 247
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 248
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 249
    move-object v1, v0

    check-cast v1, Landroid/text/Spanned;

    .line 250
    .local v1, "spannedText":Landroid/text/Spanned;
    nop

    .line 251
    invoke-interface {v1, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 252
    invoke-interface {v1, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 250
    invoke-interface {v1, v2, v3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 254
    .end local v1
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 157
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 158
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 159
    move-object v1, v0

    check-cast v1, Landroid/text/Spanned;

    .line 160
    .local v1, "spannedText":Landroid/text/Spanned;
    iget-object v2, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-static {v2, p1, p2}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getOffsetForPosition(Landroid/widget/TextView;FF)I

    move-result v2

    .line 161
    .local v2, "offset":I
    const-class v3, Landroid/text/style/ClickableSpan;

    .line 162
    invoke-interface {v1, v2, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    .line 163
    .local v3, "linkSpans":[Landroid/text/style/ClickableSpan;
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 164
    const/4 v4, 0x0

    aget-object v4, v3, v4

    .line 165
    .local v4, "linkSpan":Landroid/text/style/ClickableSpan;
    invoke-interface {v1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    return v5

    .line 168
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    :cond_0
    const/high16 v1, -0x80000000

    return v1
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 173
    .local p1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 174
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 175
    move-object v1, v0

    check-cast v1, Landroid/text/Spanned;

    .line 176
    .local v1, "spannedText":Landroid/text/Spanned;
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ClickableSpan;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    .line 178
    .local v2, "linkSpans":[Landroid/text/style/ClickableSpan;
    array-length v3, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 179
    .local v5, "span":Landroid/text/style/ClickableSpan;
    invoke-interface {v1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    .end local v1
    .end local v2
    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 222
    const/16 v0, 0x10

    if-ne p2, v0, :cond_1

    .line 223
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getSpanForOffset(I)Landroid/text/style/ClickableSpan;

    move-result-object v0

    .line 224
    .local v0, "span":Landroid/text/style/ClickableSpan;
    if-eqz v0, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 226
    const/4 v1, 0x1

    return v1

    .line 228
    :cond_0
    const-string v1, "LinkAccessibilityHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LinkSpan is null for offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v0
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 186
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getSpanForOffset(I)Landroid/text/style/ClickableSpan;

    move-result-object v0

    .line 187
    .local v0, "span":Landroid/text/style/ClickableSpan;
    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getTextForSpan(Landroid/text/style/ClickableSpan;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :cond_0
    const-string v1, "LinkAccessibilityHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LinkSpan is null for offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 193
    :goto_0
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5
    .param p1, "virtualViewId"    # I
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getSpanForOffset(I)Landroid/text/style/ClickableSpan;

    move-result-object v0

    .line 200
    .local v0, "span":Landroid/text/style/ClickableSpan;
    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getTextForSpan(Landroid/text/style/ClickableSpan;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 203
    :cond_0
    const-string v1, "LinkAccessibilityHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LinkSpan is null for offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 206
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 207
    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 208
    iget-object v2, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getBoundsForSpan(Landroid/text/style/ClickableSpan;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 209
    iget-object v2, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    const-string v2, "LinkAccessibilityHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LinkSpan bounds is empty for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v2, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 214
    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 215
    return-void
.end method
