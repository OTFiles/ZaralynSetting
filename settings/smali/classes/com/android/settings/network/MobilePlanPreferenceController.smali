.class public Lcom/android/settings/network/MobilePlanPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "MobilePlanPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;
    }
.end annotation


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private final mHost:Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;

.field private final mIsSecondaryUser:Z

.field private mMobilePlanDialogMessage:Ljava/lang/String;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;

    .line 74
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 75
    iput-object p2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mHost:Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;

    .line 76
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    .line 77
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mTm:Landroid/telephony/TelephonyManager;

    .line 78
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 79
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mIsSecondaryUser:Z

    .line 80
    return-void
.end method

.method private onManageMobilePlanClick()V
    .locals 10

    .line 129
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 130
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 131
    .local v1, "ni":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 133
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CARRIER_SETUP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v2, "provisioningIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mTm:Landroid/telephony/TelephonyManager;

    .line 135
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    .line 136
    .local v3, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 137
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eq v6, v5, :cond_0

    .line 138
    const-string v5, "MobilePlanPrefContr"

    const-string v6, "Multiple matching carrier apps found, launching the first."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v4, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 142
    return-void

    .line 146
    :cond_1
    iget-object v6, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 148
    const-string v4, "android.intent.action.MAIN"

    const-string v5, "android.intent.category.APP_BROWSER"

    invoke-static {v4, v5}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 150
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 151
    const/high16 v5, 0x10400000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 153
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 156
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v5

    .line 155
    .local v5, "e":Landroid/content/ActivityNotFoundException;
    const-string v7, "MobilePlanPrefContr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onManageMobilePlanClick: startActivity failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v4
    .end local v5
    :goto_0
    goto :goto_1

    .line 159
    :cond_2
    iget-object v7, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, "operatorName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const v9, 0x7f1208db

    if-eqz v8, :cond_4

    .line 163
    iget-object v8, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    .line 164
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 165
    const v4, 0x7f1208dc

    .line 166
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    goto :goto_1

    .line 168
    :cond_3
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v7, v5, v4

    invoke-virtual {v0, v9, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    goto :goto_1

    .line 172
    :cond_4
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v7, v5, v4

    .line 173
    invoke-virtual {v0, v9, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    .line 176
    .end local v2
    .end local v3
    .end local v6
    .end local v7
    :goto_1
    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-nez v2, :cond_6

    .line 178
    const v2, 0x7f1208da

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    goto :goto_2

    .line 181
    :cond_6
    const v2, 0x7f1208d6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    .line 183
    :goto_2
    iget-object v2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 184
    const-string v2, "MobilePlanPrefContr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onManageMobilePlanClick: message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mHost:Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;

    if-eqz v2, :cond_7

    .line 186
    iget-object v2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mHost:Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;

    invoke-interface {v2}, Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;->showMobilePlanMessageDialog()V

    goto :goto_3

    .line 188
    :cond_7
    const-string v2, "MobilePlanPrefContr"

    const-string v3, "Missing host fragment, cannot show message dialog."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public getMobilePlanDialogMessage()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 125
    const-string v0, "manage_mobile_plan"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 84
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mHost:Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;

    if-eqz v0, :cond_0

    const-string v0, "manage_mobile_plan"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lcom/android/settings/network/MobilePlanPreferenceController;->onManageMobilePlanClick()V

    .line 88
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 6

    .line 116
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 118
    .local v0, "isPrefAllowedOnDevice":Z
    iget-boolean v1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mIsSecondaryUser:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    .line 119
    invoke-static {v1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    const-string v4, "no_config_mobile_networks"

    .line 120
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 121
    .local v1, "isPrefAllowedForUser":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mIsAvailable:Z

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    move v2, v3

    nop

    :cond_1
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 93
    if-eqz p1, :cond_0

    .line 94
    const-string v0, "mManageMobilePlanMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    .line 96
    :cond_0
    const-string v0, "MobilePlanPrefContr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: mMobilePlanDialogMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 101
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method

.method public setMobilePlanDialogMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "messasge"    # Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    .line 112
    return-void
.end method
