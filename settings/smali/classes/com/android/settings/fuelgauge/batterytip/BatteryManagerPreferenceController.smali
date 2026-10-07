.class public Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BatteryManagerPreferenceController.java"


# static fields
.field private static final KEY_BATTERY_MANAGER:Ljava/lang/String; = "smart_battery_manager"

.field private static final ON:I = 0x1


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    const-string v0, "smart_battery_manager"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 45
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 46
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 47
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipUtils;->getRestrictedAppsList(Landroid/app/AppOpsManager;Landroid/os/UserManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 58
    .local v0, "num":I
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isSmartBatterySupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string v1, "adaptive_battery_management_enabled"

    goto :goto_0

    .line 60
    :cond_0
    const-string v1, "app_auto_restriction_enabled"

    .line 61
    .local v1, "setting":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move v2, v3

    .line 64
    .local v2, "featureOn":Z
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->updateSummary(Landroid/support/v7/preference/Preference;ZI)V

    .line 65
    return-void
.end method

.method updateSummary(Landroid/support/v7/preference/Preference;ZI)V
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "featureOn"    # Z
    .param p3, "num"    # I

    .line 69
    if-lez p3, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100009

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 71
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 70
    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :cond_0
    if-eqz p2, :cond_1

    .line 73
    const v0, 0x7f1201ff

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 75
    :cond_1
    const v0, 0x7f1201fe

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 77
    :goto_0
    return-void
.end method
