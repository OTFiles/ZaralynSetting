.class public Lcom/android/setupwizardlib/view/NavigationBar;
.super Landroid/widget/LinearLayout;
.source "NavigationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;
    }
.end annotation


# instance fields
.field private mBackButton:Landroid/widget/Button;

.field private mListener:Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;

.field private mMoreButton:Landroid/widget/Button;

.field private mNextButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    invoke-static {p1}, Lcom/android/setupwizardlib/view/NavigationBar;->getThemedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->init()V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 93
    invoke-static {p1}, Lcom/android/setupwizardlib/view/NavigationBar;->getThemedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->init()V

    .line 95
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

    .line 99
    invoke-static {p1}, Lcom/android/setupwizardlib/view/NavigationBar;->getThemedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->init()V

    .line 101
    return-void
.end method

.method private static getNavbarTheme(Landroid/content/Context;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    const/4 v0, 0x3

    new-array v1, v0, [I

    sget v2, Lcom/android/setupwizardlib/R$attr;->suwNavBarTheme:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const v4, 0x1010030

    aput v4, v1, v2

    const/4 v4, 0x2

    const v5, 0x1010031

    aput v5, v1, v4

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 59
    .local v1, "attributes":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    .line 60
    .local v5, "suwNavBarTheme":I
    const/4 v6, 0x1

    .line 61
    .local v6, "colorForeground":I
    const/4 v7, 0x2

    .line 62
    .local v7, "colorBackground":I
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 63
    .local v8, "theme":I
    if-nez v8, :cond_2

    .line 66
    new-array v9, v0, [F

    .line 67
    .local v9, "foregroundHsv":[F
    new-array v0, v0, [F

    .line 68
    .local v0, "backgroundHsv":[F
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    invoke-static {v10, v9}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 69
    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    invoke-static {v10, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 70
    aget v10, v9, v4

    aget v4, v0, v4

    cmpl-float v4, v10, v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 71
    .local v2, "isDarkBg":Z
    :goto_0
    if-eqz v2, :cond_1

    sget v3, Lcom/android/setupwizardlib/R$style;->SuwNavBarThemeDark:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/android/setupwizardlib/R$style;->SuwNavBarThemeLight:I

    :goto_1
    move v8, v3

    .line 73
    .end local v0
    .end local v2
    .end local v9
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    return v8
.end method

.method private static getThemedContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 78
    invoke-static {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNavbarTheme(Landroid/content/Context;)I

    move-result v0

    .line 79
    .local v0, "theme":I
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

.method private init()V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/setupwizardlib/R$layout;->suw_navbar_view:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 107
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_navbar_next:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/NavigationBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mNextButton:Landroid/widget/Button;

    .line 108
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_navbar_back:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/NavigationBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mBackButton:Landroid/widget/Button;

    .line 109
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_navbar_more:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/NavigationBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mMoreButton:Landroid/widget/Button;

    .line 110
    return-void
.end method


# virtual methods
.method public getBackButton()Landroid/widget/Button;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mBackButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getMoreButton()Landroid/widget/Button;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mMoreButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mListener:Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->getBackButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mListener:Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;

    invoke-interface {v0}, Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;->onNavigateBack()V

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mListener:Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;

    invoke-interface {v0}, Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;->onNavigateNext()V

    .line 141
    :cond_1
    :goto_0
    return-void
.end method

.method public setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;

    .line 125
    iput-object p1, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mListener:Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;

    .line 126
    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mListener:Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->getBackButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_0
    return-void
.end method
