.class public Lcom/android/settings/display/AppGridView;
.super Landroid/widget/GridView;
.source "AppGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/AppGridView$ActivityEntry;,
        Lcom/android/settings/display/AppGridView$AppsAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/AppGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/AppGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/display/AppGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleResId"    # I

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/display/AppGridView;->setNumColumns(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/display/AppGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070182

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 60
    .local v0, "columnWidth":I
    invoke-virtual {p0, v0}, Lcom/android/settings/display/AppGridView;->setColumnWidth(I)V

    .line 62
    new-instance v1, Lcom/android/settings/display/AppGridView$AppsAdapter;

    const v2, 0x7f0d0193

    const v3, 0x1020014

    const v4, 0x1020007

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/settings/display/AppGridView$AppsAdapter;-><init>(Landroid/content/Context;III)V

    invoke-virtual {p0, v1}, Lcom/android/settings/display/AppGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    return-void
.end method
