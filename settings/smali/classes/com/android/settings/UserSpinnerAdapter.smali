.class public Lcom/android/settings/UserSpinnerAdapter;
.super Ljava/lang/Object;
.source "UserSpinnerAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserSpinnerAdapter$UserDetails;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/UserSpinnerAdapter$UserDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/UserSpinnerAdapter$UserDetails;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/UserSpinnerAdapter$UserDetails;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-eqz p2, :cond_0

    .line 73
    iput-object p2, p0, Lcom/android/settings/UserSpinnerAdapter;->data:Ljava/util/ArrayList;

    .line 74
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/UserSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A list of user details must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createUser(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 95
    iget-object v0, p0, Lcom/android/settings/UserSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d022b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/settings/UserSpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 86
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/settings/UserSpinnerAdapter;->createUser(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "row":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/UserSpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/UserSpinnerAdapter$UserDetails;

    .line 89
    .local v1, "user":Lcom/android/settings/UserSpinnerAdapter$UserDetails;
    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->access$100(Lcom/android/settings/UserSpinnerAdapter$UserDetails;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->access$200(Lcom/android/settings/UserSpinnerAdapter$UserDetails;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-object v0
.end method

.method public getItem(I)Lcom/android/settings/UserSpinnerAdapter$UserDetails;
    .locals 1
    .param p1, "position"    # I

    .line 115
    iget-object v0, p0, Lcom/android/settings/UserSpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/settings/UserSpinnerAdapter;->getItem(I)Lcom/android/settings/UserSpinnerAdapter$UserDetails;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 120
    iget-object v0, p0, Lcom/android/settings/UserSpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;

    invoke-static {v0}, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->access$000(Lcom/android/settings/UserSpinnerAdapter$UserDetails;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public getUserHandle(I)Landroid/os/UserHandle;
    .locals 1
    .param p1, "position"    # I

    .line 78
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/UserSpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/settings/UserSpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;

    invoke-static {v0}, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->access$000(Lcom/android/settings/UserSpinnerAdapter$UserDetails;)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0

    .line 79
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 130
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/UserSpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/settings/UserSpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 101
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 106
    return-void
.end method
