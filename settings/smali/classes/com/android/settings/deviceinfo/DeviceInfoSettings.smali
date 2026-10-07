.class public Lcom/android/settings/deviceinfo/DeviceInfoSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/DeviceInfoSettings$MyUpdateDeviceSnInfoTask;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static deviceNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mDebuggingFeaturesDisallowedBySystem:Z

.field mDevHitCountdown:I

.field private mFotaUpdate:Landroid/support/v7/preference/PreferenceScreen;

.field private mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mFunDisallowedBySystem:Z

.field mHideDevHitCountdown:I

.field mHits:[J

.field private mLastReqFwqCameraUpdateTime:J

.field private mPadDeviceSNPref:Landroid/support/v7/preference/Preference;

.field private mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

.field private mUm:Landroid/os/UserManager;

.field private netFwqNotFindDeviceSN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 414
    new-instance v0, Lcom/android/settings/deviceinfo/DeviceInfoSettings$1;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->deviceNameMap:Ljava/util/HashMap;

    .line 1064
    new-instance v0, Lcom/android/settings/deviceinfo/DeviceInfoSettings$2;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 145
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mLastReqFwqCameraUpdateTime:J

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->netFwqNotFindDeviceSN:Ljava/lang/String;

    .line 157
    const/4 v1, 0x3

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mHits:[J

    .line 167
    iput-object v0, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    return-void
.end method

.method public static Formatter_formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeBytes"    # J

    .line 771
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->formatStorageSize(Landroid/content/Context;JZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Formatter_formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeBytes"    # J

    .line 761
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->formatStorageSize(Landroid/content/Context;JZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abnormalTextToInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/Integer;

    .line 1180
    :try_start_0
    const-string v0, "[^0-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1181
    :catch_0
    move-exception v0

    .line 1182
    .local v0, "e":Ljava/lang/Exception;
    return-object p1
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/DeviceInfoSettings;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/DeviceInfoSettings;

    .line 96
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mLastReqFwqCameraUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/DeviceInfoSettings;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/DeviceInfoSettings;
    .param p1, "x1"    # J

    .line 96
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mLastReqFwqCameraUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/DeviceInfoSettings;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/DeviceInfoSettings;

    .line 96
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mPadDeviceSNPref:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method private ciActionOnSysUpdate(Landroid/os/PersistableBundle;)V
    .locals 7
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .line 648
    const-string v0, "ci_action_on_sys_update_intent_string"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "intentStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 651
    const-string v1, "ci_action_on_sys_update_extra_string"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "extra":Ljava/lang/String;
    const-string v2, "ci_action_on_sys_update_extra_val_string"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 656
    .local v2, "extraVal":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 657
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 658
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    :cond_0
    const-string v4, "DeviceInfoSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ciActionOnSysUpdate: broadcasting intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " with extra "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 664
    .end local v1
    .end local v2
    .end local v3
    :cond_1
    return-void
.end method

.method private cmpRomLargerThanCanDisplay(J)Z
    .locals 3
    .param p1, "cmpsize"    # J

    .line 1003
    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->readTotalMem()J

    move-result-wide v0

    .line 1004
    .local v0, "total_mem":J
    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    .line 1005
    const/4 v2, 0x1

    return v2

    .line 1008
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static extractMemValue([BI)J
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "index"    # I

    .line 942
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_2

    aget-byte v0, p0, p1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 943
    aget-byte v0, p0, p1

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    aget-byte v0, p0, p1

    const/16 v2, 0x39

    if-gt v0, v2, :cond_1

    .line 944
    move v0, p1

    .line 945
    .local v0, "start":I
    add-int/lit8 p1, p1, 0x1

    .line 946
    :goto_1
    array-length v3, p0

    if-ge p1, v3, :cond_0

    aget-byte v3, p0, p1

    if-lt v3, v1, :cond_0

    aget-byte v3, p0, p1

    if-gt v3, v2, :cond_0

    .line 948
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 950
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p1, v0

    invoke-direct {v1, p0, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 951
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    return-wide v2

    .line 953
    .end local v0
    .end local v1
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 955
    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static formatDisplayName()Ljava/lang/String;
    .locals 4

    .line 401
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 402
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 403
    sget-object v1, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->deviceNameMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 404
    .local v2, "devKey":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 405
    sget-object v1, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->deviceNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 406
    goto :goto_1

    .line 408
    .end local v2
    :cond_0
    goto :goto_0

    .line 410
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static formatModelName()Ljava/lang/String;
    .locals 5

    .line 439
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 440
    .local v0, "modelName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->deviceNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    sget-object v1, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->deviceNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 443
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Readboy_C5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    const-string v1, "ro.product.storage"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "storageValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "64G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 446
    const-string v2, "%s (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .end local v1
    :cond_1
    return-object v0
.end method

.method public static formatStorageSize(Landroid/content/Context;JZZ)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # J
    .param p3, "shorter"    # Z
    .param p4, "bLarger"    # Z

    .line 882
    if-nez p0, :cond_0

    .line 883
    const-string v0, ""

    return-object v0

    .line 885
    :cond_0
    if-eqz p4, :cond_1

    const/16 v0, 0x400

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e8

    .line 886
    .local v0, "defaultSize":I
    :goto_0
    long-to-float v1, p1

    .line 887
    .local v1, "result":F
    const v2, 0x10400e7

    .line 888
    .local v2, "suffix":I
    const/high16 v3, 0x44610000    # 900.0f

    cmpl-float v4, v1, v3

    if-lez v4, :cond_2

    .line 889
    const v2, 0x10402fc

    .line 890
    int-to-float v4, v0

    div-float/2addr v1, v4

    .line 892
    :cond_2
    cmpl-float v4, v1, v3

    if-lez v4, :cond_3

    .line 893
    const v2, 0x10403ae

    .line 894
    int-to-float v4, v0

    div-float/2addr v1, v4

    .line 896
    :cond_3
    cmpl-float v4, v1, v3

    if-lez v4, :cond_4

    .line 897
    const v2, 0x104024a

    .line 898
    int-to-float v4, v0

    div-float/2addr v1, v4

    .line 900
    :cond_4
    cmpl-float v4, v1, v3

    if-lez v4, :cond_5

    .line 901
    const v2, 0x1040651

    .line 902
    int-to-float v4, v0

    div-float/2addr v1, v4

    .line 904
    :cond_5
    cmpl-float v3, v1, v3

    if-lez v3, :cond_6

    .line 905
    const v2, 0x1040526

    .line 906
    int-to-float v3, v0

    div-float/2addr v1, v3

    .line 910
    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gez v3, :cond_8

    .line 911
    float-to-double v6, v1

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, v6, v8

    if-gez v3, :cond_7

    .line 912
    const-string v3, "%.2f"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "value":Ljava/lang/String;
    :goto_1
    goto/16 :goto_2

    .line 914
    .end local v3
    :cond_7
    const-string v3, "%.0f"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 916
    :cond_8
    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_a

    .line 917
    if-eqz p3, :cond_9

    .line 918
    const-string v3, "%.0f"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 920
    :cond_9
    const-string v3, "%.2f"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 922
    :cond_a
    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_c

    .line 923
    if-eqz p3, :cond_b

    .line 924
    const-string v3, "%.0f"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 926
    :cond_b
    const-string v3, "%.2f"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 929
    :cond_c
    if-eqz p3, :cond_d

    .line 930
    const-string v3, "%.0f"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 932
    :cond_d
    const-string v3, "%.2f"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 935
    .restart local v3
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104021c

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v4

    .line 937
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v5

    .line 936
    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 935
    return-object v4
.end method

.method public static getAboutTotalSize(J)J
    .locals 4
    .param p0, "sizeBytes"    # J

    .line 780
    move-wide v0, p0

    .line 781
    .local v0, "size":J
    const-wide v2, 0x5000000000L

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide v2, 0x8000000000L

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 782
    const-wide v0, 0x8000000000L

    goto :goto_0

    .line 783
    :cond_0
    const-wide v2, 0x2800000000L

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 784
    const-wide v0, 0x4000000000L

    goto :goto_0

    .line 785
    :cond_1
    const-wide v2, 0x1400000000L

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 786
    const-wide v0, 0x2000000000L

    goto :goto_0

    .line 787
    :cond_2
    const-wide v2, 0xa00000000L

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 788
    const-wide v0, 0x1000000000L

    goto :goto_0

    .line 789
    :cond_3
    const-wide v2, 0x500000000L

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    .line 790
    const-wide v0, 0x800000000L

    goto :goto_0

    .line 791
    :cond_4
    const-wide v2, 0x280000000L

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    .line 792
    const-wide v0, 0x400000000L

    .line 794
    :cond_5
    :goto_0
    return-wide v0
.end method

.method public static getBatteryCapacity(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 1396
    const-wide/16 v0, 0x0

    .line 1397
    .local v0, "batteryCapacity":D
    const-string v2, "com.android.internal.os.PowerProfile"

    .line 1400
    .local v2, "POWER_PROFILE_CLASS":Ljava/lang/String;
    :try_start_0
    const-string v3, "com.android.internal.os.PowerProfile"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1401
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v7

    .line 1402
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1404
    .local v3, "mPowerProfile":Ljava/lang/Object;
    const-string v4, "com.android.internal.os.PowerProfile"

    .line 1405
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getBatteryCapacity"

    new-array v6, v7, [Ljava/lang/Class;

    .line 1406
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    .line 1407
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    .line 1404
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v4

    .line 1411
    goto :goto_0

    .line 1409
    .end local v3
    :catch_0
    move-exception v3

    .line 1410
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1414
    .end local v3
    :goto_0
    double-to-int v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getDeviceSubMoreParamForGuide(Landroid/app/Activity;)Ljava/lang/String;
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;

    .line 1423
    const/4 v0, 0x1

    move v1, v0

    .line 1427
    .local v1, "isAllOk":Z
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1429
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "?A="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getRomTotalSize()Ljava/lang/String;

    move-result-object v3

    .line 1431
    .local v3, "strtmp":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 1432
    const/4 v1, 0x0

    goto :goto_0

    .line 1433
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "gb"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1434
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1435
    const-string v4, " "

    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1437
    :cond_1
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1439
    const-string v4, "&O="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getSDTotalSize()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1441
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1442
    const/4 v1, 0x0

    goto :goto_1

    .line 1443
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "gb"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1444
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1445
    const-string v4, " "

    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1447
    :cond_3
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    const-string v4, "&FC="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    invoke-static {}, Lcom/android/settings/deviceinfo/CameraMaxSize;->getFrontCameraMaxSize()I

    move-result v4

    invoke-static {v4}, Lcom/android/settings/deviceinfo/CameraMaxSize;->formatCameraSize(I)I

    move-result v4

    .line 1451
    .local v4, "intVal":I
    if-gtz v4, :cond_4

    .line 1452
    const/4 v1, 0x0

    .line 1454
    :cond_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1456
    const-string v6, "&BC="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-static {}, Lcom/android/settings/deviceinfo/CameraMaxSize;->getBackCameraMaxSize()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/deviceinfo/CameraMaxSize;->formatCameraSize(I)I

    move-result v6

    move v4, v6

    .line 1458
    if-gtz v4, :cond_5

    .line 1459
    const/4 v1, 0x0

    .line 1461
    :cond_5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1463
    const-string v6, "&BAT="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    invoke-static {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getBatteryCapacity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 1465
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1466
    const/4 v1, 0x0

    .line 1468
    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    const-string v6, "window"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 1471
    .local v6, "display":Landroid/view/Display;
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1472
    .local v7, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v6, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1475
    const-string v8, "&W="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    iget v8, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1478
    const-string v8, "&H="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    iget v8, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1481
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move v8, v5

    .line 1483
    .local v8, "isFHDmode":Z
    :try_start_1
    const-string v9, "ro.build.chipset"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1484
    .local v9, "devDiffValue":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "_FHD"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v10, :cond_7

    .line 1486
    const/4 v8, 0x1

    .line 1490
    .end local v9
    :cond_7
    goto :goto_2

    .line 1488
    :catch_0
    move-exception v9

    .line 1489
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1491
    .end local v9
    :goto_2
    const-string v9, "&FHD="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    if-eqz v8, :cond_8

    goto :goto_3

    :cond_8
    move v0, v5

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1495
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :try_start_3
    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1496
    .local v0, "platform":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1497
    const-string v9, "&PF="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    .end local v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_9
    goto :goto_4

    .line 1500
    :catch_1
    move-exception v0

    .line 1501
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1505
    .end local v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    const-string v0, "ro.product.readboy.software"

    const-string v9, ""

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1506
    .local v0, "RZName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1507
    const-string v9, "_"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1508
    const-string v9, "_"

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 1510
    :cond_a
    const-string v5, "&RZN="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    .end local v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_b
    goto :goto_5

    .line 1513
    :catch_2
    move-exception v0

    .line 1514
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1518
    .end local v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :goto_5
    :try_start_7
    const-string v0, "ro.product.readboy.cmiit_id"

    const-string v5, ""

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1519
    .local v0, "cmiitId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1520
    const-string v5, "&CMT="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    .end local v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_c
    goto :goto_6

    .line 1523
    :catch_3
    move-exception v0

    .line 1524
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1528
    .end local v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :goto_6
    :try_start_9
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 1529
    .local v0, "sdkNum":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1530
    const-string v5, "&SDK="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1531
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    .end local v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_d
    goto :goto_7

    .line 1533
    :catch_4
    move-exception v0

    .line 1534
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1538
    .end local v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :goto_7
    :try_start_b
    const-string v0, "ro.readboy.internal.model"

    const-string v5, ""

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1539
    .local v0, "model":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1540
    const-string v5, "&MDL="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    .end local v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :cond_e
    goto :goto_8

    .line 1543
    :catch_5
    move-exception v0

    .line 1544
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1549
    .end local v0
    :goto_8
    if-eqz v1, :cond_f

    .line 1550
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "my_device_guide_sub_more_info_detail"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v5, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1551
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1553
    :cond_f
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "my_device_guide_sub_more_info_detail"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1554
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    if-nez v5, :cond_10

    .line 1555
    return-object v0

    .line 1559
    .end local v0
    .end local v2
    .end local v3
    .end local v4
    .end local v6
    .end local v7
    .end local v8
    :cond_10
    goto :goto_9

    .line 1558
    :catch_6
    move-exception v0

    .line 1560
    :goto_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getEspPadSubModel()Ljava/lang/String;
    .locals 10

    .line 479
    const-string v0, ""

    .line 480
    .local v0, "sub_Model_Name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Readboy_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ro.product.model.id"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "deviceName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Readboy_C12"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 484
    :try_start_0
    const-string v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 487
    goto :goto_0

    .line 485
    :catch_0
    move-exception v2

    .line 486
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 488
    .end local v2
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 489
    const-string v2, "msm8952"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    const-string v0, "_RBG19515"

    goto :goto_1

    .line 492
    :cond_0
    const-string v0, ""

    goto :goto_1

    .line 495
    :cond_1
    const-string v0, ""

    .line 497
    :goto_1
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "==sub_Model_Name=====divhee===============RBG19515="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Readboy_C15"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 501
    const-string v2, "ro.product.readboy.software"

    const-string v3, "unknow"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, "softWareVer":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "RBG19515"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 503
    const-string v0, "_RBG19515"

    goto :goto_2

    .line 504
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "RBC19B11"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 505
    const-string v0, "_RBC19B11"

    .line 509
    .end local v2
    :cond_4
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_5

    const-string v2, "Readboy_C20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 510
    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getSDTotalSize()Ljava/lang/String;

    move-result-object v2

    .line 511
    .local v2, "sdcardsize":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 512
    const-string v5, "_%s"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .end local v2
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Readboy_C20Pro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 516
    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getRomTotalSize()Ljava/lang/String;

    move-result-object v2

    .line 517
    .restart local v2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 518
    const-string v5, "_%s"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .end local v2
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "Readboy_C5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 522
    const-string v2, "ro.product.storage"

    const-string v5, ""

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, "storageValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "64G"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 524
    const-string v5, "_%s"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 528
    .end local v2
    :cond_7
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "======divhee================sub_Model_Name===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-object v0
.end method

.method public static getFlashSize()J
    .locals 20

    .line 1266
    const-wide/16 v1, 0x0

    move-wide v3, v1

    .line 1268
    .local v3, "size":J
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v5, "/sys/block"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1269
    .local v0, "blockDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 1270
    .local v5, "list":[Ljava/io/File;
    const-wide/16 v6, 0x0

    .line 1271
    .local v6, "totalNand":J
    const-wide/16 v8, 0x0

    .line 1272
    .local v8, "totalEmmc":J
    array-length v10, v5

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_2

    aget-object v12, v5, v11

    .line 1273
    .local v12, "blockFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "nand"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1274
    new-instance v13, Ljava/io/File;

    const-string v14, "size"

    invoke-direct {v13, v12, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1275
    .local v13, "sizeFile":Ljava/io/File;
    invoke-static {v13}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->readLineLong(Ljava/io/File;)J

    move-result-wide v14

    add-long/2addr v6, v14

    .line 1276
    .end local v13
    goto :goto_1

    :cond_0
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "mmcblk0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1277
    new-instance v13, Ljava/io/File;

    const-string v14, "size"

    invoke-direct {v13, v12, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1278
    .restart local v13
    invoke-static {v13}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->readLineLong(Ljava/io/File;)J

    move-result-wide v14

    move-wide v8, v14

    .line 1279
    cmp-long v14, v8, v1

    if-lez v14, :cond_1

    .line 1280
    goto :goto_2

    .line 1272
    .end local v12
    .end local v13
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1283
    :cond_2
    :goto_2
    cmp-long v10, v6, v1

    const-wide/high16 v13, 0x4024000000000000L

    const-wide/high16 v1, 0x4000000000000000L

    if-lez v10, :cond_3

    .line 1284
    long-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v18

    div-double v10, v10, v18

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    .line 1285
    .local v10, "pow":D
    add-double/2addr v13, v10

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v13, v13, v16

    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v3, v1

    .line 1286
    .end local v10
    goto :goto_3

    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-lez v12, :cond_4

    .line 1287
    long-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v18

    div-double v10, v10, v18

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    .line 1288
    .restart local v10
    add-double/2addr v13, v10

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v13, v13, v16

    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    double-to-long v3, v1

    .line 1291
    .end local v0
    .end local v5
    .end local v6
    .end local v8
    .end local v10
    :cond_4
    :goto_3
    goto :goto_4

    .line 1290
    :catch_0
    move-exception v0

    .line 1292
    :goto_4
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isUFS_Flash()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move-wide v0, v3

    goto :goto_6

    :cond_6
    :goto_5
    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getFlashSizeUFS()J

    move-result-wide v0

    :goto_6
    return-wide v0
.end method

.method private static getFlashSizeUFS()J
    .locals 14

    .line 1306
    const/4 v0, 0x0

    .line 1307
    .local v0, "privateCount":I
    const-wide/16 v1, 0x0

    .line 1309
    .local v1, "emulatedUsedByte":J
    const-wide/16 v3, 0x0

    .line 1311
    .local v3, "privateTotalBytes":J
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v5

    .line 1312
    .local v5, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v6

    .line 1313
    .local v6, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1315
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/VolumeInfo;

    .line 1316
    .local v8, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 1317
    invoke-static {v8, v5}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getVolumeInfoSize(Landroid/os/storage/VolumeInfo;Landroid/os/storage/StorageManager;)J

    move-result-wide v9

    .line 1318
    .local v9, "volumeTotalBytes":J
    sget-object v11, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    add-int/lit8 v12, v0, 0x1

    .local v12, "privateCount":I
    sget-object v13, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    array-length v13, v13

    rem-int/2addr v0, v13

    .end local v0
    aget v0, v11, v0

    .line 1319
    .local v0, "color":I
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1320
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v11

    .line 1322
    .local v11, "path":Ljava/io/File;
    add-long/2addr v3, v9

    .line 1324
    .end local v0
    .end local v9
    .end local v11
    :cond_0
    nop

    .line 1333
    .end local v8
    .end local v12
    .local v0, "privateCount":I
    :cond_1
    :goto_1
    move v0, v12

    goto :goto_2

    .line 1324
    .restart local v8
    :cond_2
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 1325
    invoke-static {v8, v5}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getVolumeInfoSize(Landroid/os/storage/VolumeInfo;Landroid/os/storage/StorageManager;)J

    move-result-wide v9

    .line 1326
    .restart local v9
    sget-object v11, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    add-int/lit8 v12, v0, 0x1

    .restart local v12
    sget-object v13, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    array-length v13, v13

    rem-int/2addr v0, v13

    .end local v0
    aget v0, v11, v0

    .line 1327
    .local v0, "color":I
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1328
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v11

    .line 1330
    .restart local v11
    add-long/2addr v1, v9

    .end local v0
    .end local v8
    .end local v9
    .end local v11
    goto :goto_1

    .line 1333
    .end local v12
    .local v0, "privateCount":I
    :cond_3
    :goto_2
    goto :goto_0

    .line 1335
    :cond_4
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-nez v7, :cond_5

    move-wide v7, v3

    goto :goto_3

    :cond_5
    move-wide v7, v1

    .line 1336
    .local v7, "size":J
    :goto_3
    const-wide v9, 0x5000000000L

    cmp-long v9, v7, v9

    if-ltz v9, :cond_6

    const-wide v9, 0x8000000000L

    cmp-long v9, v7, v9

    if-gtz v9, :cond_6

    .line 1337
    const-wide v7, 0x8000000000L

    goto :goto_4

    .line 1338
    :cond_6
    const-wide v9, 0x2800000000L

    cmp-long v9, v7, v9

    if-ltz v9, :cond_7

    .line 1339
    const-wide v7, 0x4000000000L

    goto :goto_4

    .line 1340
    :cond_7
    const-wide v9, 0x1400000000L

    cmp-long v9, v7, v9

    if-ltz v9, :cond_8

    .line 1341
    const-wide v7, 0x2000000000L

    goto :goto_4

    .line 1342
    :cond_8
    const-wide v9, 0xa00000000L

    cmp-long v9, v7, v9

    if-ltz v9, :cond_9

    .line 1343
    const-wide v7, 0x1000000000L

    goto :goto_4

    .line 1344
    :cond_9
    const-wide v9, 0x500000000L

    cmp-long v9, v7, v9

    if-ltz v9, :cond_a

    .line 1345
    const-wide v7, 0x800000000L

    goto :goto_4

    .line 1346
    :cond_a
    const-wide v9, 0x280000000L

    cmp-long v9, v7, v9

    if-ltz v9, :cond_b

    .line 1347
    const-wide v7, 0x400000000L

    .line 1349
    :cond_b
    :goto_4
    return-wide v7
.end method

.method private getMBNVersionValue()Ljava/lang/String;
    .locals 5

    .line 704
    const/4 v0, 0x0

    .line 706
    .local v0, "mVersion":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->getRegionalizationService()Lcom/android/internal/os/IRegionalizationService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    .line 709
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    if-eqz v1, :cond_3

    .line 711
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string v2, "/persist/speccfg/mbnversion"

    invoke-interface {v1, v2}, Lcom/android/internal/os/IRegionalizationService;->checkFileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 712
    const/4 v1, 0x0

    return-object v1

    .line 713
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string v2, "/persist/speccfg/mbnversion"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/android/internal/os/IRegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 714
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string v2, "/persist/speccfg/mbnversion"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/android/internal/os/IRegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .line 716
    :cond_2
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read MBNVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 717
    :catch_0
    move-exception v1

    .line 718
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    .end local v1
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getOtaFotaNewVersion(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1135
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com_dream_update_new_version"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1136
    .local v0, "iNewVersion":I
    if-nez v0, :cond_0

    .line 1137
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "com_classone_fota_new_version"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1139
    :cond_0
    return v0
.end method

.method private getQGPVersionValue()Ljava/lang/String;
    .locals 5

    .line 725
    const/4 v0, 0x0

    .line 727
    .local v0, "mVersion":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 728
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->getRegionalizationService()Lcom/android/internal/os/IRegionalizationService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    .line 730
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    if-eqz v1, :cond_3

    .line 732
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string v2, "/persist/speccfg/qgpversion"

    invoke-interface {v1, v2}, Lcom/android/internal/os/IRegionalizationService;->checkFileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 733
    const/4 v1, 0x0

    return-object v1

    .line 734
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string v2, "/persist/speccfg/qgpversion"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/android/internal/os/IRegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 735
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string v2, "/persist/speccfg/qgpversion"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/android/internal/os/IRegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .line 737
    :cond_2
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read QGPVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 738
    :catch_0
    move-exception v1

    .line 739
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .end local v1
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getRamFusionRomTotalSize()Ljava/lang/String;
    .locals 8

    .line 802
    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getRomTotalSize()Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, "realRomSize":Ljava/lang/String;
    const-string v1, "persist.sys.ext_swap_switch"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 804
    .local v1, "ramFusionState":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 805
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " + %d GB(\u6269\u5c55\u5185\u5b58)"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "persist.sys.ext_swap_file_size"

    const/4 v7, 0x4

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 807
    :cond_0
    return-object v0
.end method

.method public static getRomTotalSize()Ljava/lang/String;
    .locals 5

    .line 871
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->readTotalMem()J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->formatStorageSize(Landroid/content/Context;JZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDTotalSize()Ljava/lang/String;
    .locals 4

    .line 751
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getFlashSize()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->formatStorageSize(Landroid/content/Context;JZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVolumeInfoSize(Landroid/os/storage/VolumeInfo;Landroid/os/storage/StorageManager;)J
    .locals 6
    .param p0, "info"    # Landroid/os/storage/VolumeInfo;
    .param p1, "storageManager"    # Landroid/os/storage/StorageManager;

    .line 1359
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1360
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1362
    invoke-virtual {p1}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide v2

    return-wide v2

    .line 1364
    :cond_0
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v2

    .line 1365
    .local v2, "path":Ljava/io/File;
    if-nez v2, :cond_1

    .line 1367
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "divhee info\'s path is null on getTotalSize(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    return-wide v0

    .line 1370
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    .line 1372
    .end local v2
    :catch_0
    move-exception v2

    .line 1373
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1375
    .end local v2
    return-wide v0
.end method

.method public static isApkExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1175
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isApkExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cmpVersion"    # Ljava/lang/String;

    .line 1187
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1188
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 1191
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object v1, v4

    .line 1193
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_1

    .line 1194
    const-wide/16 v4, 0x0

    .line 1196
    .local v4, "appneedversion":J
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2, v6}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->abnormalTextToInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    int-to-long v4, v6

    .line 1199
    goto :goto_0

    .line 1197
    :catch_0
    move-exception v6

    .line 1198
    .local v6, "e":Ljava/lang/Exception;
    const-wide/16 v4, 0x0

    .line 1201
    .end local v6
    :goto_0
    :try_start_2
    iget v6, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    int-to-long v6, v6

    cmp-long v6, v6, v4

    if-ltz v6, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    return v2

    .line 1210
    .end local v4
    :cond_1
    nop

    .line 1212
    return v2

    .line 1206
    :catch_1
    move-exception v2

    .line 1208
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "isApkExist"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==2==divhee====isApkExist==isApkExist = true "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    return v3

    .line 1203
    .end local v2
    :catch_2
    move-exception v2

    .line 1204
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "isApkExist"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==1==divhee====isApkExist==isApkExist not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    return v3
.end method

.method private isApkExist(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "checkVersion"    # Z

    .line 1150
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1151
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 1152
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    .line 1154
    .local v2, "versionName":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    move-object v1, v5

    .line 1155
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 1162
    nop

    .line 1164
    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    .line 1165
    const-string v5, "\\."

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1166
    .local v5, "names":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x4

    if-lt v6, v7, :cond_1

    const-string v6, "9"

    const/4 v7, 0x3

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "9"

    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1167
    :cond_0
    return v4

    .line 1170
    .end local v5
    :cond_1
    const-string v4, "FotaUpdate"

    const-string v5, "isApkExist = true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    return v3

    .line 1159
    :catch_0
    move-exception v3

    .line 1160
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1161
    return v4

    .line 1156
    .end local v3
    :catch_1
    move-exception v3

    .line 1157
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "FotaUpdate"

    const-string v6, "isApkExist not found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    return v4
.end method

.method public static isUFS_Flash()Z
    .locals 2

    .line 1297
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "sys/class/block/sda"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1298
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1299
    .end local v0
    :catch_0
    move-exception v0

    .line 1300
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1302
    .end local v0
    const/4 v0, 0x0

    return v0
.end method

.method private static matchText([BILjava/lang/String;)Z
    .locals 5
    .param p0, "buffer"    # [B
    .param p1, "index"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 959
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 960
    .local v0, "N":I
    add-int v1, p1, v0

    array-length v2, p0

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 961
    return v3

    .line 963
    :cond_0
    move v1, v3

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 964
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_1

    .line 965
    return v3

    .line 963
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 968
    .end local v1
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private static readLineLong(Ljava/io/File;)J
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .line 1242
    const/4 v0, 0x0

    .line 1243
    .local v0, "br":Ljava/io/BufferedReader;
    const-wide/16 v1, 0x0

    .line 1245
    .local v1, "size":J
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v3

    .line 1246
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 1247
    .local v3, "tmp":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1248
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v1, v4

    .line 1255
    .end local v3
    :cond_0
    nop

    .line 1257
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1260
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    .line 1258
    :catch_0
    move-exception v3

    .line 1259
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3
    goto :goto_0

    .line 1255
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 1252
    :catch_1
    move-exception v3

    .line 1253
    .restart local v3
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1255
    .end local v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 1257
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1250
    :catch_2
    move-exception v3

    .line 1251
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1255
    .end local v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_1

    .line 1257
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 1262
    :cond_1
    :goto_1
    return-wide v1

    .line 1255
    :goto_2
    if-eqz v0, :cond_2

    .line 1257
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1260
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 1258
    :catch_3
    move-exception v4

    .line 1259
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 1260
    .end local v4
    :cond_2
    :goto_3
    throw v3
.end method

.method private static readTotalMem()J
    .locals 11

    .line 971
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 973
    .local v0, "mBuffer":[B
    const-wide/16 v1, 0x0

    .line 974
    .local v1, "memTotal":J
    const-wide/16 v3, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/proc/meminfo"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 975
    .local v5, "is":Ljava/io/FileInputStream;
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 976
    .local v6, "len":I
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 977
    array-length v7, v0

    .line 978
    .local v7, "BUFLEN":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_2

    cmp-long v9, v1, v3

    if-nez v9, :cond_2

    .line 979
    const-string v9, "MemTotal"

    invoke-static {v0, v8, v9}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->matchText([BILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 980
    add-int/lit8 v8, v8, 0x7

    .line 981
    invoke-static {v0, v8}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->extractMemValue([BI)J

    move-result-wide v9

    move-wide v1, v9

    .line 983
    :cond_0
    :goto_1
    if-ge v8, v7, :cond_1

    aget-byte v9, v0, v8

    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v10, 0xa

    if-eq v9, v10, :cond_1

    .line 984
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 978
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 987
    .end local v8
    :cond_2
    return-wide v1

    .line 990
    .end local v1
    .end local v5
    .end local v6
    .end local v7
    :catch_0
    move-exception v1

    .line 991
    .local v1, "e":Ljava/io/IOException;
    const-string v2, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=======divhee============readTotalMem======"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1
    goto :goto_2

    .line 988
    :catch_1
    move-exception v1

    .line 989
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=======divhee============readTotalMem==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    .end local v1
    nop

    .line 993
    :goto_2
    return-wide v3
.end method

.method private removePreferenceIfActivityMissing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 680
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreference(Ljava/lang/String;)Z

    .line 684
    :cond_0
    return-void
.end method

.method private removePreferenceIfBoolFalse(Ljava/lang/String;I)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 687
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreference(Ljava/lang/String;)Z

    .line 690
    :cond_0
    return-void
.end method

.method private removePreferenceIfPropertyMissing(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preferenceGroup"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "preference"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .line 668
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreference(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 675
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    .end local v0
    :cond_0
    :goto_0
    return-void
.end method

.method private sendFeedback()V
    .locals 3

    .line 1024
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/DeviceInfoUtils;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1025
    .local v0, "reporterPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    return-void

    .line 1028
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1029
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1031
    return-void
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 694
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 700
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12051a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 698
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 701
    .end local v0
    :goto_0
    return-void
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .line 1014
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1016
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12051a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1015
    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1014
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1018
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1017
    :catch_1
    move-exception v0

    .line 1020
    :goto_0
    nop

    .line 1021
    :goto_1
    return-void
.end method


# virtual methods
.method public getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1216
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1217
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 1219
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1220
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1223
    goto :goto_0

    .line 1221
    :catch_0
    move-exception v2

    .line 1222
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 1225
    .end local v2
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public getCpuInfoSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 370
    const v0, 0x7f120adb

    .line 372
    .local v0, "iResultResId":I
    :try_start_0
    const-string v1, "ro.board.platform"

    const-string v2, "unknow"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "cpuInfo":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0    # 0x505edde7
    const-string v3, "msm8998"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1    # 0x505edde5
    const-string v3, "msm8996"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2    # 0x505edd65
    const-string v3, "msm8952"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3    # 0x505edd44
    const-string v3, "msm8940"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_4    # 0x505edd2c
    const-string v3, "msm8937"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .end local v1
    goto :goto_1

    .line 388
    .restart local v1
    :pswitch_0    # 0x4
    const v0, 0x7f120add

    .end local v1
    goto :goto_1

    .line 385
    .restart local v1
    :pswitch_1    # 0x3
    const v0, 0x7f120adc

    .line 386
    goto :goto_1

    .line 382
    :pswitch_2    # 0x2
    const v0, 0x7f120ade

    .line 383
    goto :goto_1

    .line 379
    :pswitch_3    # 0x1
    const v0, 0x7f120adf

    .line 380
    goto :goto_1

    .line 376
    :pswitch_4    # 0x0
    const v0, 0x7f120ae0

    .line 377
    nop

    .line 392
    .end local v1
    :goto_1
    goto :goto_2

    .line 391
    :catch_0
    move-exception v1

    .line 393
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x505edd2c -> :sswitch_4
        0x505edd44 -> :sswitch_3
        0x505edd65 -> :sswitch_2
        0x505edde5 -> :sswitch_1
        0x505edde7 -> :sswitch_0

    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4    # 0x0
        :pswitch_3    # 0x1
        :pswitch_2    # 0x2
        :pswitch_1    # 0x3
        :pswitch_0    # 0x4
    .end packed-switch
.end method

.method public getHelpResource()I
    .locals 1

    .line 176
    const v0, 0x7f12069b

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 171
    const/16 v0, 0x28

    return v0
.end method

.method public initFotaUpdateActivity()V
    .locals 5

    .line 1114
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1115
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 1116
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com_dream_update_new_version"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1117
    .local v1, "iUpdateStatus":I
    const-string v2, "com.dream.ota.update"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1118
    const-string v2, "com.adups.fota"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1119
    const-string v2, "fota_update"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1120
    const-string v2, "fota_update"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    .line 1123
    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mFotaUpdate:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "com.adups.fota"

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 1124
    iget-object v2, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mFotaUpdate:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.adups.fota"

    const-string v4, "com.adups.fota.GoogleOtaClient"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1127
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mFotaUpdate:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "com.dream.ota.update"

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 1128
    iget-object v2, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mFotaUpdate:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.dream.ota.update"

    const-string v4, "com.dream.ota.update.UpdateActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1131
    .end local v1
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mFotaUpdate:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->remindOtaFotaNewVersion(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 1132
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 181
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 184
    .local v0, "act":Landroid/app/Activity;
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    .line 186
    const v1, 0x7f150048

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 188
    const-string v1, "firmware_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "firmware_version"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 191
    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getSecurityPatch()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "patch":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 193
    const-string v3, "security_patch"

    invoke-direct {p0, v3, v1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_0
    const-string v3, "security_patch"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreference(Ljava/lang/String;)Z

    .line 198
    :goto_0
    const-string v3, "baseband_version"

    const-string v4, "gsm.version.baseband"

    invoke-direct {p0, v3, v4}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v3, "device_model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getMsvSuffix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v3, "fcc_equipment_id"

    const-string v4, "ro.ril.fccid"

    invoke-direct {p0, v3, v4}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v3, "device_model"

    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->formatModelName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v3, "build_number"

    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->formatDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v3, "build_number"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 221
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getQGPVersionValue()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "mQGPVersion":Ljava/lang/String;
    const-string v4, "qgp_version"

    invoke-direct {p0, v4, v3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    if-nez v3, :cond_1

    .line 224
    const-string v4, "qgp_version"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreference(Ljava/lang/String;)Z

    .line 227
    :cond_1
    const-string v4, "kernel_version"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 228
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05004a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 227
    invoke-static {v0, v5}, Lcom/android/settingslib/DeviceInfoUtils;->getFormattedKernelVersion(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 229
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getMBNVersionValue()Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "mMbnVersion":Ljava/lang/String;
    const-string v5, "mbn_version"

    invoke-direct {p0, v5, v4}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    if-nez v4, :cond_2

    .line 232
    const-string v5, "mbn_version"

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreference(Ljava/lang/String;)Z

    .line 235
    :cond_2
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12053c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "status":Ljava/lang/String;
    const-string v6, "selinux_status"

    invoke-direct {p0, v6, v5}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .end local v5
    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v5

    if-nez v5, :cond_4

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12060c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 240
    .restart local v5
    const-string v6, "selinux_status"

    invoke-direct {p0, v6, v5}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v5
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "selinux_status"

    const-string v7, "ro.build.selinux"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "safetylegal"

    const-string v7, "ro.url.safetylegal"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "fcc_equipment_id"

    const-string v7, "ro.ril.fccid"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "baseband_version"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 263
    :cond_5
    invoke-static {v0}, Lcom/android/settingslib/DeviceInfoUtils;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "device_feedback"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 274
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    .line 276
    .local v5, "parentPreference":Landroid/support/v7/preference/PreferenceGroup;
    iget-object v6, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 277
    const-string v6, "system_update_settings"

    invoke-static {v0, v5, v6, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    goto :goto_2

    .line 282
    :cond_7
    const-string v6, "system_update_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreference(Ljava/lang/String;)Z

    .line 284
    :goto_2
    const-string v6, "system_update_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreference(Ljava/lang/String;)Z

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 288
    .local v6, "isRJILlayout":Z
    if-eqz v6, :cond_8

    .line 289
    const-string v7, "system_update_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreference(Ljava/lang/String;)Z

    .line 293
    :cond_8
    const-string v7, "additional_system_update_settings"

    const v8, 0x7f050004

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 297
    const-string v7, "manual"

    const v8, 0x7f050029

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 300
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f050032

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_a

    .line 303
    :cond_9
    const-string v8, "regulatory_info"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreference(Ljava/lang/String;)Z

    .line 306
    :cond_a
    const-string v8, "regulatory_info"

    const-string v10, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {p0, v8, v10}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreferenceIfActivityMissing(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v8, "safety_info"

    const-string v10, "android.settings.SHOW_SAFETY_AND_REGULATORY_INFO"

    invoke-direct {p0, v8, v10}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreferenceIfActivityMissing(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v8, "container"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreference(Ljava/lang/String;)Z

    .line 313
    const-string v8, "firmware_version"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreference(Ljava/lang/String;)Z

    .line 314
    const-string v8, "security_patch"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreference(Ljava/lang/String;)Z

    .line 315
    const-string v8, "baseband_version"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreference(Ljava/lang/String;)Z

    .line 317
    const-string v8, "pad_cpu_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getCpuInfoSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v8, v10}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v8, "os_version"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ro.product.os.version"

    const-string v12, "unknow"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v11, 0x7f1209c6

    invoke-virtual {p0, v11}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-array v2, v2, [Ljava/lang/Object;

    const-string v12, "ro.product.software.version"

    const-string v13, "Android"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v9

    invoke-static {v11, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v8, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v2, "software_version"

    const-string v8, "ro.product.readboy.software"

    const-string v10, "unknow"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v8}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v2, "hardware_version"

    const-string v8, "ro.product.hardware.version"

    const-string v10, "unknow"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v8}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-gtz v2, :cond_c

    .line 322
    :cond_b
    const-string v2, "hardware_version"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreference(Ljava/lang/String;)Z

    .line 324
    :cond_c
    const-string v2, "rom_type"

    const-string v8, "ro.product.storage"

    const-string v10, "unknow"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v8}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v2, "device_cache_size"

    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getRamFusionRomTotalSize()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v8}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v2, "device_memory_size"

    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getSDTotalSize()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v8}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v2, "fota_update"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mFotaUpdate:Landroid/support/v7/preference/PreferenceScreen;

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->initFotaUpdateActivity()V

    .line 335
    const-string v2, "com.dream.feedback"

    invoke-direct {p0, v0, v2, v9}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_d

    .line 336
    const-string v2, "user_feedback"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreference(Ljava/lang/String;)Z

    .line 340
    :cond_d
    const-wide/32 v8, 0x40000000

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->cmpRomLargerThanCanDisplay(J)Z

    move-result v2

    if-nez v2, :cond_e

    .line 341
    const-string v2, "device_cache_size"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreference(Ljava/lang/String;)Z

    .line 345
    :cond_e
    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->formatModelName()Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "deleteModelName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f

    const-string v8, "Readboy_C15"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 347
    const-string v8, "software_version"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreference(Ljava/lang/String;)Z

    .line 348
    const-string v8, "hardware_version"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->removePreference(Ljava/lang/String;)Z

    .line 352
    :cond_f
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 357
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 360
    .local v0, "loadview":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->updateDeviceSnAndReadboySn()V

    .line 362
    return-object v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 557
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 558
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "firmware_version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 559
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mHits:[J

    iget-object v4, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mHits:[J

    iget-object v5, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mHits:[J

    array-length v5, v5

    sub-int/2addr v5, v3

    invoke-static {v1, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 560
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mHits:[J

    iget-object v4, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mHits:[J

    array-length v4, v4

    sub-int/2addr v4, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    aput-wide v5, v1, v4

    .line 561
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mHits:[J

    aget-wide v3, v1, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x1f4

    sub-long/2addr v5, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_f

    .line 562
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    const-string v3, "no_fun"

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mFunDisallowedBySystem:Z

    if-nez v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 567
    :cond_0
    const-string v1, "DeviceInfoSettings"

    const-string v3, "Sorry, no fun for you!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return v2

    .line 571
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android"

    const-class v3, Lcom/android/internal/app/PlatLogoActivity;

    .line 573
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 572
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 578
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 576
    :catch_0
    move-exception v2

    .line 577
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "DeviceInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .end local v1
    .end local v2
    :goto_0
    goto/16 :goto_2

    .line 580
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "build_number"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 582
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 585
    :cond_3
    invoke-static {v0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 586
    return v3

    .line 589
    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    const-string v4, "no_debugging_features"

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 590
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mDebuggingFeaturesDisallowedBySystem:Z

    if-nez v1, :cond_5

    .line 592
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 595
    :cond_5
    return v3

    .line 598
    :cond_6
    iget v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v4, 0x5

    if-lez v1, :cond_8

    .line 599
    iget v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mDevHitCountdown:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mDevHitCountdown:I

    .line 600
    iget v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mDevHitCountdown:I

    if-nez v1, :cond_7

    .line 601
    invoke-static {v0, v3}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 602
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    const v2, 0x7f120ce8

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsApp;->showAppToastLong(I)V

    goto/16 :goto_2

    .line 604
    :cond_7
    iget v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v1, :cond_f

    iget v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mDevHitCountdown:I

    if-ge v1, v4, :cond_f

    .line 606
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100036

    iget v6, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mDevHitCountdown:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mDevHitCountdown:I

    .line 607
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    .line 606
    invoke-virtual {v4, v5, v6, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    goto/16 :goto_2

    .line 609
    :cond_8
    iget v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mDevHitCountdown:I

    if-gtz v1, :cond_f

    .line 610
    iget v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mHideDevHitCountdown:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mHideDevHitCountdown:I

    .line 611
    iget v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mHideDevHitCountdown:I

    const/16 v3, 0xa

    if-le v1, v3, :cond_a

    .line 612
    invoke-static {v0, v2}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 614
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    const v3, 0x7f120603

    invoke-virtual {v1, v3}, Lcom/android/settings/SettingsApp;->showAppToastLong(I)V

    .line 616
    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, -0x1

    goto :goto_1

    :cond_9
    const/4 v1, 0x7

    :goto_1
    iput v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mDevHitCountdown:I

    .line 617
    iput v2, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mHideDevHitCountdown:I

    goto/16 :goto_2

    .line 618
    :cond_a
    iget v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mHideDevHitCountdown:I

    if-le v1, v4, :cond_b

    .line 619
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    const v2, 0x7f120602

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsApp;->showAppToastLong(I)V

    goto :goto_2

    .line 621
    :cond_b
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    const v2, 0x7f120ce7

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsApp;->showAppToastLong(I)V

    goto :goto_2

    .line 624
    :cond_c
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "security_patch"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 625
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 627
    const-string v1, "DeviceInfoSettings"

    const-string v2, "Stop click action on security_patch: queryIntentActivities() returns empty"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return v3

    .line 631
    :cond_d
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_feedback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 632
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->sendFeedback()V

    goto :goto_2

    .line 633
    :cond_e
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "system_update_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 634
    const-string v1, "carrier_config"

    .line 635
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 636
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 637
    .local v2, "b":Landroid/os/PersistableBundle;
    if-eqz v2, :cond_f

    const-string v3, "ci_action_on_sys_update_bool"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 638
    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->ciActionOnSysUpdate(Landroid/os/PersistableBundle;)V

    .line 641
    .end local v1
    .end local v2
    :cond_f
    :goto_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 3

    .line 535
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 536
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 537
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 538
    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    :goto_0
    iput v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mDevHitCountdown:I

    .line 540
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mHideDevHitCountdown:I

    .line 541
    const-string v1, "no_fun"

    .line 542
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 541
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 543
    const-string v1, "no_fun"

    .line 544
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 543
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mFunDisallowedBySystem:Z

    .line 545
    const-string v1, "no_debugging_features"

    .line 546
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 545
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 547
    const-string v1, "no_debugging_features"

    .line 548
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 547
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mDebuggingFeaturesDisallowedBySystem:Z

    .line 551
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mFotaUpdate:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->remindOtaFotaNewVersion(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 553
    return-void
.end method

.method public readDeviceSN_InfoFromFWQ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "urlhost"    # Ljava/lang/String;

    .line 1598
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsEwcCommonUtils;->checkAuthToken()V

    .line 1600
    move-object v0, p2

    .line 1601
    .local v0, "newsPath_url":Ljava/lang/String;
    const-string v1, "?number=%s&sn=%s&device_id=%s&t=%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1602
    invoke-static {}, Lcom/android/settings/SettingsEwcCommonUtils;->getSystemTime()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/android/settings/SettingsEwcCommonUtils;->getDeviceSN(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    .line 1603
    invoke-static {p1}, Lcom/android/settings/SettingsEwcCommonUtils;->getDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    .line 1604
    invoke-static {}, Lcom/android/settings/SettingsEwcCommonUtils;->getSystemTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    .line 1601
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1607
    .local v1, "param":Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1608
    .local v2, "url":Ljava/net/URL;
    const-string v3, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "======divhee=======readCameraInfoFromFWQ===="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 1611
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const-string v5, "GET"

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1612
    const/16 v5, 0x2710

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1614
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 1615
    .local v5, "code":I
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_4

    .line 1617
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Lcom/android/settings/SettingsCameraConfigureIntentService;->streamToStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1618
    .local v6, "result":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/AutoPreInstallFtpListApkService;->unicodeToCn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 1619
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v7, :cond_3

    .line 1621
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1622
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "msg"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "ok"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "data"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "msg"

    .line 1623
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "success"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "ok"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v4, :cond_1

    .line 1624
    const-string v4, "data"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1625
    .local v4, "dataObj":Lorg/json/JSONObject;
    const-string v8, "barcode"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1626
    const-string v8, "barcode"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1627
    .local v8, "barcode":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1628
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "readboy_pad_device_serial_number"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1629
    return-object v8

    .line 1632
    .end local v4
    .end local v8
    :cond_0
    goto :goto_0

    :cond_1
    const-string v4, "msg"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "ok"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "ok"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 1633
    const-string v4, "msg"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1634
    .local v4, "errorMsg":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v8, :cond_2

    .line 1635
    return-object v4

    .line 1639
    .end local v4
    .end local v7
    :cond_2
    :goto_0
    goto :goto_1

    .line 1638
    :catch_0
    move-exception v4

    .line 1641
    :cond_3
    :goto_1
    :try_start_2
    const-string v4, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "=========divhee======readDeviceSNInfoFromFWQ===sucess===="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    .end local v6
    goto :goto_2

    .line 1643
    :cond_4
    const-string v4, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "=========divhee======readDeviceSNInfoFromFWQ===fail===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    goto :goto_3

    .line 1645
    :catch_1
    move-exception v0

    .line 1646
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1649
    .end local v0
    :goto_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->netFwqNotFindDeviceSN:Ljava/lang/String;

    return-object v0
.end method

.method public remindOtaFotaNewVersion(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 1143
    if-eqz p1, :cond_1

    .line 1144
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getOtaFotaNewVersion(Landroid/content/Context;)I

    move-result v0

    .line 1145
    .local v0, "iNewVersion":I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08028c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1147
    .end local v0
    :cond_1
    return-void
.end method

.method public updateDeviceSnAndReadboySn()V
    .locals 4

    .line 1568
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1571
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120b99

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->netFwqNotFindDeviceSN:Ljava/lang/String;

    .line 1572
    const-string v1, "readboy_pad_device_serial_number"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mPadDeviceSNPref:Landroid/support/v7/preference/Preference;

    .line 1573
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mPadDeviceSNPref:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_2

    .line 1574
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "readboy_pad_device_serial_number"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1575
    .local v1, "netSnOtaVer":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1576
    new-instance v2, Lcom/android/settings/deviceinfo/DeviceInfoSettings$MyUpdateDeviceSnInfoTask;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings$MyUpdateDeviceSnInfoTask;-><init>(Lcom/android/settings/deviceinfo/DeviceInfoSettings;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings$MyUpdateDeviceSnInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1578
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1579
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->netFwqNotFindDeviceSN:Ljava/lang/String;

    .line 1581
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mPadDeviceSNPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1586
    .end local v1
    :cond_2
    const-string v1, "serial_number"

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    return-void
.end method
