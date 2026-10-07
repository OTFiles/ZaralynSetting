.class public Lcom/android/settings/sim/SimSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimSettings$SimPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallState:[I

.field private mContext:Landroid/content/Context;

.field private mNumSlots:I

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneCount:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mSelectableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSimCards:Landroid/support/v7/preference/PreferenceScreen;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 336
    new-instance v0, Lcom/android/settings/sim/SimSettings$3;

    invoke-direct {v0}, Lcom/android/settings/sim/SimSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    const-string v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 67
    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 68
    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 69
    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    .line 74
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    .line 75
    iget v0, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    .line 76
    iget v0, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    new-array v0, v0, [Landroid/telephony/PhoneStateListener;

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 104
    new-instance v0, Lcom/android/settings/sim/SimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$1;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .line 49
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSubscriptions()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/sim/SimSettings;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .line 49
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .line 49
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # Landroid/telephony/SubscriptionInfo;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;

    .line 324
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 325
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 326
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .line 244
    move v0, p1

    .line 245
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/settings/sim/SimSettings$2;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/android/settings/sim/SimSettings$2;-><init>(Lcom/android/settings/sim/SimSettings;Ljava/lang/Integer;I)V

    aput-object v2, v1, p1

    .line 253
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, p1

    return-object v1
.end method

.method private isCallStateIdle()Z
    .locals 4

    .line 355
    const/4 v0, 0x1

    .line 356
    .local v0, "callStateIdle":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 357
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 358
    const/4 v0, 0x0

    .line 356
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    .end local v1
    :cond_1
    const-string v1, "SimSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCallStateIdle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return v0
.end method

.method private updateActivitesCategory()V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    .line 155
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCallValues()V

    .line 156
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSmsValues()V

    .line 157
    return-void
.end method

.method private updateAllOptions()V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimSlotValues()V

    .line 140
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    .line 141
    return-void
.end method

.method private updateCallValues()V
    .locals 6

    .line 195
    const-string v0, "sim_calls"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 196
    .local v0, "simPref":Landroid/support/v7/preference/Preference;
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 197
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    nop

    .line 198
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 199
    .local v2, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    nop

    .line 200
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    .line 202
    .local v3, "allPhoneAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    const v4, 0x7f120352

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 203
    if-nez v2, :cond_0

    .line 204
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120d03

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {v1, v2}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 203
    :goto_0
    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 206
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 207
    return-void
.end method

.method private updateCellularDataValues()V
    .locals 7

    .line 175
    const-string v0, "sim_cellular_data"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 176
    .local v0, "simPref":Landroid/support/v7/preference/Preference;
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 177
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    const v2, 0x7f120386

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->isCallStateIdle()Z

    move-result v2

    .line 181
    .local v2, "callStateIdle":Z
    const-string v3, "ril.cdma.inecmmode"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 183
    .local v3, "ecbMode":Z
    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_0

    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    move v4, v5

    nop

    :cond_0
    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 187
    :cond_1
    if-nez v1, :cond_3

    .line 188
    const v6, 0x7f120d39

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 190
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v5, :cond_2

    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    move v4, v5

    nop

    :cond_2
    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 192
    :cond_3
    :goto_0
    return-void
.end method

.method private updateSimSlotValues()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 145
    .local v0, "prefSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 146
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 147
    .local v2, "pref":Landroid/support/v7/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    .line 148
    move-object v3, v2

    check-cast v3, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {v3}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    .line 145
    .end local v2
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v1
    :cond_1
    return-void
.end method

.method private updateSmsValues()V
    .locals 5

    .line 160
    const-string v0, "sim_sms"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 161
    .local v0, "simPref":Landroid/support/v7/preference/Preference;
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 162
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    const v2, 0x7f120d50

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 165
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    move v2, v3

    nop

    :cond_0
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 168
    :cond_1
    if-nez v1, :cond_3

    .line 169
    const v4, 0x7f120d39

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 170
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 172
    :cond_3
    :goto_0
    return-void
.end method

.method private updateSubscriptions()V
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 115
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v1, v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 117
    .local v2, "pref":Landroid/support/v7/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 115
    .end local v2
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1
    :cond_1
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 122
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 124
    nop

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v0, v1, :cond_3

    .line 125
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 126
    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 127
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    new-instance v2, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/android/settings/sim/SimSettings$SimPreference;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V

    .line 128
    .local v2, "simPreference":Lcom/android/settings/sim/SimSettings$SimPreference;
    iget v3, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/android/settings/sim/SimSettings$SimPreference;->setOrder(I)V

    .line 129
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 130
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    if-eqz v1, :cond_2

    .line 132
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v1
    .end local v2
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    .end local v0
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    .line 136
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 84
    const/16 v0, 0x58

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 93
    nop

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 95
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const v1, 0x7f1500a0

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings;->addPreferencesFromResource(I)V

    .line 97
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    iput v1, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    .line 98
    const-string v1, "sim_cards"

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/sim/SimSelectNotification;->cancelNotification(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method public onPause()V
    .locals 5

    .line 228
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 229
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 230
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 231
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    if-ge v2, v3, :cond_1

    .line 232
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 234
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 231
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    .end local v2
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 258
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    .line 259
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 262
    instance-of v2, p1, Lcom/android/settings/sim/SimSettings$SimPreference;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 263
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v2, "newIntent":Landroid/content/Intent;
    const-string v4, "slot_id"

    move-object v5, p1

    check-cast v5, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-static {v5}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$300(Lcom/android/settings/sim/SimSettings$SimPreference;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->startActivity(Landroid/content/Intent;)V

    .line 266
    .end local v2
    goto :goto_0

    :cond_0
    const-string v2, "sim_cellular_data"

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 267
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 269
    :cond_1
    const-string v2, "sim_calls"

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 270
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 272
    :cond_2
    const-string v2, "sim_sms"

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-ne v2, p1, :cond_3

    .line 273
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 277
    :cond_3
    :goto_0
    return v3
.end method

.method public onResume()V
    .locals 5

    .line 211
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 212
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 213
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSubscriptions()V

    .line 214
    nop

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 216
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 217
    const-string v1, "SimSettings"

    const-string v2, "Register for call state change"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    if-ge v1, v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 220
    .local v2, "subId":I
    invoke-direct {p0, v1, v2}, Lcom/android/settings/sim/SimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 218
    .end local v2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v1
    :cond_0
    return-void
.end method
