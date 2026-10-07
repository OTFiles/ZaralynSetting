.class public Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BatteryAppListPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field static final USE_FAKE_DATA:Z = false


# instance fields
.field private mActivity:Lcom/android/settings/SettingsActivity;

.field mAnomalySparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;>;"
        }
    .end annotation
.end field

.field mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private mHandler:Landroid/os/Handler;

.field private mPrefContext:Landroid/content/Context;

.field private mPreferenceCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferenceKey:Ljava/lang/String;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceKey"    # Ljava/lang/String;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p4, "activity"    # Lcom/android/settings/SettingsActivity;
    .param p5, "fragment"    # Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 118
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;-><init>(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    .line 120
    if-eqz p3, :cond_0

    .line 121
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 124
    :cond_0
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceKey:Ljava/lang/String;

    .line 125
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 126
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 127
    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 128
    iput-object p5, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    .line 64
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Lcom/android/settings/SettingsActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    .line 64
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    return-object v0
.end method

.method private addNotAvailableMessage()V
    .locals 4

    .line 472
    const-string v0, "not_available"

    .line 473
    .local v0, "NOT_AVAILABLE":Ljava/lang/String;
    const-string v1, "not_available"

    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 474
    .local v1, "notAvailable":Landroid/support/v7/preference/Preference;
    if-nez v1, :cond_0

    .line 475
    new-instance v2, Landroid/support/v7/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 476
    const-string v2, "not_available"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 477
    const v2, 0x7f120a22

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 478
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 479
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 481
    :cond_0
    return-void
.end method

.method private cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 5
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;

    .line 401
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    .line 402
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 403
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 404
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 405
    .local v2, "p":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    goto :goto_1

    .line 408
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .end local v2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    .end local v1
    :cond_1
    return-void
.end method

.method private getCachedCount()I
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 457
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .line 279
    .local p1, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 281
    .local v0, "uidList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatterySipper;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 283
    .local v2, "numSippers":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_a

    .line 284
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    .line 285
    .local v5, "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    if-lez v6, :cond_9

    .line 286
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    .line 290
    .local v6, "realUid":I
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    invoke-static {v7}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->isSharedGid(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 291
    nop

    .line 292
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v7

    .line 291
    invoke-static {v3, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 296
    :cond_0
    invoke-static {v6}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->isSystemUid(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "mediaserver"

    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 297
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 301
    const/16 v6, 0x3e8

    .line 304
    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 306
    new-instance v7, Lcom/android/internal/os/BatterySipper;

    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v9, Lcom/android/settings/fuelgauge/FakeUid;

    invoke-direct {v9, v6}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    const-wide/16 v10, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 308
    .local v7, "newSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v7, v5}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 309
    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 310
    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 311
    move-object v5, v7

    .line 314
    .end local v7
    :cond_2
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    .line 315
    .local v7, "index":I
    if-gez v7, :cond_3

    .line 317
    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 320
    :cond_3
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatterySipper;

    .line 321
    .local v8, "existingSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v8, v5}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 322
    iget-object v9, v8, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-nez v9, :cond_4

    iget-object v9, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 324
    iget-object v9, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 327
    :cond_4
    iget-object v9, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 328
    iget-object v9, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v9, v9

    goto :goto_1

    :cond_5
    move v9, v3

    .line 329
    .local v9, "existingPackageLen":I
    :goto_1
    iget-object v10, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 330
    iget-object v10, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v10, v10

    goto :goto_2

    :cond_6
    move v10, v3

    .line 331
    .local v10, "newPackageLen":I
    :goto_2
    if-lez v10, :cond_8

    .line 332
    add-int v11, v9, v10

    new-array v11, v11, [Ljava/lang/String;

    .line 333
    .local v11, "newPackages":[Ljava/lang/String;
    if-lez v9, :cond_7

    .line 334
    iget-object v12, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v12, v3, v11, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    :cond_7
    iget-object v12, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v12, v3, v11, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    iput-object v11, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 342
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    :cond_8
    :goto_3
    goto :goto_4

    .line 343
    :cond_9
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    .end local v5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 347
    .end local v4
    :cond_a
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 348
    .local v4, "numUidSippers":I
    nop

    .local v3, "i":I
    :goto_5
    if-ge v3, v4, :cond_b

    .line 349
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 353
    .end local v3
    :cond_b
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v3, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->sortUsageList(Ljava/util/List;)V

    .line 354
    return-object v1
.end method

.method private static isSharedGid(I)Z
    .locals 1
    .param p0, "uid"    # I

    .line 413
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSystemUid(I)Z
    .locals 2
    .param p0, "uid"    # I

    .line 417
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 418
    .local v0, "appUid":I
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 2
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;

    .line 461
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 462
    .local v1, "p":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 463
    .end local v1
    goto :goto_0

    .line 464
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    .line 465
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 146
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 147
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    .line 148
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 149
    return-void
.end method

.method extractKeyFromSipper(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 3
    .param p1, "sipper"    # Lcom/android/internal/os/BatterySipper;

    .line 381
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->extractKeyFromUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 383
    :cond_0
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_1

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/os/BatterySipper;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 385
    :cond_1
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_2

    .line 386
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper$DrainType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 387
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getPackages()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 388
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getPackages()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 390
    :cond_3
    const-string v0, "PrefControllerMixin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inappropriate BatterySipper without uid and package names: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v0, "-1"

    return-object v0
.end method

.method extractKeyFromUid(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .line 397
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 163
    instance-of v0, p1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-eqz v0, :cond_1

    .line 164
    move-object v0, p1

    check-cast v0, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 165
    .local v0, "pgp":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/BatteryEntry;

    move-result-object v8

    .line 166
    .local v8, "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v4, 0x0

    .line 167
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getPercent()Ljava/lang/String;

    move-result-object v6

    .line 168
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAnomalySparseArray:Landroid/util/SparseArray;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAnomalySparseArray:Landroid/util/SparseArray;

    iget-object v7, v8, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 166
    :goto_0
    move-object v7, v5

    goto :goto_1

    .line 169
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 166
    :goto_1
    move-object v5, v8

    invoke-static/range {v1 .. v7}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;Ljava/util/List;)V

    .line 170
    const/4 v1, 0x1

    return v1

    .line 172
    .end local v0
    .end local v8
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 142
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 133
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->stopRequestQueue()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    return-void
.end method

.method public refreshAppListGroup(Lcom/android/internal/os/BatteryStatsHelper;Z)V
    .locals 30
    .param p1, "statsHelper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p2, "showAllApps"    # Z

    move-object/from16 v0, p0

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    return-void

    .line 195
    :cond_0
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 196
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    const v3, 0x7f120a21

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v2

    .line 199
    .local v2, "powerProfile":Lcom/android/internal/os/PowerProfile;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v3

    .line 200
    .local v3, "stats":Landroid/os/BatteryStats;
    const-string v4, "screen.full"

    invoke-virtual {v2, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    .line 201
    .local v4, "averagePower":D
    const/4 v6, 0x0

    .line 203
    .local v6, "addedSome":Z
    const/4 v7, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3, v7}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v8

    move/from16 v16, v8

    goto :goto_0

    :cond_1
    move/from16 v16, v7

    .line 205
    .local v16, "dischargeAmount":I
    :goto_0
    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {v0, v8}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 206
    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 208
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpl-double v8, v4, v8

    if-gez v8, :cond_2

    .line 263
    move-object/from16 v21, v2

    move-object/from16 v23, v3

    move-wide/from16 v24, v4

    move/from16 v17, v6

    goto/16 :goto_8

    .line 209
    :cond_2
    nop

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v8

    .line 209
    invoke-direct {v0, v8}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 211
    .local v8, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz p2, :cond_3

    const-wide/16 v9, 0x0

    .line 212
    :goto_1
    move-wide v14, v9

    goto :goto_2

    :cond_3
    iget-object v9, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v9, v8}, Lcom/android/settings/fuelgauge/BatteryUtils;->removeHiddenBatterySippers(Ljava/util/List;)D

    move-result-wide v9

    goto :goto_1

    .line 213
    .local v14, "hiddenPowerMah":D
    :goto_2
    iget-object v9, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v9, v8}, Lcom/android/settings/fuelgauge/BatteryUtils;->sortUsageList(Ljava/util/List;)V

    .line 215
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    .line 216
    .local v12, "numSippers":I
    move/from16 v17, v6

    move v6, v7

    .local v6, "i":I
    .local v17, "addedSome":Z
    :goto_3
    if-ge v6, v12, :cond_9

    .line 217
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Lcom/android/internal/os/BatterySipper;

    .line 218
    .local v13, "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v18

    .line 220
    .local v18, "totalPower":D
    iget-object v9, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-wide v10, v13, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move/from16 v20, v12

    move-object v7, v13

    move-wide/from16 v12, v18

    .end local v12
    .end local v13
    .local v7, "sipper":Lcom/android/internal/os/BatterySipper;
    .local v20, "numSippers":I
    invoke-virtual/range {v9 .. v16}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateBatteryPercent(DDDI)D

    move-result-wide v9

    .line 223
    .local v9, "percentOfTotal":D
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v11, v9

    double-to-int v11, v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_4

    .line 224
    goto :goto_4

    .line 226
    :cond_4
    invoke-virtual {v0, v7}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 227
    nop

    .line 216
    .end local v7
    .end local v9
    .end local v18
    :goto_4
    move-object/from16 v21, v2

    move-object/from16 v23, v3

    move-wide/from16 v24, v4

    const/4 v1, 0x0

    goto/16 :goto_7

    .line 229
    .restart local v7
    .restart local v9
    .restart local v18
    :cond_5
    new-instance v11, Landroid/os/UserHandle;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v13

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-direct {v11, v13}, Landroid/os/UserHandle;-><init>(I)V

    .line 230
    .local v11, "userHandle":Landroid/os/UserHandle;
    new-instance v13, Lcom/android/settings/fuelgauge/BatteryEntry;

    iget-object v12, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    .end local v2
    .local v21, "powerProfile":Lcom/android/internal/os/PowerProfile;
    invoke-direct {v13, v12, v1, v2, v7}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    move-object v1, v13

    .line 232
    .local v1, "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v2, v12, v11}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 234
    .local v2, "badgedIcon":Landroid/graphics/drawable/Drawable;
    iget-object v12, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 235
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v13

    .line 234
    invoke-virtual {v12, v13, v11}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 238
    .local v12, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {v0, v7}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->extractKeyFromSipper(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v13

    .line 239
    .local v13, "key":Ljava/lang/String;
    invoke-direct {v0, v13}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 240
    .local v22, "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    if-nez v22, :cond_6

    .line 241
    move-object/from16 v23, v3

    new-instance v3, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .end local v3
    .local v23, "stats":Landroid/os/BatteryStats;
    move-wide/from16 v24, v4

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    .end local v4
    .local v24, "averagePower":D
    invoke-direct {v3, v4, v2, v12, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 243
    .end local v22
    .local v3, "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v3, v13}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    goto :goto_5

    .line 245
    .end local v23
    .end local v24
    .local v3, "stats":Landroid/os/BatteryStats;
    .restart local v4
    .restart local v22
    :cond_6
    move-object/from16 v23, v3

    move-wide/from16 v24, v4

    move-object/from16 v3, v22

    .end local v4
    .end local v22
    .local v3, "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .restart local v23
    .restart local v24
    :goto_5
    iput-wide v9, v7, Lcom/android/internal/os/BatterySipper;->percent:D

    .line 246
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 247
    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v3, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 248
    invoke-virtual {v3, v9, v10}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(D)V

    .line 249
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->shouldShowAnomalyIcon(Z)V

    .line 250
    iget-wide v4, v7, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    const-wide/16 v26, 0x0

    cmp-long v4, v4, v26

    if-nez v4, :cond_7

    iget-object v4, v7, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v5, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v4, v5, :cond_7

    .line 251
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v5, v7, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v28, v1

    move-object/from16 v29, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v4, v2, v5, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J

    move-result-wide v4

    .end local v1
    .end local v2
    .local v28, "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    .local v29, "badgedIcon":Landroid/graphics/drawable/Drawable;
    iput-wide v4, v7, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    goto :goto_6

    .line 254
    .end local v28
    .end local v29
    .restart local v1
    .restart local v2
    :cond_7
    move-object/from16 v28, v1

    move-object/from16 v29, v2

    const/4 v1, 0x0

    .end local v1
    .end local v2
    .restart local v28
    .restart local v29
    :goto_6
    invoke-virtual {v0, v3, v7}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->setUsageSummary(Landroid/support/v7/preference/Preference;Lcom/android/internal/os/BatterySipper;)V

    .line 255
    const/4 v2, 0x1

    .line 256
    .end local v17
    .local v2, "addedSome":Z
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 257
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getCachedCount()I

    move-result v5

    sub-int/2addr v4, v5

    const/16 v5, 0xb

    if-le v4, v5, :cond_8

    .line 259
    nop

    .line 263
    move/from16 v17, v2

    goto :goto_8

    .line 216
    .end local v3
    .end local v7
    .end local v9
    .end local v11
    .end local v12
    .end local v13
    .end local v18
    .end local v28
    .end local v29
    :cond_8
    move/from16 v17, v2

    .end local v2
    .restart local v17
    :goto_7
    add-int/lit8 v6, v6, 0x1

    move v7, v1

    move/from16 v12, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    move-wide/from16 v4, v24

    move-object/from16 v1, p1

    goto/16 :goto_3

    .line 263
    .end local v6
    .end local v8
    .end local v14
    .end local v20
    .end local v21
    .end local v23
    .end local v24
    .local v2, "powerProfile":Lcom/android/internal/os/PowerProfile;
    .local v3, "stats":Landroid/os/BatteryStats;
    .restart local v4
    :cond_9
    move-object/from16 v21, v2

    move-object/from16 v23, v3

    move-wide/from16 v24, v4

    .end local v2
    .end local v3
    .end local v4
    .restart local v21
    .restart local v23
    .restart local v24
    :goto_8
    if-nez v17, :cond_a

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->addNotAvailableMessage()V

    .line 266
    :cond_a
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 268
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->startRequestQueue()V

    .line 269
    return-void
.end method

.method setUsageSummary(Landroid/support/v7/preference/Preference;Lcom/android/internal/os/BatterySipper;)V
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "sipper"    # Lcom/android/internal/os/BatterySipper;

    .line 360
    iget-wide v0, p2, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .line 361
    .local v0, "usageTimeMs":J
    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 362
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mContext:Landroid/content/Context;

    long-to-double v3, v0

    .line 363
    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v2

    .line 364
    .local v2, "timeSequence":Ljava/lang/CharSequence;
    nop

    .line 365
    iget-object v3, p2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v3, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120246

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    .line 366
    :cond_1
    :goto_0
    nop

    .line 364
    move-object v3, v2

    :goto_1
    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    .end local v2
    :cond_2
    return-void
.end method

.method shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z
    .locals 2
    .param p1, "sipper"    # Lcom/android/internal/os/BatterySipper;

    .line 375
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
