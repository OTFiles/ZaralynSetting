.class public Lcom/android/settingslib/drawer/UserAdapter;
.super Ljava/lang/Object;
.source "UserAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/drawer/UserAdapter$UserDetails;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/drawer/UserAdapter$UserDetails;",
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
            "Lcom/android/settingslib/drawer/UserAdapter$UserDetails;",
            ">;)V"
        }
    .end annotation

    .line 82
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/UserAdapter$UserDetails;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    if-eqz p2, :cond_0

    .line 86
    iput-object p2, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    .line 87
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 88
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A list of user details must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createUser(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 118
    iget-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/settingslib/R$layout;->user_preference:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static createUserAdapter(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settingslib/drawer/UserAdapter;
    .locals 5
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserManager;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)",
            "Lcom/android/settingslib/drawer/UserAdapter;"
        }
    .end annotation

    .line 206
    .local p2, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    .local v0, "userDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/UserAdapter$UserDetails;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 208
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 209
    new-instance v3, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-direct {v3, v4, p0, p1}, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;-><init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v2
    :cond_0
    new-instance v2, Lcom/android/settingslib/drawer/UserAdapter;

    invoke-direct {v2, p1, v0}, Lcom/android/settingslib/drawer/UserAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-object v2
.end method

.method public static createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settingslib/drawer/UserAdapter;
    .locals 3
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "context"    # Landroid/content/Context;

    .line 191
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 192
    .local v0, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 193
    const/4 v1, 0x0

    return-object v1

    .line 196
    :cond_0
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 198
    .local v1, "myUserHandle":Landroid/os/UserHandle;
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 199
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 201
    invoke-static {p0, p1, v0}, Lcom/android/settingslib/drawer/UserAdapter;->createUserAdapter(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settingslib/drawer/UserAdapter;

    move-result-object v2

    return-object v2
.end method

.method private getTitle(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)I
    .locals 2
    .param p1, "user"    # Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    .line 108
    invoke-static {p1}, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->access$000(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 109
    .local v0, "userHandle":I
    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    .line 110
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    sget v1, Lcom/android/settingslib/R$string;->category_work:I

    return v1

    .line 111
    :cond_1
    :goto_0
    sget v1, Lcom/android/settingslib/R$string;->category_personal:I

    return v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 99
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/settingslib/drawer/UserAdapter;->createUser(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "row":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    .line 102
    .local v1, "user":Lcom/android/settingslib/drawer/UserAdapter$UserDetails;
    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->access$100(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/settingslib/drawer/UserAdapter;->getTitle(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 104
    return-object v0
.end method

.method public getItem(I)Lcom/android/settingslib/drawer/UserAdapter$UserDetails;
    .locals 1
    .param p1, "position"    # I

    .line 138
    iget-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/UserAdapter;->getItem(I)Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 143
    iget-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    invoke-static {v0}, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->access$000(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public getUserHandle(I)Landroid/os/UserHandle;
    .locals 1
    .param p1, "position"    # I

    .line 91
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    invoke-static {v0}, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->access$000(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0

    .line 92
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

    .line 153
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settingslib/drawer/UserAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 124
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 129
    return-void
.end method
