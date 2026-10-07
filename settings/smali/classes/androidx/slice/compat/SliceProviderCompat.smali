.class public Landroidx/slice/compat/SliceProviderCompat;
.super Ljava/lang/Object;
.source "SliceProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    }
.end annotation


# instance fields
.field private final mAnr:Ljava/lang/Runnable;

.field private mCallback:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mPermissionManager:Landroidx/slice/compat/CompatPermissionManager;

.field private mPinnedList:Landroidx/slice/compat/CompatPinnedList;

.field private final mProvider:Landroidx/slice/SliceProvider;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceProvider;Landroidx/slice/compat/CompatPermissionManager;Landroid/content/Context;)V
    .locals 5
    .param p1, "provider"    # Landroidx/slice/SliceProvider;
    .param p2, "permissionManager"    # Landroidx/slice/compat/CompatPermissionManager;
    .param p3, "context"    # Landroid/content/Context;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    .line 283
    new-instance v0, Landroidx/slice/compat/SliceProviderCompat$1;

    invoke-direct {v0, p0}, Landroidx/slice/compat/SliceProviderCompat$1;-><init>(Landroidx/slice/compat/SliceProviderCompat;)V

    iput-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    .line 107
    iput-object p1, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    .line 108
    iput-object p3, p0, Landroidx/slice/compat/SliceProviderCompat;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slice_data_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "prefsFile":Ljava/lang/String;
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mContext:Landroid/content/Context;

    const-string v2, "slice_data_all_slice_files"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 111
    .local v1, "allFiles":Landroid/content/SharedPreferences;
    const-string v2, "slice_data_all_slice_files"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 112
    .local v2, "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 114
    new-instance v3, Landroid/support/v4/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/support/v4/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    .line 115
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "slice_data_all_slice_files"

    .line 117
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 118
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    :cond_0
    new-instance v3, Landroidx/slice/compat/CompatPinnedList;

    iget-object v4, p0, Landroidx/slice/compat/SliceProviderCompat;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Landroidx/slice/compat/CompatPinnedList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Landroidx/slice/compat/SliceProviderCompat;->mPinnedList:Landroidx/slice/compat/CompatPinnedList;

    .line 121
    iput-object p2, p0, Landroidx/slice/compat/SliceProviderCompat;->mPermissionManager:Landroidx/slice/compat/CompatPermissionManager;

    .line 122
    return-void
.end method

.method static synthetic access$000(Landroidx/slice/compat/SliceProviderCompat;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/compat/SliceProviderCompat;

    .line 64
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mCallback:Ljava/lang/String;

    return-object v0
.end method

.method private static acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 632
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 633
    .local v0, "provider":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_0

    .line 636
    new-instance v1, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    invoke-direct {v1, v0}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;-><init>(Landroid/content/ContentProviderClient;)V

    return-object v1

    .line 634
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No provider found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static addSpecs(Landroid/os/Bundle;Ljava/util/Set;)V
    .locals 5
    .param p0, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)V"
        }
    .end annotation

    .line 329
    .local p1, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v0, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v1, "revs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceSpec;

    .line 332
    .local v3, "spec":Landroidx/slice/SliceSpec;
    invoke-virtual {v3}, Landroidx/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-virtual {v3}, Landroidx/slice/SliceSpec;->getRevision()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v3
    goto :goto_0

    .line 335
    :cond_0
    const-string v2, "specs"

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 336
    const-string v2, "revs"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 337
    return-void
.end method

.method public static bindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)",
            "Landroidx/slice/Slice;"
        }
    .end annotation

    .line 296
    .local p2, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v0

    .line 297
    .local v0, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    invoke-static {v0}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->access$100(Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 301
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 302
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "slice_uri"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 303
    invoke-static {v2, p2}, Landroidx/slice/compat/SliceProviderCompat;->addSpecs(Landroid/os/Bundle;Ljava/util/Set;)V

    .line 304
    invoke-static {v0}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->access$100(Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;)Landroid/content/ContentProviderClient;

    move-result-object v3

    const-string v4, "bind_slice"

    const-string v5, "supports_versioned_parcelable"

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 306
    .local v3, "res":Landroid/os/Bundle;
    if-nez v3, :cond_0

    .line 307
    return-object v1

    .line 309
    :cond_0
    const-class v4, Landroidx/slice/compat/SliceProviderCompat;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 310
    const-string v4, "slice"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 311
    .local v4, "parcel":Landroid/os/Parcelable;
    if-nez v4, :cond_1

    .line 312
    return-object v1

    .line 314
    :cond_1
    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_2

    .line 315
    new-instance v5, Landroidx/slice/Slice;

    move-object v6, v4

    check-cast v6, Landroid/os/Bundle;

    invoke-direct {v5, v6}, Landroidx/slice/Slice;-><init>(Landroid/os/Bundle;)V

    return-object v5

    .line 317
    :cond_2
    invoke-static {v4}, Landroidx/versionedparcelable/ParcelUtils;->fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v5

    check-cast v5, Landroidx/slice/Slice;

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    .line 321
    .end local v2
    .end local v3
    .end local v4
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 318
    :catch_0
    move-exception v2

    .line 319
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "SliceProviderCompat"

    const-string v4, "Unable to bind slice"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 321
    .end local v2
    :goto_0
    throw v1

    .line 298
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 125
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getPinnedSlices(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v0, "pinnedSlices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v1, "slice_data_all_slice_files"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 624
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "slice_data_all_slice_files"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 625
    .local v2, "prefSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 626
    .local v4, "pref":Ljava/lang/String;
    new-instance v5, Landroidx/slice/compat/CompatPinnedList;

    invoke-direct {v5, p0, v4}, Landroidx/slice/compat/CompatPinnedList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroidx/slice/compat/CompatPinnedList;->getPinnedSlices()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 627
    .end local v4
    goto :goto_0

    .line 628
    :cond_0
    return-object v0
.end method

.method public static getSliceDescendants(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/Collection;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 541
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 542
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    invoke-static {v0, p1}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v1

    .local v1, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    .line 543
    :try_start_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 544
    .local v3, "extras":Landroid/os/Bundle;
    const-string v4, "slice_uri"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 545
    invoke-static {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->access$100(Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;)Landroid/content/ContentProviderClient;

    move-result-object v4

    const-string v5, "get_descendants"

    const-string v6, "supports_versioned_parcelable"

    invoke-virtual {v4, v5, v6, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 547
    .local v4, "res":Landroid/os/Bundle;
    if-eqz v4, :cond_1

    .line 548
    const-string v5, "slice_descendants"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 550
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    :cond_0
    return-object v5

    .end local v3
    .end local v4
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    .line 552
    .end local v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    goto :goto_2

    .line 550
    .restart local v1
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 542
    :catch_0
    move-exception v2

    :try_start_3
    throw v2

    .line 550
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v1, :cond_4

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    :cond_4
    :goto_1
    throw v3

    .end local v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v1

    .line 551
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SliceProviderCompat"

    const-string v3, "Unable to get slice descendants"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    .end local v1
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getSpecs(Landroid/os/Bundle;)Ljava/util/Set;
    .locals 7
    .param p0, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 343
    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    .line 344
    .local v0, "specs":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Landroidx/slice/SliceSpec;>;"
    const-string v1, "specs"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 345
    .local v1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "revs"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 346
    .local v2, "revs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 347
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 348
    new-instance v4, Landroidx/slice/SliceSpec;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 351
    .end local v3
    :cond_0
    return-object v0
.end method

.method private handleBindSlice(Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)Landroidx/slice/Slice;
    .locals 4
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .param p3, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/slice/Slice;"
        }
    .end annotation

    .line 253
    .local p2, "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    if-eqz p3, :cond_0

    .line 254
    move-object v0, p3

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/slice/compat/SliceProviderCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "pkg":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mPermissionManager:Landroidx/slice/compat/CompatPermissionManager;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 256
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 255
    invoke-virtual {v1, p1, v2, v3}, Landroidx/slice/compat/CompatPermissionManager;->checkSlicePermission(Landroid/net/Uri;II)I

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-direct {p0}, Landroidx/slice/compat/SliceProviderCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroidx/slice/SliceProvider;->createPermissionSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroidx/slice/Slice;

    move-result-object v1

    return-object v1

    .line 259
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/slice/compat/SliceProviderCompat;->onBindSliceStrict(Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object v1

    return-object v1
.end method

.method private handleGetDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 223
    const-string v0, "onGetSliceDescendants"

    iput-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mCallback:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private handleSlicePinned(Landroid/net/Uri;)V
    .locals 4
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 228
    const-string v0, "onSlicePinned"

    iput-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mCallback:Ljava/lang/String;

    .line 229
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    :try_start_0
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->onSlicePinned(Landroid/net/Uri;)V

    .line 232
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->handleSlicePinned(Landroid/net/Uri;)V

    .line 234
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    nop

    .line 236
    return-void

    .line 234
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v0
.end method

.method private handleSliceUnpinned(Landroid/net/Uri;)V
    .locals 4
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 239
    const-string v0, "onSliceUnpinned"

    iput-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mCallback:Ljava/lang/String;

    .line 240
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    :try_start_0
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->onSliceUnpinned(Landroid/net/Uri;)V

    .line 243
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->handleSliceUnpinned(Landroid/net/Uri;)V

    .line 245
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    nop

    .line 247
    return-void

    .line 245
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v0
.end method

.method private onBindSliceStrict(Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;
    .locals 5
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)",
            "Landroidx/slice/Slice;"
        }
    .end annotation

    .line 263
    .local p2, "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 264
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const-string v1, "onBindSlice"

    iput-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mCallback:Ljava/lang/String;

    .line 265
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 267
    :try_start_0
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 268
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 267
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 271
    invoke-static {p2}, Landroidx/slice/SliceProvider;->setSpecs(Ljava/util/Set;)V

    .line 273
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v2, p1}, Landroidx/slice/SliceProvider;->onBindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v2

    .line 275
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1}, Landroidx/slice/SliceProvider;->setSpecs(Ljava/util/Set;)V

    .line 276
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 279
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v2

    .line 275
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-static {v1}, Landroidx/slice/SliceProvider;->setSpecs(Ljava/util/Set;)V

    .line 276
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v2

    .line 279
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public static pinSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)V"
        }
    .end annotation

    .line 426
    .local p2, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v0

    .line 427
    .local v0, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    invoke-static {v0}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->access$100(Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 431
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 432
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "slice_uri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 433
    const-string v2, "pkg"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-static {v1, p2}, Landroidx/slice/compat/SliceProviderCompat;->addSpecs(Landroid/os/Bundle;Ljava/util/Set;)V

    .line 435
    invoke-static {v0}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->access$100(Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;)Landroid/content/ContentProviderClient;

    move-result-object v2

    const-string v3, "pin_slice"

    const-string v4, "supports_versioned_parcelable"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 438
    .end local v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v1

    .line 437
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SliceProviderCompat"

    const-string v3, "Unable to pin slice"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    .end local v1
    :goto_0
    return-void

    .line 428
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static unpinSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)V"
        }
    .end annotation

    .line 446
    .local p2, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v0

    .line 447
    .local v0, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    invoke-static {v0}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->access$100(Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 451
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 452
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "slice_uri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 453
    const-string v2, "pkg"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {v1, p2}, Landroidx/slice/compat/SliceProviderCompat;->addSpecs(Landroid/os/Bundle;Ljava/util/Set;)V

    .line 455
    invoke-static {v0}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->access$100(Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;)Landroid/content/ContentProviderClient;

    move-result-object v2

    const-string v3, "unpin_slice"

    const-string v4, "supports_versioned_parcelable"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 458
    .end local v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 456
    :catch_0
    move-exception v1

    .line 457
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SliceProviderCompat"

    const-string v3, "Unable to unpin slice"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    .end local v1
    :goto_0
    return-void

    .line 448
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 136
    const-string v0, "bind_slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 137
    const-string v0, "slice_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 138
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p3}, Landroidx/slice/compat/SliceProviderCompat;->getSpecs(Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object v2

    .line 140
    .local v2, "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-virtual {p0}, Landroidx/slice/compat/SliceProviderCompat;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Landroidx/slice/compat/SliceProviderCompat;->handleBindSlice(Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)Landroidx/slice/Slice;

    move-result-object v3

    .line 141
    .local v3, "s":Landroidx/slice/Slice;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 142
    .local v4, "b":Landroid/os/Bundle;
    const-string v5, "supports_versioned_parcelable"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    const-string v5, "slice"

    if-eqz v3, :cond_0

    invoke-static {v3}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object v1

    nop

    :cond_0
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 145
    :cond_1
    const-string v5, "slice"

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/slice/Slice;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    nop

    :cond_2
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 147
    :goto_0
    return-object v4

    .line 148
    .end local v0
    .end local v2
    .end local v3
    .end local v4
    :cond_3
    const-string v0, "map_slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 149
    const-string v0, "slice_intent"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v2, v0}, Landroidx/slice/SliceProvider;->onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v2

    .line 151
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 152
    .local v3, "b":Landroid/os/Bundle;
    if-eqz v2, :cond_7

    .line 153
    invoke-static {p3}, Landroidx/slice/compat/SliceProviderCompat;->getSpecs(Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object v4

    .line 154
    .local v4, "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-virtual {p0}, Landroidx/slice/compat/SliceProviderCompat;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Landroidx/slice/compat/SliceProviderCompat;->handleBindSlice(Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)Landroidx/slice/Slice;

    move-result-object v5

    .line 155
    .local v5, "s":Landroidx/slice/Slice;
    const-string v6, "supports_versioned_parcelable"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 156
    const-string v6, "slice"

    if-eqz v5, :cond_4

    invoke-static {v5}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object v1

    nop

    :cond_4
    invoke-virtual {v3, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 158
    :cond_5
    const-string v6, "slice"

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroidx/slice/Slice;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    nop

    :cond_6
    invoke-virtual {v3, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 160
    .end local v4
    .end local v5
    :goto_1
    goto :goto_2

    .line 161
    :cond_7
    const-string v4, "slice"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 163
    :goto_2
    return-object v3

    .line 164
    .end local v0
    .end local v2
    .end local v3
    :cond_8
    const-string v0, "map_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 165
    const-string v0, "slice_intent"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 166
    .restart local v0
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v1, v0}, Landroidx/slice/SliceProvider;->onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    .line 167
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 168
    .local v2, "b":Landroid/os/Bundle;
    const-string v3, "slice"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 169
    return-object v2

    .line 170
    .end local v0
    .end local v1
    .end local v2
    :cond_9
    const-string v0, "pin_slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 171
    const-string v0, "slice_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 172
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p3}, Landroidx/slice/compat/SliceProviderCompat;->getSpecs(Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object v2

    .line 173
    .local v2, "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    const-string v3, "pkg"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Landroidx/slice/compat/SliceProviderCompat;->mPinnedList:Landroidx/slice/compat/CompatPinnedList;

    invoke-virtual {v4, v0, v3, v2}, Landroidx/slice/compat/CompatPinnedList;->addPin(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 175
    invoke-direct {p0, v0}, Landroidx/slice/compat/SliceProviderCompat;->handleSlicePinned(Landroid/net/Uri;)V

    .line 177
    :cond_a
    return-object v1

    .line 178
    .end local v0
    .end local v2
    .end local v3
    :cond_b
    const-string v0, "unpin_slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 179
    const-string v0, "slice_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 180
    .restart local v0
    const-string v2, "pkg"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Landroidx/slice/compat/SliceProviderCompat;->mPinnedList:Landroidx/slice/compat/CompatPinnedList;

    invoke-virtual {v3, v0, v2}, Landroidx/slice/compat/CompatPinnedList;->removePin(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 182
    invoke-direct {p0, v0}, Landroidx/slice/compat/SliceProviderCompat;->handleSliceUnpinned(Landroid/net/Uri;)V

    .line 184
    :cond_c
    return-object v1

    .line 185
    .end local v0
    .end local v2
    :cond_d
    const-string v0, "get_specs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 186
    const-string v0, "slice_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 187
    .restart local v0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v1, "b":Landroid/os/Bundle;
    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mPinnedList:Landroidx/slice/compat/CompatPinnedList;

    invoke-virtual {v2, v0}, Landroidx/slice/compat/CompatPinnedList;->getSpecs(Landroid/net/Uri;)Landroid/support/v4/util/ArraySet;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/slice/compat/SliceProviderCompat;->addSpecs(Landroid/os/Bundle;Ljava/util/Set;)V

    .line 189
    return-object v1

    .line 190
    .end local v0
    .end local v1
    :cond_e
    const-string v0, "get_descendants"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 191
    const-string v0, "slice_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 192
    .restart local v0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 193
    .restart local v1
    const-string v2, "slice_descendants"

    new-instance v3, Ljava/util/ArrayList;

    .line 194
    invoke-direct {p0, v0}, Landroidx/slice/compat/SliceProviderCompat;->handleGetDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 195
    return-object v1

    .line 196
    .end local v0
    .end local v1
    :cond_f
    const-string v0, "check_perms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 197
    const-string v0, "slice_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 198
    .restart local v0
    const-string v1, "pkg"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "pid"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 200
    .local v2, "pid":I
    const-string v3, "uid"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 201
    .local v3, "uid":I
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 202
    .local v4, "b":Landroid/os/Bundle;
    const-string v5, "result"

    iget-object v6, p0, Landroidx/slice/compat/SliceProviderCompat;->mPermissionManager:Landroidx/slice/compat/CompatPermissionManager;

    invoke-virtual {v6, v0, v2, v3}, Landroidx/slice/compat/CompatPermissionManager;->checkSlicePermission(Landroid/net/Uri;II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    return-object v4

    .line 204
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    :cond_10
    const-string v0, "grant_perms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 205
    const-string v0, "slice_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 206
    .restart local v0
    const-string v2, "pkg"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "toPkg":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-ne v3, v4, :cond_11

    .line 210
    iget-object v3, p0, Landroidx/slice/compat/SliceProviderCompat;->mPermissionManager:Landroidx/slice/compat/CompatPermissionManager;

    invoke-virtual {v3, v0, v2}, Landroidx/slice/compat/CompatPermissionManager;->grantSlicePermission(Landroid/net/Uri;Ljava/lang/String;)V

    .line 211
    .end local v0
    .end local v2
    goto :goto_3

    .line 208
    .restart local v0
    .restart local v2
    :cond_11
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "Only the owning process can manage slice permissions"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    .end local v0
    .end local v2
    :cond_12
    const-string v0, "revoke_perms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 212
    const-string v0, "slice_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 213
    .restart local v0
    const-string v2, "pkg"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .restart local v2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-ne v3, v4, :cond_13

    .line 217
    iget-object v3, p0, Landroidx/slice/compat/SliceProviderCompat;->mPermissionManager:Landroidx/slice/compat/CompatPermissionManager;

    invoke-virtual {v3, v0, v2}, Landroidx/slice/compat/CompatPermissionManager;->revokeSlicePermission(Landroid/net/Uri;Ljava/lang/String;)V

    .end local v0
    .end local v2
    goto :goto_3

    .line 215
    .restart local v0
    .restart local v2
    :cond_13
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "Only the owning process can manage slice permissions"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    .end local v0
    .end local v2
    :cond_14
    :goto_3
    return-object v1
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0}, Landroidx/slice/SliceProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
