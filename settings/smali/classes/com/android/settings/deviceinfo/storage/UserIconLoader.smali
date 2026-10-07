.class public Lcom/android/settings/deviceinfo/storage/UserIconLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "UserIconLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/UserIconLoader$UserIconHandler;,
        Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Landroid/util/SparseArray<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mTask:Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "task"    # Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserIconLoader;->mTask:Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;

    .line 53
    return-void
.end method

.method public static loadUserIconsWithContext(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 69
    .local v0, "value":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/Drawable;>;"
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 70
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 71
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, v1, v3}, Lcom/android/settings/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    .end local v3
    goto :goto_0

    .line 73
    :cond_0
    return-object v0
.end method


# virtual methods
.method public loadInBackground()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserIconLoader;->mTask:Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;

    invoke-interface {v0}, Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;->getUserIcons()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/UserIconLoader;->loadInBackground()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method protected onDiscardResult(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/Drawable;>;"
    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/UserIconLoader;->onDiscardResult(Landroid/util/SparseArray;)V

    return-void
.end method
