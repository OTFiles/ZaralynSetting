.class public Lcom/android/settings/security/trustagent/TrustAgentSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TrustAgentSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;
    }
.end annotation


# instance fields
.field private final mActiveAgents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableAgents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 52
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    return-void
.end method

.method private findAvailableTrustAgents()Landroid/util/ArrayMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;",
            ">;"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 158
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.trust.TrustAgentService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, "trustAgentIntent":Landroid/content/Intent;
    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 162
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 163
    .local v3, "agents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 164
    .local v4, "count":I
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 165
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 166
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 167
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v7, :cond_0

    .line 168
    goto :goto_1

    .line 170
    :cond_0
    iget-object v7, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    invoke-virtual {v7, v6, v0}, Lcom/android/settings/security/trustagent/TrustAgentManager;->shouldProvideTrust(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 171
    goto :goto_1

    .line 173
    :cond_1
    iget-object v7, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    invoke-virtual {v7, v6}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v7

    .line 174
    .local v7, "name":Landroid/content/ComponentName;
    new-instance v8, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;

    invoke-direct {v8}, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;-><init>()V

    .line 175
    .local v8, "agentInfo":Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;
    invoke-virtual {v6, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v8, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->label:Ljava/lang/CharSequence;

    .line 176
    invoke-virtual {v6, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v8, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 177
    iput-object v7, v8, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    .line 178
    invoke-virtual {v3, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .end local v6
    .end local v7
    .end local v8
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 180
    .end local v5
    :cond_2
    return-object v3
.end method

.method private loadActiveAgents()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 145
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 144
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v0

    .line 146
    .local v0, "activeTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 149
    :cond_0
    return-void
.end method

.method private saveActiveAgents()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    .line 153
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 152
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    .line 154
    return-void
.end method

.method private updateAgents()V
    .locals 11

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 105
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->findAvailableTrustAgents()Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_1

    .line 109
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->loadActiveAgents()V

    .line 112
    nop

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "trust_agents"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    .line 114
    .local v1, "category":Landroid/support/v7/preference/PreferenceGroup;
    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 116
    const/16 v2, 0x10

    .line 117
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 116
    invoke-static {v0, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 119
    .local v2, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v3, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 120
    .local v3, "count":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 121
    iget-object v6, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;

    .line 122
    .local v6, "agent":Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;
    new-instance v7, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 124
    .local v7, "preference":Lcom/android/settingslib/RestrictedSwitchPreference;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/settingslib/RestrictedSwitchPreference;->useAdminDisabledSummary(Z)V

    .line 125
    iput-object v7, v6, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->preference:Landroid/support/v14/preference/SwitchPreference;

    .line 126
    invoke-virtual {v7, v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setPersistent(Z)V

    .line 127
    iget-object v8, v6, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Lcom/android/settingslib/RestrictedSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v8, v6, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Lcom/android/settingslib/RestrictedSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-virtual {v7, v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setPersistent(Z)V

    .line 130
    invoke-virtual {v7, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    iget-object v8, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v9, v6, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 133
    if-eqz v2, :cond_2

    iget-object v8, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    iget-object v10, v6, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    .line 134
    invoke-virtual {v8, v9, v10}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_2

    .line 135
    invoke-virtual {v7, v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 136
    invoke-virtual {v7, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 139
    :cond_2
    iget-object v8, v6, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->preference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v8}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 120
    .end local v6
    .end local v7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 141
    .end local v5
    :cond_3
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 83
    const v0, 0x7f1206db

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 78
    const/16 v0, 0x5b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 90
    nop

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Lcom/android/settings/security/SecurityFeatureProvider;->getTrustAgentManager()Lcom/android/settings/security/trustagent/TrustAgentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    .line 94
    const v0, 0x7f1500b1

    invoke-virtual {p0, v0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->addPreferencesFromResource(I)V

    .line 95
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 185
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 187
    .local v0, "count":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 188
    iget-object v3, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;

    .line 189
    .local v3, "agent":Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;
    iget-object v4, v3, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->preference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v4, p1, :cond_2

    .line 190
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v4, v3, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v4, v3, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v4, v3, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 197
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->saveActiveAgents()V

    .line 198
    const/4 v1, 0x1

    return v1

    .line 187
    .end local v3
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .end local v0
    .end local v2
    :cond_3
    return v1
.end method

.method public onResume()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 99
    const-string v0, "dummy_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->removePreference(Ljava/lang/String;)Z

    .line 100
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->updateAgents()V

    .line 101
    return-void
.end method
