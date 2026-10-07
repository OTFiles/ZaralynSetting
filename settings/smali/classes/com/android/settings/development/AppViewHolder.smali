.class public Lcom/android/settings/development/AppViewHolder;
.super Ljava/lang/Object;
.source "AppViewHolder.java"


# instance fields
.field public appIcon:Landroid/widget/ImageView;

.field public appName:Landroid/widget/TextView;

.field public disabled:Landroid/widget/TextView;

.field public rootView:Landroid/view/View;

.field public summary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/development/AppViewHolder;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "convertView"    # Landroid/view/View;

    .line 37
    if-nez p1, :cond_0

    .line 38
    const v0, 0x7f0d0114

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance v0, Lcom/android/settings/development/AppViewHolder;

    invoke-direct {v0}, Lcom/android/settings/development/AppViewHolder;-><init>()V

    .line 43
    .local v0, "holder":Lcom/android/settings/development/AppViewHolder;
    iput-object p1, v0, Lcom/android/settings/development/AppViewHolder;->rootView:Landroid/view/View;

    .line 44
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/development/AppViewHolder;->appName:Landroid/widget/TextView;

    .line 45
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/settings/development/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 46
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/development/AppViewHolder;->summary:Landroid/widget/TextView;

    .line 47
    const v1, 0x7f0a0066

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/development/AppViewHolder;->disabled:Landroid/widget/TextView;

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    return-object v0

    .line 53
    .end local v0
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/AppViewHolder;

    return-object v0
.end method
