.class public Lcom/android/settings/deviceinfo/StorageSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "StorageSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;,
        Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;,
        Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;,
        Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;,
        Lcom/android/settings/deviceinfo/StorageSettings$MountTask;
    }
.end annotation


# static fields
.field static final COLOR_PRIVATE:[I

.field static final COLOR_PUBLIC:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static sTotalInternalStorage:J


# instance fields
.field private mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mHasLaunchedPrivateVolumeSettings:Z

.field private mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 77
    const-string v0, "#ff9e9e9e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    .line 79
    const/4 v0, 0x5

    new-array v0, v0, [I

    const-string v1, "#ff26a69a"

    .line 80
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "#ffab47bc"

    .line 81
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "#fff2a600"

    .line 82
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const-string v1, "#ffec407a"

    .line 83
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    const-string v1, "#ffc0ca33"

    .line 84
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    .line 579
    sget-object v0, Lcom/android/settings/deviceinfo/-$$Lambda$StorageSettings$pjFUgWj2HWW95DLVydfI8EgfTdg;->INSTANCE:Lcom/android/settings/deviceinfo/-$$Lambda$StorageSettings$pjFUgWj2HWW95DLVydfI8EgfTdg;

    sput-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 583
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$2;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mHasLaunchedPrivateVolumeSettings:Z

    .line 129
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageSettings$1;-><init>(Lcom/android/settings/deviceinfo/StorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/os/storage/VolumeInfo;

    .line 70
    invoke-static {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->isInteresting(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/StorageSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageSettings;

    .line 70
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->refresh()V

    return-void
.end method

.method static handlePublicVolumeClick(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 338
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 339
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 341
    return v2

    .line 352
    :cond_0
    return v2
.end method

.method private static isInteresting(Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p0, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 144
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 149
    const/4 v0, 0x0

    return v0

    .line 147
    :pswitch_0    # 0x1 0x0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0    # 0x0
        :pswitch_0    # 0x1
    .end packed-switch
.end method

.method static synthetic lambda$static$0(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 580
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/deviceinfo/StorageSettings$1;)V

    return-object v0
.end method

.method private declared-synchronized refresh()V
    .locals 23

    move-object/from16 v1, p0

    monitor-enter p0

    .line 154
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 156
    .local v0, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 157
    iget-object v2, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 158
    iget-object v2, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 160
    iget-object v2, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v3, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 162
    const/4 v8, 0x0

    .line 164
    .local v8, "privateCount":I
    new-instance v2, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    iget-object v3, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-direct {v2, v3}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    move-object v9, v2

    .line 165
    .local v9, "smvp":Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;
    invoke-static {v9}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v2

    move-object v10, v2

    .line 166
    .local v10, "info":Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    iget-wide v2, v10, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    move-wide v11, v2

    .line 167
    .local v11, "privateTotalBytes":J
    iget-wide v2, v10, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iget-wide v4, v10, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    sub-long v13, v2, v4

    .line 169
    .local v13, "privateUsedBytes":J
    iget-object v2, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    move-object v15, v2

    .line 170
    .local v15, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v15, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 172
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 173
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 174
    sget-wide v5, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    invoke-static {v2, v5, v6}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getTotalSize(Landroid/os/storage/VolumeInfo;J)J

    move-result-wide v6

    .line 176
    .local v6, "volumeTotalBytes":J
    const v3, 0x7f060109

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 177
    .local v5, "color":I
    iget-object v3, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    move/from16 v16, v8

    new-instance v8, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    .end local v8
    .local v16, "privateCount":I
    move-object/from16 v17, v2

    move-object v2, v8

    .end local v2
    .local v17, "vol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v18, v9

    move-object v9, v3

    move-object v3, v0

    .end local v9
    .local v18, "smvp":Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;
    move-object/from16 v19, v4

    move-object/from16 v4, v17

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;IJ)V

    invoke-virtual {v9, v8}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 179
    .end local v5
    .end local v6
    goto :goto_1

    .end local v16
    .end local v17
    .end local v18
    .restart local v2
    .restart local v8
    .restart local v9
    :cond_0
    move-object/from16 v17, v2

    move-object/from16 v19, v4

    move/from16 v16, v8

    move-object/from16 v18, v9

    .end local v2
    .end local v8
    .end local v9
    .restart local v16
    .restart local v17
    .restart local v18
    move-object/from16 v8, v17

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    .end local v17
    .local v8, "vol":Landroid/os/storage/VolumeInfo;
    if-nez v2, :cond_1

    .line 180
    iget-object v9, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    new-instance v6, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    sget v5, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    const-wide/16 v20, 0x0

    move-object v2, v6

    move-object v3, v0

    move-object v4, v8

    move-object/from16 v22, v8

    move-object v8, v6

    move-wide/from16 v6, v20

    .end local v8
    .local v22, "vol":Landroid/os/storage/VolumeInfo;
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;IJ)V

    invoke-virtual {v9, v8}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 183
    .end local v22
    :cond_1
    :goto_1
    nop

    .line 172
    move/from16 v8, v16

    move-object/from16 v9, v18

    move-object/from16 v4, v19

    goto :goto_0

    .line 186
    .end local v16
    .end local v18
    .local v8, "privateCount":I
    .restart local v9
    :cond_2
    move/from16 v16, v8

    move-object/from16 v18, v9

    .end local v8
    .end local v9
    .restart local v16
    .restart local v18
    iget-object v2, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v2

    .line 187
    .local v2, "recs":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeRecord;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const v6, 0x7f080207

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeRecord;

    .line 188
    .local v5, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v5}, Landroid/os/storage/VolumeRecord;->getType()I

    move-result v7

    if-ne v7, v3, :cond_3

    iget-object v7, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 189
    invoke-virtual {v5}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v7

    if-nez v7, :cond_3

    .line 191
    invoke-virtual {v0, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 192
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 193
    sget v7, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 195
    new-instance v7, Landroid/support/v7/preference/Preference;

    invoke-direct {v7, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 196
    .local v7, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v5}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v5}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 198
    const v8, 0x1040201

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 199
    invoke-virtual {v7, v6}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 200
    iget-object v8, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 202
    .end local v5
    .end local v6
    .end local v7
    :cond_3
    goto :goto_2

    .line 205
    :cond_4
    iget-object v4, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v4

    .line 206
    .local v4, "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/DiskInfo;

    .line 207
    .local v7, "disk":Landroid/os/storage/DiskInfo;
    iget v8, v7, Landroid/os/storage/DiskInfo;->volumeCount:I

    if-nez v8, :cond_5

    iget-wide v8, v7, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v19, 0x0

    cmp-long v8, v8, v19

    if-lez v8, :cond_5

    .line 208
    new-instance v8, Landroid/support/v7/preference/Preference;

    invoke-direct {v8, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 209
    .local v8, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v7}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v7}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 211
    const v9, 0x1040207

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 212
    invoke-virtual {v8, v6}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 213
    iget-object v9, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 215
    .end local v7
    .end local v8
    :cond_5
    goto :goto_3

    .line 222
    :cond_6
    iget-object v5, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-static {v0, v13, v14}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->Formatter_formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v5, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-static {v11, v12}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getAboutTotalSize(J)J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->Formatter_formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v5, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v5

    if-lez v5, :cond_7

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 227
    :cond_7
    iget-object v5, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v5

    if-lez v5, :cond_8

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 231
    :cond_8
    iget-object v5, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    iget-object v5, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 232
    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v5

    if-nez v5, :cond_9

    .line 234
    iget-boolean v5, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mHasLaunchedPrivateVolumeSettings:Z

    if-nez v5, :cond_9

    .line 235
    iput-boolean v3, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mHasLaunchedPrivateVolumeSettings:Z

    .line 236
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v3, "args":Landroid/os/Bundle;
    const-string v5, "android.os.storage.extra.VOLUME_ID"

    const-string v6, "private"

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v5, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v6, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 239
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v5

    .line 240
    invoke-virtual {v5, v3}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v5

    const v6, 0x7f120dcf

    .line 241
    invoke-virtual {v5, v6}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v5

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v5

    .line 243
    invoke-virtual {v5}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->finish()V

    .line 247
    .end local v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    monitor-exit p0

    return-void

    .line 153
    .end local v0
    .end local v2
    .end local v4
    .end local v10
    .end local v11
    .end local v13
    .end local v15
    .end local v16
    .end local v18
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 104
    const v0, 0x7f1206ad

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 99
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 113
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 115
    sget-wide v1, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide v1

    sput-wide v1, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    .line 119
    :cond_0
    const v1, 0x7f15004b

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->addPreferencesFromResource(I)V

    .line 121
    const-string v1, "storage_internal"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 122
    const-string v1, "storage_external"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 124
    new-instance v1, Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    .line 126
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->setHasOptionsMenu(Z)V

    .line 127
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 258
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 259
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 260
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .line 264
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "key":Ljava/lang/String;
    instance-of v1, p1, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 267
    const/4 v1, 0x0

    .line 269
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 271
    goto :goto_0

    .line 270
    :catch_0
    move-exception v3

    .line 273
    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 274
    return v3

    .line 277
    :cond_0
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v4

    if-nez v4, :cond_1

    .line 278
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->show(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 279
    return v2

    .line 280
    :cond_1
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 281
    const v3, 0x7f120da5

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    .line 282
    return v2

    .line 285
    :cond_2
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 286
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 287
    .local v3, "args":Landroid/os/Bundle;
    const-string v4, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v4, "private"

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 290
    new-instance v4, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v5, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 291
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v4

    const v5, 0x7f120dcf

    .line 292
    invoke-virtual {v4, v5}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v4

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v4

    .line 294
    invoke-virtual {v4, v3}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v4

    .line 295
    invoke-virtual {v4}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_1

    .line 299
    :cond_3
    sget-wide v4, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    invoke-static {v1, v4, v5}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getTotalSize(Landroid/os/storage/VolumeInfo;J)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setVolumeSize(Landroid/os/Bundle;J)V

    .line 301
    new-instance v4, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v5, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .line 302
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v4

    const/4 v5, -0x1

    .line 303
    invoke-virtual {v4, v5}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v4

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v4

    .line 305
    invoke-virtual {v4, v3}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v4

    .line 306
    invoke-virtual {v4}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 309
    :goto_1
    return v2

    .line 311
    .end local v3
    :cond_4
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-nez v2, :cond_5

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->handlePublicVolumeClick(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z

    move-result v2

    return v2

    .line 315
    .end local v1
    :cond_5
    nop

    .line 333
    return v3

    .line 315
    :cond_6
    const-string v1, "disk:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 317
    const v1, 0x7f120da7

    invoke-static {p0, v1, v0}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    .line 318
    return v2

    .line 322
    :cond_7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v1, "args":Landroid/os/Bundle;
    const-string v3, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v3, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v4, Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    .line 325
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v3

    const v4, 0x7f120dba

    .line 326
    invoke-virtual {v3, v4}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v3

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v3

    .line 328
    invoke-virtual {v3, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v3

    .line 329
    invoke-virtual {v3}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 330
    return v2
.end method

.method public onResume()V
    .locals 2

    .line 251
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 252
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 253
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->refresh()V

    .line 254
    return-void
.end method
