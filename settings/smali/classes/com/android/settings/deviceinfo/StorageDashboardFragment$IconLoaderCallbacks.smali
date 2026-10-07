.class public final Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;
.super Ljava/lang/Object;
.source "StorageDashboardFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IconLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/util/SparseArray<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 339
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreateLoader$0(Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;)Landroid/util/SparseArray;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/deviceinfo/storage/UserIconLoader;->loadUserIconsWithContext(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onLoadFinished$1(Lcom/android/settingslib/core/AbstractPreferenceController;)Z
    .locals 1
    .param p0, "controller"    # Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 353
    instance-of v0, p0, Lcom/android/settings/deviceinfo/storage/UserIconLoader$UserIconHandler;

    return v0
.end method

.method static synthetic lambda$onLoadFinished$2(Landroid/util/SparseArray;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 1
    .param p0, "data"    # Landroid/util/SparseArray;
    .param p1, "controller"    # Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 356
    move-object v0, p1

    check-cast v0, Lcom/android/settings/deviceinfo/storage/UserIconLoader$UserIconHandler;

    .line 357
    invoke-interface {v0, p0}, Lcom/android/settings/deviceinfo/storage/UserIconLoader$UserIconHandler;->handleUserIcons(Landroid/util/SparseArray;)V

    .line 356
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation

    .line 343
    new-instance v0, Lcom/android/settings/deviceinfo/storage/UserIconLoader;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 344
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$yGwysNy4Bq4_2nwwvU2QePhZgvU;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$yGwysNy4Bq4_2nwwvU2QePhZgvU;-><init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;)V

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/storage/UserIconLoader;-><init>(Landroid/content/Context;Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;)V

    .line 343
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 351
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/util/SparseArray<Landroid/graphics/drawable/Drawable;>;>;"
    .local p2, "data":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/Drawable;>;"
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->access$000(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Ljava/util/List;

    move-result-object v0

    .line 352
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$7UIHa462aQ5cO1d2zsPI99b5Y1Y;->INSTANCE:Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$7UIHa462aQ5cO1d2zsPI99b5Y1Y;

    .line 353
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$Jn0eBlqBHbuO-2COJ4jEmaXSJJc;

    invoke-direct {v1, p2}, Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$Jn0eBlqBHbuO-2COJ4jEmaXSJJc;-><init>(Landroid/util/SparseArray;)V

    .line 354
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 358
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 339
    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Landroid/util/SparseArray;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;)V"
        }
    .end annotation

    .line 362
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/util/SparseArray<Landroid/graphics/drawable/Drawable;>;>;"
    return-void
.end method
