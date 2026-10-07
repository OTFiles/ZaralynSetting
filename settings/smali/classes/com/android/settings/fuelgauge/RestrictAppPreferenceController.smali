.class public Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "RestrictAppPreferenceController.java"


# static fields
.field static final KEY_RESTRICT_APP:Ljava/lang/String; = "restricted_app"


# instance fields
.field mAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mPreferenceFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    const-string v0, "restricted_app"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 52
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 1
    .param p1, "preferenceFragment"    # Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 56
    invoke-virtual {p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object p1, p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->mPreferenceFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 58
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->mPreferenceFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->mAppInfos:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->startRestrictedAppDetails(Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/util/List;)V

    .line 85
    const/4 v0, 0x1

    return v0

    .line 88
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipUtils;->getRestrictedAppsList(Landroid/app/AppOpsManager;Landroid/os/UserManager;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->mAppInfos:Ljava/util/List;

    .line 71
    iget-object v0, p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->mAppInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 73
    .local v0, "num":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 74
    iget-object v3, p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100030

    new-array v2, v2, [Ljava/lang/Object;

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    .line 75
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method
