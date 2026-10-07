.class public Lcom/android/setupwizardlib/util/FallbackThemeWrapper;
.super Landroid/view/ContextThemeWrapper;
.source "FallbackThemeWrapper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resId"    # I
    .param p3, "first"    # Z

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 52
    return-void
.end method
