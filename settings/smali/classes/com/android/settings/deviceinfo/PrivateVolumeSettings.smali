.class public Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;
    }
.end annotation


# static fields
.field private static final ITEMS_NO_SHOW_SHARED:[I

.field private static final ITEMS_SHOW_SHARED:[I


# instance fields
.field private mCurrentUser:Landroid/content/pm/UserInfo;

.field private mExplore:Landroid/support/v7/preference/Preference;

.field private mHeaderPoolIndex:I

.field private mHeaderPreferencePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mItemPoolIndex:I

.field private mItemPreferencePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

.field private mNeedsUpdate:Z

.field private final mReceiver:Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private mSharedVolume:Landroid/os/storage/VolumeInfo;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

.field private mSystemSize:J

.field private mTotalSize:J

.field private mUserManager:Landroid/os/UserManager;

.field private mVolume:Landroid/os/storage/VolumeInfo;

.field private mVolumeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    .line 99
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f120d9a
        0x7f120da3
    .end array-data

    :array_1
    .array-data 4
        0x7f120d9a
        0x7f120da1
        0x7f120da4
        0x7f120d9b
        0x7f120da3
        0x7f120da2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 122
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    .line 123
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    .line 553
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 678
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setRetainInstance(Z)V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
    .param p1, "x1"    # Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updateDetails(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .line 77
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;

    .line 77
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .line 77
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->update()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .line 77
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .line 77
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private addCategory(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 2
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .line 278
    iget v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .local v0, "category":Landroid/support/v7/preference/PreferenceCategory;
    goto :goto_0

    .line 281
    .end local v0
    :cond_0
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 282
    .restart local v0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :goto_0
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 286
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 287
    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    .line 288
    return-object v0
.end method

.method private addDetailItems(Landroid/support/v7/preference/PreferenceGroup;ZI)V
    .locals 4
    .param p1, "category"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "showShared"    # Z
    .param p3, "userId"    # I

    .line 292
    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    .line 293
    .local v0, "itemsToAdd":[I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 294
    aget v2, v0, v1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, p3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 296
    .end local v1
    :cond_1
    return-void
.end method

.method private addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V
    .locals 4
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "titleRes"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "userId"    # I

    .line 299
    const v0, 0x7f120da3

    if-ne p2, v0, :cond_1

    .line 300
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSystemSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 301
    const-string v0, "PrivateVolumeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping System storage because its size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSystemSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void

    .line 304
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p4, v0, :cond_1

    .line 306
    return-void

    .line 310
    :cond_1
    iget v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 311
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    .local v0, "item":Lcom/android/settings/deviceinfo/StorageItemPreference;
    goto :goto_0

    .line 313
    .end local v0
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->buildItem()Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v0

    .line 314
    .restart local v0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :goto_0
    if-eqz p3, :cond_3

    .line 317
    invoke-virtual {v0, p3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 318
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    goto :goto_1

    .line 320
    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 321
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 323
    :goto_1
    const v1, 0x7f12089f

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 324
    iput p4, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 325
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 326
    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    .line 327
    return-void
.end method

.method private addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .line 272
    const v0, 0x7fffffff

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 273
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 274
    return-void
.end method

.method private buildAction(I)Landroid/support/v7/preference/Preference;
    .locals 2
    .param p1, "titleRes"    # I

    .line 336
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 337
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 338
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 339
    return-object v0
.end method

.method private buildItem()Lcom/android/settings/deviceinfo/StorageItemPreference;
    .locals 2

    .line 330
    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    .line 331
    .local v0, "item":Lcom/android/settings/deviceinfo/StorageItemPreference;
    const v1, 0x7f0800f6

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(I)V

    .line 332
    return-object v0
.end method

.method private getIntentForStorage(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/String;

    .line 544
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 546
    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "vnd.android.document/root"

    .line 545
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    return-object v0
.end method

.method private isVolumeValid()Z
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 133
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 132
    :goto_0
    return v1
.end method

.method private setTitle()V
    .locals 3

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method

.method static setVolumeSize(Landroid/os/Bundle;J)V
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;
    .param p1, "size"    # J

    .line 343
    const-string v0, "volume_size"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 344
    return-void
.end method

.method private static varargs totalValues(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J
    .locals 8
    .param p0, "details"    # Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;
    .param p1, "userId"    # I
    .param p2, "keys"    # [Ljava/lang/String;

    .line 664
    const-wide/16 v0, 0x0

    .line 665
    .local v0, "total":J
    iget-object v2, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 666
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v2, :cond_1

    .line 667
    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p2, v4

    .line 668
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 669
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 667
    .end local v5
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 673
    :cond_1
    const-string v3, "PrivateVolumeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MeasurementDetails mediaSize array does not have key for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_2
    return-wide v0
.end method

.method private update()V
    .locals 20

    .line 200
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 202
    return-void

    .line 205
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setTitle()V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 211
    .local v1, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 213
    .local v2, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 215
    iget-object v3, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-direct {v0, v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 217
    iget-object v3, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 218
    .local v3, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 219
    .local v4, "userCount":I
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v4, v5, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    move v7, v6

    .line 220
    .local v7, "showHeaders":Z
    :goto_0
    iget-object v8, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v5

    goto :goto_1

    :cond_2
    move v8, v6

    .line 222
    .local v8, "showShared":Z
    :goto_1
    iput v6, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    .line 223
    iput v6, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    .line 225
    const/4 v9, 0x0

    .line 227
    .local v9, "addedUserCount":I
    move v10, v9

    move v9, v6

    .local v9, "userIndex":I
    .local v10, "addedUserCount":I
    :goto_2
    if-ge v9, v4, :cond_5

    .line 228
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 229
    .local v11, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v12, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    invoke-static {v12, v11}, Lcom/android/settings/Utils;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 230
    if-eqz v7, :cond_3

    .line 231
    iget-object v12, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v12}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v12

    goto :goto_3

    :cond_3
    move-object v12, v2

    .line 232
    .local v12, "details":Landroid/support/v7/preference/PreferenceGroup;
    :goto_3
    iget v13, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v0, v12, v8, v13}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addDetailItems(Landroid/support/v7/preference/PreferenceGroup;ZI)V

    .line 233
    add-int/lit8 v10, v10, 0x1

    .line 227
    .end local v11
    .end local v12
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 238
    .end local v9
    :cond_5
    sub-int v9, v4, v10

    if-lez v9, :cond_7

    .line 239
    const v9, 0x7f120dcb

    .line 240
    invoke-virtual {v0, v9}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 239
    invoke-direct {v0, v2, v9}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v9

    .line 241
    .local v9, "otherUsers":Landroid/support/v7/preference/PreferenceGroup;
    move v11, v6

    .local v11, "userIndex":I
    :goto_4
    if-ge v11, v4, :cond_7

    .line 242
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 243
    .local v12, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v13, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    invoke-static {v13, v12}, Lcom/android/settings/Utils;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 244
    iget-object v13, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iget v14, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v0, v9, v6, v13, v14}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 241
    .end local v12
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 249
    .end local v9
    .end local v11
    :cond_7
    const v9, 0x7f120d9c

    const/4 v11, 0x0

    const/16 v12, -0x2710

    invoke-direct {v0, v2, v9, v11, v12}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 251
    if-eqz v8, :cond_8

    .line 252
    iget-object v9, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/support/v7/preference/Preference;

    invoke-direct {v0, v2, v9}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 255
    :cond_8
    iget-object v9, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v9}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v11

    .line 256
    .local v11, "freeBytes":J
    iget-wide v13, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    sub-long/2addr v13, v11

    .line 260
    .local v13, "usedBytes":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v13, v14, v6}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v9

    .line 261
    .local v9, "result":Landroid/text/format/Formatter$BytesResult;
    iget-object v15, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v5, 0x7f120dd2

    invoke-virtual {v0, v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    move-object/from16 v17, v2

    iget-object v2, v9, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    .end local v2
    .local v17, "screen":Landroid/support/v7/preference/PreferenceScreen;
    const/16 v16, 0x0

    aput-object v2, v6, v16

    iget-object v2, v9, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v18, v3

    const/4 v3, 0x1

    aput-object v2, v6, v3

    .end local v3
    .local v18, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v5, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v2, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v5, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    .line 264
    invoke-static {v1, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    .line 263
    const v5, 0x7f120de2

    invoke-virtual {v0, v5, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v2, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    iget-wide v5, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    invoke-virtual {v2, v13, v14, v5, v6}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setPercent(JJ)V

    .line 267
    iget-object v2, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    invoke-virtual {v2}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->forceMeasure()V

    .line 268
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mNeedsUpdate:Z

    .line 269
    return-void
.end method

.method private updateDetails(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 24
    .param p1, "details"    # Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    move-object/from16 v1, p0

    .line 561
    move-object/from16 v2, p1

    const/4 v0, 0x0

    .line 562
    .local v0, "otherItem":Lcom/android/settings/deviceinfo/StorageItemPreference;
    const-wide/16 v3, 0x0

    .line 563
    .local v3, "accountedSize":J
    const-wide/16 v5, 0x0

    .line 564
    .local v5, "totalMiscSize":J
    const-wide/16 v7, 0x0

    .line 566
    .local v7, "totalDownloadsSize":J
    const/4 v9, 0x0

    move-wide v10, v7

    move-wide v6, v5

    move-wide v4, v3

    move-object v3, v0

    move v0, v9

    .end local v5
    .end local v7
    .local v0, "i":I
    .local v3, "otherItem":Lcom/android/settings/deviceinfo/StorageItemPreference;
    .local v4, "accountedSize":J
    .local v6, "totalMiscSize":J
    .local v10, "totalDownloadsSize":J
    :goto_0
    move v8, v0

    .end local v0
    .local v8, "i":I
    iget v0, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    if-ge v8, v0, :cond_1

    .line 567
    iget-object v0, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 568
    .local v12, "item":Lcom/android/settings/deviceinfo/StorageItemPreference;
    iget v0, v12, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    move v13, v0

    .line 571
    .local v13, "userId":I
    :try_start_0
    invoke-virtual {v12}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 574
    .local v0, "itemTitleId":I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 572
    .end local v0
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/NumberFormatException;
    nop

    .end local v0
    move v0, v9

    .line 575
    .local v0, "itemTitleId":I
    :goto_1
    if-eqz v0, :cond_0

    const/4 v14, 0x2

    const/4 v15, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 566
    .end local v0
    .end local v12
    .end local v13
    :goto_2
    move/from16 v16, v9

    goto/16 :goto_4

    .line 597
    .restart local v0
    .restart local v12
    .restart local v13
    :pswitch_0    # 0x7f120da4
    new-array v14, v15, [Ljava/lang/String;

    sget-object v15, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v15, v14, v9

    invoke-static {v2, v13, v14}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v14

    .line 599
    .local v14, "videosSize":J
    invoke-direct {v1, v12, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 600
    add-long/2addr v4, v14

    .line 603
    .end local v14
    goto :goto_2

    .line 577
    :pswitch_1    # 0x7f120da3
    iget-wide v14, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSystemSize:J

    invoke-direct {v1, v12, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 578
    iget-wide v14, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSystemSize:J

    add-long/2addr v4, v14

    .line 581
    goto :goto_2

    .line 615
    :pswitch_2    # 0x7f120da2
    new-array v14, v15, [Ljava/lang/String;

    sget-object v15, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v15, v14, v9

    invoke-static {v2, v13, v14}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v14

    .line 617
    .local v14, "downloadsSize":J
    iget-object v9, v2, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    invoke-virtual {v9, v13}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v17

    .line 618
    .local v17, "miscSize":J
    add-long/2addr v10, v14

    .line 619
    add-long v6, v6, v17

    .line 620
    add-long v19, v17, v14

    add-long v4, v4, v19

    .line 628
    move-object v3, v12

    .line 629
    .end local v14
    .end local v17
    goto :goto_3

    .line 589
    :pswitch_3    # 0x7f120da1
    new-array v9, v14, [Ljava/lang/String;

    sget-object v14, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v14, v9, v16

    sget-object v14, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v14, v9, v15

    invoke-static {v2, v13, v9}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v14

    .line 591
    .local v14, "imagesSize":J
    invoke-direct {v1, v12, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 592
    add-long/2addr v4, v14

    .line 595
    .end local v14
    goto :goto_3

    .line 631
    :pswitch_4    # 0x7f120d9c
    iget-wide v14, v2, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    invoke-direct {v1, v12, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 632
    iget-wide v14, v2, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    add-long/2addr v4, v14

    .line 636
    nop

    .line 566
    .end local v0
    .end local v12
    .end local v13
    :goto_3
    const/16 v16, 0x0

    goto :goto_4

    .line 605
    .restart local v0
    .restart local v12
    .restart local v13
    :pswitch_5    # 0x7f120d9b
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    sget-object v17, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v17, v9, v16

    sget-object v17, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v17, v9, v15

    sget-object v15, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v15, v9, v14

    const/4 v14, 0x3

    sget-object v15, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v15, v9, v14

    const/4 v14, 0x4

    sget-object v15, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v15, v9, v14

    invoke-static {v2, v13, v9}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v14

    .line 609
    .local v14, "audioSize":J
    invoke-direct {v1, v12, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 610
    add-long/2addr v4, v14

    .line 613
    .end local v14
    goto :goto_4

    .line 583
    :pswitch_6    # 0x7f120d9a
    move/from16 v16, v9

    iget-object v9, v2, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    invoke-virtual {v9, v13}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    invoke-direct {v1, v12, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 584
    iget-object v9, v2, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    invoke-virtual {v9, v13}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    add-long/2addr v4, v14

    .line 587
    goto :goto_4

    .line 638
    :cond_0
    move/from16 v16, v9

    iget-object v9, v2, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    invoke-virtual {v9, v13}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    .line 639
    .local v14, "userSize":J
    invoke-direct {v1, v12, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 640
    add-long/2addr v4, v14

    .line 566
    .end local v0
    .end local v12
    .end local v13
    .end local v14
    :goto_4
    add-int/lit8 v0, v8, 0x1

    .end local v8
    .local v0, "i":I
    move/from16 v9, v16

    goto/16 :goto_0

    .line 646
    .end local v0
    :cond_1
    if-eqz v3, :cond_2

    .line 647
    iget-wide v8, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    iget-wide v12, v2, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    sub-long/2addr v8, v12

    .line 648
    .local v8, "usedSize":J
    sub-long v12, v8, v4

    .line 649
    .local v12, "unaccountedSize":J
    add-long v14, v6, v10

    add-long/2addr v14, v12

    .line 650
    .local v14, "otherSize":J
    const-string v0, "PrivateVolumeSettings"

    move-object/from16 v21, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3
    .local v21, "otherItem":Lcom/android/settings/deviceinfo/StorageItemPreference;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v22, v14

    const-string v14, "Other items: \n\tmTotalSize: "

    .end local v14
    .local v22, "otherSize":J
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " availSize: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v2, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " usedSize: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "\n\taccountedSize: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " unaccountedSize size: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "\n\ttotalMiscSize: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " totalDownloadsSize: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "\n\tdetails: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    move-object/from16 v3, v21

    move-wide/from16 v14, v22

    invoke-direct {v1, v3, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 657
    .end local v8
    .end local v12
    .end local v21
    .end local v22
    .restart local v3
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f120d9a
        :pswitch_6    # 0x7f120d9a
        :pswitch_5    # 0x7f120d9b
        :pswitch_4    # 0x7f120d9c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f120da1
        :pswitch_3    # 0x7f120da1
        :pswitch_2    # 0x7f120da2
        :pswitch_1    # 0x7f120da3
        :pswitch_0    # 0x7f120da4
    .end packed-switch
.end method

.method private updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V
    .locals 2
    .param p1, "pref"    # Lcom/android/settings/deviceinfo/StorageItemPreference;
    .param p2, "size"    # J

    .line 660
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 661
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 142
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 147
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 151
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    .line 152
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 158
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    .line 161
    .local v1, "sharedDataSize":J
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "volume_size"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    .line 162
    iget-wide v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSystemSize:J

    .line 166
    iget-wide v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 167
    iput-wide v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    .line 168
    iput-wide v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSystemSize:J

    .line 172
    :cond_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 174
    new-instance v3, Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v3, v0, v4, v5}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V

    iput-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    .line 175
    iget-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 179
    return-void

    .line 182
    :cond_1
    const v3, 0x7f15004c

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreferencesFromResource(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 185
    new-instance v3, Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    .line 186
    iget-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    .line 188
    const v3, 0x7f120db9

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->buildAction(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/support/v7/preference/Preference;

    .line 190
    iput-boolean v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mNeedsUpdate:Z

    .line 192
    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setHasOptionsMenu(Z)V

    .line 193
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 384
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 385
    const v0, 0x7f0e0006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 386
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 376
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 377
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->onDestroy()V

    .line 380
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 429
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 430
    .local v1, "args":Landroid/os/Bundle;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 466
    :pswitch_0    # 0x7f0a0404
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 438
    :pswitch_1    # 0x7f0a0406
    const-string v2, "android.os.storage.extra.VOLUME_ID"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v2, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v4, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    .line 440
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    const v4, 0x7f120dc4

    .line 441
    invoke-virtual {v2, v4}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getMetricsCategory()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 443
    invoke-virtual {v2, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 444
    invoke-virtual {v2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 445
    return v3

    .line 432
    :pswitch_2    # 0x7f0a0405
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {p0, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;->show(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)V

    .line 433
    return v3

    .line 435
    :pswitch_3    # 0x7f0a0403
    new-instance v2, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v2, v0, v4}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v4}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 436
    return v3

    .line 456
    :pswitch_4    # 0x7f0a0402
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 457
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.os.storage.extra.VOLUME_ID"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    .line 459
    return v3

    .line 461
    .end local v2
    :pswitch_5    # 0x7f0a0401
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    .local v2, "deletion_helper_intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    .line 464
    return v3

    .line 447
    .end local v2
    :pswitch_6    # 0x7f0a0400
    const-string v2, "android.os.storage.extra.VOLUME_ID"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v2, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v4, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    .line 449
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    const v4, 0x7f120dbb

    .line 450
    invoke-virtual {v2, v4}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getMetricsCategory()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 452
    invoke-virtual {v2, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 453
    invoke-virtual {v2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 454
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0400
        :pswitch_6    # 0x7f0a0400
        :pswitch_5    # 0x7f0a0401
        :pswitch_4    # 0x7f0a0402
        :pswitch_3    # 0x7f0a0403
        :pswitch_0    # 0x7f0a0404
        :pswitch_2    # 0x7f0a0405
        :pswitch_1    # 0x7f0a0406
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .line 370
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 371
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 372
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .line 473
    instance-of v0, p1, Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_0

    .line 474
    move-object v0, p1

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget v0, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 477
    .local v0, "userId":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 480
    .local v1, "itemTitleId":I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 478
    .end local v1
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .line 481
    .local v1, "itemTitleId":I
    :goto_1
    const/4 v2, 0x0

    .line 482
    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, 0x1

    if-eqz v1, :cond_3

    const v4, 0x7f120db9

    if-eq v1, v4, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_2

    .line 504
    :pswitch_0    # 0x7f120da4
    const-string v4, "com.android.providers.media.documents"

    const-string v5, "videos_root"

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getIntentForStorage(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 505
    goto/16 :goto_2

    .line 510
    :pswitch_1    # 0x7f120da3
    invoke-static {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;->show(Landroid/app/Fragment;)V

    .line 511
    return v3

    .line 515
    :pswitch_2    # 0x7f120da2
    iget-object v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {p0, v4, v5, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->show(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/storage/VolumeInfo;I)V

    .line 517
    return v3

    .line 501
    :pswitch_3    # 0x7f120da1
    const-string v4, "com.android.providers.media.documents"

    const-string v5, "images_root"

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getIntentForStorage(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 502
    goto :goto_2

    .line 521
    :pswitch_4    # 0x7f120d9c
    invoke-static {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->show(Landroid/app/Fragment;)V

    .line 522
    return v3

    .line 507
    :pswitch_5    # 0x7f120d9b
    const-string v4, "com.android.providers.media.documents"

    const-string v5, "audio_root"

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getIntentForStorage(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 508
    goto :goto_2

    .line 484
    :pswitch_6    # 0x7f120d9a
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 485
    .local v4, "args":Landroid/os/Bundle;
    const-string v5, "classname"

    const-class v6, Lcom/android/settings/Settings$StorageUseActivity;

    .line 486
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 485
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v5, "volumeUuid"

    iget-object v6, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v5, "volumeName"

    iget-object v6, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v5, "storageType"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 492
    new-instance v5, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v6, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 493
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v5

    .line 494
    invoke-virtual {v5, v4}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v5

    const v6, 0x7f12015d

    .line 495
    invoke-virtual {v5, v6}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v5

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getMetricsCategory()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v5

    .line 497
    invoke-virtual {v5}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v2

    .line 499
    .end local v4
    goto :goto_2

    .line 526
    :cond_1
    iget-object v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v2

    .line 527
    nop

    .line 534
    :goto_2
    if-eqz v2, :cond_2

    .line 535
    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 537
    invoke-static {p0, v2}, Lcom/android/settings/Utils;->launchIntent(Landroid/app/Fragment;Landroid/content/Intent;)V

    .line 538
    return v3

    .line 540
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    return v3

    .line 529
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->show(Landroid/app/Fragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 530
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x7f120d9a
        :pswitch_6    # 0x7f120d9a
        :pswitch_5    # 0x7f120d9b
        :pswitch_4    # 0x7f120d9c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f120da1
        :pswitch_3    # 0x7f120da1
        :pswitch_2    # 0x7f120da2
        :pswitch_1    # 0x7f120da3
        :pswitch_0    # 0x7f120da4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .line 390
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 392
    :cond_0
    const v0, 0x7f0a0405

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 393
    .local v0, "rename":Landroid/view/MenuItem;
    const v1, 0x7f0a0403

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 394
    .local v1, "mount":Landroid/view/MenuItem;
    const v2, 0x7f0a0406

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 395
    .local v2, "unmount":Landroid/view/MenuItem;
    const v3, 0x7f0a0400

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 396
    .local v3, "format":Landroid/view/MenuItem;
    const v4, 0x7f0a0402

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 397
    .local v4, "migrate":Landroid/view/MenuItem;
    const v5, 0x7f0a0401

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 401
    .local v5, "manage":Landroid/view/MenuItem;
    const-string v6, "private"

    iget-object v7, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    .line 402
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 403
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 404
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 405
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f050044

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 409
    :cond_1
    iget-object v6, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    if-ne v6, v7, :cond_2

    move v6, v7

    goto :goto_0

    :cond_2
    move v6, v8

    :goto_0
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 410
    iget-object v6, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v6

    if-nez v6, :cond_3

    move v6, v7

    goto :goto_1

    :cond_3
    move v6, v8

    :goto_1
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 411
    iget-object v6, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v6

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 412
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 413
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 416
    :goto_2
    const v6, 0x7f120dbd

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 419
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 420
    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v6

    .line 421
    .local v6, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v6, :cond_4

    .line 422
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    if-ne v9, v7, :cond_4

    iget-object v9, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 423
    invoke-static {v9, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_3

    .line 421
    :cond_4
    move v7, v8

    :goto_3
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 424
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 348
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 354
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 355
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 357
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 361
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mNeedsUpdate:Z

    if-eqz v0, :cond_1

    .line 362
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->update()V

    goto :goto_1

    .line 364
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setTitle()V

    .line 366
    :goto_1
    return-void
.end method
