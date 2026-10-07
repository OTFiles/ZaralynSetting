.class public Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TrustAgentListPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;


# static fields
.field private static final MY_USER_ID:I

.field static final PREF_KEY_SECURITY_CATEGORY:Ljava/lang/String; = "security_category"

.field static final PREF_KEY_TRUST_AGENT:Ljava/lang/String; = "trust_agent"


# instance fields
.field private final mHost:Lcom/android/settings/security/SecuritySettings;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecurityCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private final mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lcom/android/settings/security/SecuritySettings;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v0

    .line 72
    .local v0, "provider":Lcom/android/settings/security/SecurityFeatureProvider;
    iput-object p2, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 73
    invoke-interface {v0, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 74
    invoke-interface {v0}, Lcom/android/settings/security/SecurityFeatureProvider;->getTrustAgentManager()Lcom/android/settings/security/trustagent/TrustAgentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    .line 75
    if-eqz p3, :cond_0

    .line 76
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 78
    :cond_0
    return-void
.end method

.method private updateTrustAgents()V
    .locals 7

    .line 137
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mSecurityCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-nez v0, :cond_0

    .line 138
    return-void

    .line 142
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mSecurityCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string v1, "trust_agent"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 143
    .local v0, "oldAgent":Landroid/support/v7/preference/Preference;
    if-nez v0, :cond_5

    .line 144
    nop

    .line 150
    .end local v0
    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 155
    .local v0, "hasSecurity":Z
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 156
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object v1

    .line 157
    .local v1, "agents":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;>;"
    if-nez v1, :cond_2

    .line 158
    return-void

    .line 160
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    .line 161
    .local v3, "agent":Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;
    new-instance v4, Lcom/android/settingslib/RestrictedPreference;

    iget-object v5, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mSecurityCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 162
    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 163
    .local v4, "trustAgentPreference":Lcom/android/settingslib/RestrictedPreference;
    const-string v5, "trust_agent"

    invoke-virtual {v4, v5}, Lcom/android/settingslib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    .line 164
    iget-object v5, v3, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settingslib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v5, v3, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    .line 168
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 167
    invoke-virtual {v4, v5}, Lcom/android/settingslib/RestrictedPreference;->setIntent(Landroid/content/Intent;)V

    .line 169
    iget-object v5, v3, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v4, v5}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 170
    invoke-virtual {v4}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v0, :cond_3

    .line 171
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 172
    const v5, 0x7f12053d

    invoke-virtual {v4, v5}, Lcom/android/settingslib/RestrictedPreference;->setSummary(I)V

    .line 175
    :cond_3
    iget-object v5, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mSecurityCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 176
    .end local v3
    .end local v4
    goto :goto_1

    .line 177
    :cond_4
    return-void

    .line 146
    .end local v1
    .local v0, "oldAgent":Landroid/support/v7/preference/Preference;
    :cond_5
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mSecurityCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 148
    .end local v0
    goto/16 :goto_0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 92
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 93
    const-string v0, "security_category"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mSecurityCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 94
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->updateTrustAgents()V

    .line 95
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "trust_agent"

    return-object v0
.end method

.method public handleActivityResult(II)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I

    .line 180
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/security/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 185
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 187
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 114
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    .line 117
    :cond_0
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 118
    invoke-virtual {v1}, Lcom/android/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 119
    .local v0, "helper":Lcom/android/settings/password/ChooseLockSettingsHelper;
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 120
    const/16 v1, 0x7e

    .line 121
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v1

    .line 123
    .local v1, "confirmationLaunched":Z
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    iget-object v3, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/settings/security/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 126
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 128
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public isAvailable()Z
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 99
    if-eqz p1, :cond_0

    const-string v0, "trust_agent_click_intent"

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 103
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->updateTrustAgents()V

    .line 134
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 107
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 110
    :cond_0
    return-void
.end method
