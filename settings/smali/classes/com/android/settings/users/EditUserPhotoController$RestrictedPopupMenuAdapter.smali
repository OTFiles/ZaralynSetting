.class final Lcom/android/settings/users/EditUserPhotoController$RestrictedPopupMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/EditUserPhotoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RestrictedPopupMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 460
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;>;"
    const v0, 0x7f0d0183

    const v1, 0x7f0a0456

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 461
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 465
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 466
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/settings/users/EditUserPhotoController$RestrictedPopupMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;

    .line 467
    .local v1, "item":Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;
    const v2, 0x7f0a0456

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 468
    .local v2, "text":Landroid/widget/TextView;
    const v3, 0x7f0a035a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 470
    .local v3, "image":Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByAdmin()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByBase()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 471
    invoke-virtual {v1}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByAdmin()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByBase()Z

    move-result v4

    if-nez v4, :cond_1

    .line 472
    goto :goto_1

    :cond_1
    const/16 v5, 0x8

    .line 471
    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 474
    return-object v0
.end method
