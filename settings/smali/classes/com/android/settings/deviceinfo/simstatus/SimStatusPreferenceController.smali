.class public Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractSimStatusImeiInfoPreferenceController;
.source "SimStatusPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mFragment:Landroid/app/Fragment;

.field private final mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settingslib/deviceinfo/AbstractSimStatusImeiInfoPreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mPreferenceList:Ljava/util/List;

    .line 49
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 50
    const-string v0, "telephony_subscription_service"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 52
    iput-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 54
    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 55
    return-void
.end method

.method private getCarrierName(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "simSlot"    # I

    .line 111
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 112
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 113
    .local v0, "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_1

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 115
    .local v2, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 116
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 118
    .end local v2
    :cond_0
    goto :goto_0

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f12051c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private getPreferenceTitle(I)Ljava/lang/String;
    .locals 5
    .param p1, "simSlot"    # I

    .line 105
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120d41

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x1

    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 105
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120d40

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0
.end method


# virtual methods
.method createNewPreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 125
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-direct {v0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 6
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 64
    invoke-super {p0, p1}, Lcom/android/settingslib/deviceinfo/AbstractSimStatusImeiInfoPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 66
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v1

    .line 74
    .local v1, "simStatusOrder":I
    const/4 v2, 0x1

    .local v2, "simSlotNumber":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 76
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->createNewPreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 77
    .local v3, "multiSimPreference":Landroid/support/v7/preference/Preference;
    add-int v4, v1, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim_status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 80
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v2
    :cond_1
    return-void

    .line 67
    .end local v1
    :cond_2
    :goto_1
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "sim_status"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 95
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 96
    .local v0, "simSlot":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 97
    const/4 v1, 0x0

    return v1

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getPreferenceTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    .line 101
    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 86
    const/4 v0, 0x0

    .local v0, "simSlotNumber":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 88
    .local v1, "simStatusPreference":Landroid/support/v7/preference/Preference;
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getPreferenceTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getCarrierName(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    .end local v1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v0
    :cond_0
    return-void
.end method
