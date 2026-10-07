.class public Lcom/android/settings/users/RestrictionUtils;
.super Ljava/lang/Object;
.source "RestrictionUtils.java"


# static fields
.field public static final sRestrictionDescriptions:[I

.field public static final sRestrictionKeys:[Ljava/lang/String;

.field public static final sRestrictionTitles:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    const-string v0, "no_share_location"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/users/RestrictionUtils;->sRestrictionKeys:[Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x7f120be5

    aput v3, v1, v2

    sput-object v1, Lcom/android/settings/users/RestrictionUtils;->sRestrictionTitles:[I

    .line 47
    new-array v0, v0, [I

    const v1, 0x7f120be4

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/users/RestrictionUtils;->sRestrictionDescriptions:[I

    return-void
.end method

.method public static getRestrictions(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 63
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v3

    .line 65
    .local v3, "userRestrictions":Landroid/os/Bundle;
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    sget-object v6, Lcom/android/settings/users/RestrictionUtils;->sRestrictionKeys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 66
    new-instance v6, Landroid/content/RestrictionEntry;

    sget-object v7, Lcom/android/settings/users/RestrictionUtils;->sRestrictionKeys:[Ljava/lang/String;

    aget-object v7, v7, v5

    sget-object v8, Lcom/android/settings/users/RestrictionUtils;->sRestrictionKeys:[Ljava/lang/String;

    aget-object v8, v8, v5

    .line 68
    invoke-virtual {v3, v8, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    invoke-direct {v6, v7, v8}, Landroid/content/RestrictionEntry;-><init>(Ljava/lang/String;Z)V

    .line 69
    .local v6, "entry":Landroid/content/RestrictionEntry;
    sget-object v7, Lcom/android/settings/users/RestrictionUtils;->sRestrictionTitles:[I

    aget v7, v7, v5

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/RestrictionEntry;->setTitle(Ljava/lang/String;)V

    .line 70
    sget-object v7, Lcom/android/settings/users/RestrictionUtils;->sRestrictionDescriptions:[I

    aget v7, v7, v5

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/RestrictionEntry;->setDescription(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v6, v9}, Landroid/content/RestrictionEntry;->setType(I)V

    .line 72
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 75
    .end local v5
    :cond_0
    return-object v1
.end method

.method public static setRestrictions(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/RestrictionEntry;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 80
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 81
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/RestrictionEntry;

    .line 82
    .local v2, "entry":Landroid/content/RestrictionEntry;
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v3, v4, p2}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 83
    .end local v2
    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method
