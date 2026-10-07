.class public Lcom/android/settings/display/AppGridView$AppsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AppGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/display/AppGridView$ActivityEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIconResId:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "textResId"    # I
    .param p4, "iconResId"    # I

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 77
    iput p4, p0, Lcom/android/settings/display/AppGridView$AppsAdapter;->mIconResId:I

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/AppGridView$AppsAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 80
    invoke-direct {p0}, Lcom/android/settings/display/AppGridView$AppsAdapter;->loadAllApps()V

    .line 81
    return-void
.end method

.method private loadAllApps()V
    .locals 10

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    .local v0, "mainIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/android/settings/display/AppGridView$AppsAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 112
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/display/AppGridView$ActivityEntry;>;"
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 114
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/display/AppGridView$AppsAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v4

    .line 115
    .local v4, "iconFactory":Landroid/util/IconDrawableFactory;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 116
    .local v6, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v6, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 117
    .local v7, "label":Ljava/lang/CharSequence;
    if-eqz v7, :cond_0

    .line 118
    new-instance v8, Lcom/android/settings/display/AppGridView$ActivityEntry;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v6, v9, v4}, Lcom/android/settings/display/AppGridView$ActivityEntry;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/util/IconDrawableFactory;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v6
    .end local v7
    :cond_0
    goto :goto_0

    .line 122
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 124
    invoke-virtual {p0, v2}, Lcom/android/settings/display/AppGridView$AppsAdapter;->addAll(Ljava/util/Collection;)V

    .line 125
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 99
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 85
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/settings/display/AppGridView$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/display/AppGridView$ActivityEntry;

    .line 87
    .local v1, "entry":Lcom/android/settings/display/AppGridView$ActivityEntry;
    iget v2, p0, Lcom/android/settings/display/AppGridView$AppsAdapter;->mIconResId:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 88
    .local v2, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/android/settings/display/AppGridView$ActivityEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 104
    const/4 v0, 0x0

    return v0
.end method
