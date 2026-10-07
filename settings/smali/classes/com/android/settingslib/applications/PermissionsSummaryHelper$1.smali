.class Lcom/android/settingslib/applications/PermissionsSummaryHelper$1;
.super Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
.source "PermissionsSummaryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field final synthetic val$isWifiOnly:Z


# direct methods
.method constructor <init>(ZLcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/settingslib/applications/PermissionsSummaryHelper$1;->val$isWifiOnly:Z

    iput-object p2, p0, Lcom/android/settingslib/applications/PermissionsSummaryHelper$1;->val$callback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAppPermissions(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/RuntimePermissionPresentationInfo;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/RuntimePermissionPresentationInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 46
    .local v0, "permissionCount":I
    const/4 v1, 0x0

    .line 47
    .local v1, "grantedStandardCount":I
    const/4 v2, 0x0

    .line 48
    .local v2, "grantedAdditionalCount":I
    const/4 v3, 0x0

    .line 49
    .local v3, "requestedCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v4, "grantedStandardLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    const-string v6, "\u7535\u8bdd"

    const-string v7, "\u901a\u8baf\u5f55"

    const-string v8, "\u77ed\u4fe1"

    const-string v9, "\u6d41\u91cf"

    const-string v10, "\u901a\u8bdd\u8bb0\u5f55"

    filled-new-array {v6, v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 51
    .local v5, "ignorePermName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    move v7, v2

    move v2, v1

    move v1, v6

    .local v1, "i":I
    .local v2, "grantedStandardCount":I
    .local v7, "grantedAdditionalCount":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 52
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;

    .line 53
    .local v8, "permission":Landroid/content/pm/permission/RuntimePermissionPresentationInfo;
    add-int/lit8 v3, v3, 0x1

    .line 54
    invoke-virtual {v8}, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->isGranted()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 55
    invoke-virtual {v8}, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->isStandard()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 57
    invoke-virtual {v8}, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    .line 58
    .local v9, "permissionName":Ljava/lang/CharSequence;
    const/4 v10, 0x1

    .line 59
    .local v10, "isCanPermNameDisplay":Z
    iget-boolean v11, p0, Lcom/android/settingslib/applications/PermissionsSummaryHelper$1;->val$isWifiOnly:Z

    if-eqz v11, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 61
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 62
    .local v11, "permName":Ljava/lang/String;
    move v12, v10

    move v10, v6

    .local v10, "inum":I
    .local v12, "isCanPermNameDisplay":Z
    :goto_1
    if-eqz v12, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_2

    .line 63
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 64
    const/4 v12, 0x0

    .line 62
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 68
    .end local v11
    .end local v12
    .local v10, "isCanPermNameDisplay":Z
    :cond_1
    move v12, v10

    .end local v10
    .restart local v12
    :cond_2
    if-eqz v12, :cond_3

    .line 69
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 72
    .end local v9
    .end local v12
    goto :goto_2

    .line 73
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 51
    .end local v8
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v1
    :cond_6
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    .line 79
    .local v1, "collator":Ljava/text/Collator;
    invoke-virtual {v1, v6}, Ljava/text/Collator;->setStrength(I)V

    .line 80
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 82
    iget-object v6, p0, Lcom/android/settingslib/applications/PermissionsSummaryHelper$1;->val$callback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-virtual {v6, v2, v3, v7, v4}, Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;->onPermissionSummaryResult(IIILjava/util/List;)V

    .line 84
    return-void
.end method
