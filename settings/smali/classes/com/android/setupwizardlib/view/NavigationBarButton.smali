.class public Lcom/android/setupwizardlib/view/NavigationBarButton;
.super Landroid/widget/Button;
.source "NavigationBarButton.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->init()V

    .line 45
    return-void
.end method

.method private getAllCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 102
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 103
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 104
    .local v1, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    aput-object v3, v0, v2

    .line 105
    const/4 v3, 0x1

    aget-object v4, v1, v3

    aput-object v4, v0, v3

    .line 106
    const/4 v3, 0x2

    aget-object v4, v1, v3

    aput-object v4, v0, v3

    .line 107
    const/4 v4, 0x3

    aget-object v5, v1, v4

    aput-object v5, v0, v4

    .line 108
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 110
    .local v4, "compoundDrawablesRelative":[Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x4

    aget-object v2, v4, v2

    aput-object v2, v0, v5

    .line 111
    const/4 v2, 0x5

    aget-object v3, v4, v3

    aput-object v3, v0, v2

    .line 113
    .end local v4
    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 5

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 52
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 53
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 54
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    move-result-object v3

    aput-object v3, v0, v2

    .line 52
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v2
    :cond_1
    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/setupwizardlib/view/NavigationBarButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 60
    .end local v0
    :cond_2
    return-void
.end method

.method private tintDrawables()V
    .locals 6

    .line 90
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 91
    .local v0, "textColors":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_2

    .line 92
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->getAllCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 93
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v4, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    if-eqz v5, :cond_0

    .line 94
    move-object v5, v4

    check-cast v5, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    invoke-virtual {v5, v0}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->setTintListCompat(Landroid/content/res/ColorStateList;)V

    .line 92
    .end local v4
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->invalidate()V

    .line 99
    :cond_2
    return-void
.end method


# virtual methods
.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 64
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    move-result-object p1

    .line 65
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    move-result-object p2

    .line 66
    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p3}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    move-result-object p3

    .line 67
    :cond_2
    if-eqz p4, :cond_3

    invoke-static {p4}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    move-result-object p4

    .line 68
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->tintDrawables()V

    .line 70
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 75
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    move-result-object p1

    .line 76
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    move-result-object p2

    .line 77
    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p3}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    move-result-object p3

    .line 78
    :cond_2
    if-eqz p4, :cond_3

    invoke-static {p4}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    move-result-object p4

    .line 79
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->tintDrawables()V

    .line 81
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .line 85
    invoke-super {p0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 86
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->tintDrawables()V

    .line 87
    return-void
.end method
