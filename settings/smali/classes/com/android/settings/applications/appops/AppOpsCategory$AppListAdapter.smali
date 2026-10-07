.class public Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppOpsCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appops/AppOpsCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field private final mState:Lcom/android/settings/applications/appops/AppOpsState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appops/AppOpsState;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # Lcom/android/settings/applications/appops/AppOpsState;

    .line 250
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->mResources:Landroid/content/res/Resources;

    .line 252
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 253
    iput-object p2, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    .line 254
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;
    .locals 1
    .param p1, "position"    # I

    .line 268
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->getItem(I)Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 273
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 283
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d003a

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    goto :goto_0

    .line 286
    .end local v1
    :cond_0
    move-object v1, p2

    .line 289
    .restart local v1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->getItem(I)Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    move-result-object v2

    .line 290
    .local v2, "item":Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;
    const v3, 0x7f0a005a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 291
    invoke-virtual {v2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 290
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    const v3, 0x7f0a005b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    const v3, 0x7f0a02c3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->mResources:Landroid/content/res/Resources;

    .line 294
    invoke-virtual {v2, v4, v0}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getTimeText(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v4

    .line 293
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    const v3, 0x7f0a02c5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 296
    const v3, 0x7f0a02c4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    .line 297
    invoke-virtual {v2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getPrimaryOpMode()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    nop

    .line 296
    :cond_1
    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 299
    return-object v1
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .line 257
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;>;"
    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->mList:Ljava/util/List;

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->notifyDataSetChanged()V

    .line 259
    return-void
.end method
