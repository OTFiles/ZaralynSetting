.class public Lcom/android/setupwizardlib/GlifLayout;
.super Lcom/android/setupwizardlib/TemplateLayout;
.source "GlifLayout.java"


# instance fields
.field private mBackgroundBaseColor:Landroid/content/res/ColorStateList;

.field private mBackgroundPatterned:Z

.field private mLayoutFullscreen:Z

.field private mPrimaryColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I
    .param p3, "containerId"    # I

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;II)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundPatterned:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mLayoutFullscreen:Z

    .line 92
    sget v0, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/setupwizardlib/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundPatterned:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mLayoutFullscreen:Z

    .line 97
    sget v0, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    invoke-direct {p0, p2, v0}, Lcom/android/setupwizardlib/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundPatterned:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mLayoutFullscreen:Z

    .line 103
    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 109
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    new-instance v1, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 110
    const-class v0, Lcom/android/setupwizardlib/template/IconMixin;

    new-instance v1, Lcom/android/setupwizardlib/template/IconMixin;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/setupwizardlib/template/IconMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 111
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    new-instance v1, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 112
    const-class v0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;

    new-instance v1, Lcom/android/setupwizardlib/template/ButtonFooterMixin;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/template/ButtonFooterMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 113
    new-instance v0, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    .line 114
    .local v0, "requireScrollMixin":Lcom/android/setupwizardlib/template/RequireScrollMixin;
    const-class v1, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-virtual {p0, v1, v0}, Lcom/android/setupwizardlib/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v1

    .line 117
    .local v1, "scrollView":Landroid/widget/ScrollView;
    if-eqz v1, :cond_0

    .line 118
    new-instance v2, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;

    invoke-direct {v2, v0, v1}, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v2}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout:[I

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 125
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwColorPrimary:I

    .line 126
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 127
    .local v3, "primaryColor":Landroid/content/res/ColorStateList;
    if-eqz v3, :cond_1

    .line 128
    invoke-virtual {p0, v3}, Lcom/android/setupwizardlib/GlifLayout;->setPrimaryColor(Landroid/content/res/ColorStateList;)V

    .line 131
    :cond_1
    sget v5, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwBackgroundBaseColor:I

    .line 132
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 133
    .local v5, "backgroundColor":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v5}, Lcom/android/setupwizardlib/GlifLayout;->setBackgroundBaseColor(Landroid/content/res/ColorStateList;)V

    .line 135
    sget v6, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwBackgroundPatterned:I

    .line 136
    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 137
    .local v6, "backgroundPatterned":Z
    invoke-virtual {p0, v6}, Lcom/android/setupwizardlib/GlifLayout;->setBackgroundPatterned(Z)V

    .line 139
    sget v8, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwFooter:I

    invoke-virtual {v2, v8, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 140
    .local v8, "footer":I
    if-eqz v8, :cond_2

    .line 141
    invoke-virtual {p0, v8}, Lcom/android/setupwizardlib/GlifLayout;->inflateFooter(I)Landroid/view/View;

    .line 144
    :cond_2
    sget v9, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwStickyHeader:I

    invoke-virtual {v2, v9, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 145
    .local v4, "stickyHeader":I
    if-eqz v4, :cond_3

    .line 146
    invoke-virtual {p0, v4}, Lcom/android/setupwizardlib/GlifLayout;->inflateStickyHeader(I)Landroid/view/View;

    .line 149
    :cond_3
    sget v9, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwLayoutFullscreen:I

    invoke-virtual {v2, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/setupwizardlib/GlifLayout;->mLayoutFullscreen:Z

    .line 151
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v7, v9, :cond_4

    iget-boolean v7, p0, Lcom/android/setupwizardlib/GlifLayout;->mLayoutFullscreen:Z

    if-eqz v7, :cond_4

    .line 154
    const/16 v7, 0x400

    invoke-virtual {p0, v7}, Lcom/android/setupwizardlib/GlifLayout;->setSystemUiVisibility(I)V

    .line 156
    :cond_4
    return-void
.end method

.method private updateBackground()V
    .locals 4

    .line 293
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_pattern_bg:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 294
    .local v0, "patternBg":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 295
    const/4 v1, 0x0

    .line 296
    .local v1, "backgroundColor":I
    iget-object v2, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundBaseColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundBaseColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    goto :goto_0

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/android/setupwizardlib/GlifLayout;->mPrimaryColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 299
    iget-object v2, p0, Lcom/android/setupwizardlib/GlifLayout;->mPrimaryColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 301
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundPatterned:Z

    if-eqz v2, :cond_2

    .line 302
    new-instance v2, Lcom/android/setupwizardlib/GlifPatternDrawable;

    invoke-direct {v2, v1}, Lcom/android/setupwizardlib/GlifPatternDrawable;-><init>(I)V

    goto :goto_1

    .line 303
    :cond_2
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 304
    .local v2, "background":Landroid/graphics/drawable/Drawable;
    :goto_1
    instance-of v3, v0, Lcom/android/setupwizardlib/view/StatusBarBackgroundLayout;

    if-eqz v3, :cond_3

    .line 305
    move-object v3, v0

    check-cast v3, Lcom/android/setupwizardlib/view/StatusBarBackgroundLayout;

    invoke-virtual {v3, v2}, Lcom/android/setupwizardlib/view/StatusBarBackgroundLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 307
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    .end local v1
    .end local v2
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "containerId"    # I

    .line 168
    if-nez p1, :cond_0

    .line 169
    sget p1, Lcom/android/setupwizardlib/R$id;->suw_layout_content:I

    .line 171
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundBaseColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundBaseColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHeaderColor()Landroid/content/res/ColorStateList;
    .locals 2

    .line 228
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;

    .line 229
    .local v0, "mixin":Lcom/android/setupwizardlib/template/ColoredHeaderMixin;
    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1
.end method

.method public getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    .line 219
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/HeaderMixin;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderTextView()Landroid/widget/TextView;
    .locals 1

    .line 207
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 237
    const-class v0, Lcom/android/setupwizardlib/template/IconMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/IconMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/IconMixin;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mPrimaryColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 2

    .line 202
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/ScrollView;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public inflateFooter(I)Landroid/view/View;
    .locals 2
    .param p1, "footer"    # I

    .line 182
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_footer:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 183
    .local v0, "footerStub":Landroid/view/ViewStub;
    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 184
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public inflateStickyHeader(I)Landroid/view/View;
    .locals 2
    .param p1, "header"    # I

    .line 196
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_sticky_header:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 197
    .local v0, "stickyHeaderStub":Landroid/view/ViewStub;
    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 198
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "template"    # I

    .line 160
    if-nez p2, :cond_0

    .line 161
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_glif_template:I

    .line 163
    :cond_0
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeGlif_Light:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/setupwizardlib/GlifLayout;->inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundBaseColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 263
    iput-object p1, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundBaseColor:Landroid/content/res/ColorStateList;

    .line 264
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifLayout;->updateBackground()V

    .line 265
    return-void
.end method

.method public setBackgroundPatterned(Z)V
    .locals 0
    .param p1, "patterned"    # Z

    .line 281
    iput-boolean p1, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundPatterned:Z

    .line 282
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifLayout;->updateBackground()V

    .line 283
    return-void
.end method

.method public setHeaderColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 223
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;

    .line 224
    .local v0, "mixin":Lcom/android/setupwizardlib/template/ColoredHeaderMixin;
    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;->setColor(Landroid/content/res/ColorStateList;)V

    .line 225
    return-void
.end method

.method public setHeaderText(I)V
    .locals 1
    .param p1, "title"    # I

    .line 211
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/HeaderMixin;->setText(I)V

    .line 212
    return-void
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 215
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/HeaderMixin;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 233
    const-class v0, Lcom/android/setupwizardlib/template/IconMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/IconMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/IconMixin;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 234
    return-void
.end method

.method public setPrimaryColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 245
    iput-object p1, p0, Lcom/android/setupwizardlib/GlifLayout;->mPrimaryColor:Landroid/content/res/ColorStateList;

    .line 246
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifLayout;->updateBackground()V

    .line 247
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->setColor(Landroid/content/res/ColorStateList;)V

    .line 248
    return-void
.end method

.method public setProgressBarShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .line 317
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->setShown(Z)V

    .line 318
    return-void
.end method
