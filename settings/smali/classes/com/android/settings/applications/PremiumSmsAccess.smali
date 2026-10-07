.class public Lcom/android/settings/applications/PremiumSmsAccess;
.super Lcom/android/settings/notification/EmptyTextSettings;
.source "PremiumSmsAccess.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;
    }
.end annotation


# instance fields
.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/notification/EmptyTextSettings;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/PremiumSmsAccess;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/PremiumSmsAccess;

    .line 44
    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    return-object v0
.end method

.method private update()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    sget-object v1, Lcom/android/settings/applications/AppStateSmsPremBridge;->FILTER_APP_PREMIUM_SMS:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/PremiumSmsAccess;->updatePrefs(Ljava/util/ArrayList;)V

    .line 147
    return-void
.end method

.method private updatePrefs(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 124
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    if-nez p1, :cond_0

    return-void

    .line 125
    :cond_0
    const v0, 0x7f120a33

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/PremiumSmsAccess;->setEmptyText(I)V

    .line 126
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/PremiumSmsAccess;->setLoading(ZZ)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 128
    .local v2, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 129
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 131
    nop

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 132
    new-instance v1, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;

    .line 133
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;-><init>(Lcom/android/settings/applications/PremiumSmsAccess;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)V

    .line 134
    .local v1, "smsPreference":Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;
    invoke-virtual {v1, p0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 135
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 131
    .end local v1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v0
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    new-instance v0, Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, "footer":Lcom/android/settingslib/widget/FooterPreference;
    const v1, 0x7f120a34

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 140
    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 142
    .end local v0
    :cond_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 90
    const/16 v0, 0x184

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 85
    const v0, 0x7f15008a

    return v0
.end method

.method logSpecialPermissionChange(ILjava/lang/String;)V
    .locals 4
    .param p1, "smsState"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "category":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 113
    :pswitch_0    # 0x3
    const/16 v0, 0x30c

    goto :goto_0

    .line 110
    :pswitch_1    # 0x2
    const/16 v0, 0x30b

    .line 111
    goto :goto_0

    .line 107
    :pswitch_2    # 0x1
    const/16 v0, 0x30a

    .line 108
    nop

    .line 117
    :goto_0
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    .line 118
    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 121
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method public onAllSizesComputed()V
    .locals 0

    .line 182
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/notification/EmptyTextSettings;->onCreate(Landroid/os/Bundle;)V

    .line 53
    nop

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 53
    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 55
    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroid/arch/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 56
    new-instance v0, Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/applications/AppStateSmsPremBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateSmsPremBridge;->release()V

    .line 80
    invoke-super {p0}, Lcom/android/settings/notification/EmptyTextSettings;->onDestroy()V

    .line 81
    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->update()V

    .line 152
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .line 187
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .line 192
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 172
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .line 167
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 177
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateSmsPremBridge;->pause()V

    .line 74
    invoke-super {p0}, Lcom/android/settings/notification/EmptyTextSettings;->onPause()V

    .line 75
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 95
    move-object v0, p1

    check-cast v0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;

    .line 96
    .local v0, "pref":Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 97
    .local v1, "smsState":I
    invoke-static {v0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->access$000(Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/PremiumSmsAccess;->logSpecialPermissionChange(ILjava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-static {v0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->access$000(Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/applications/AppStateSmsPremBridge;->setSmsState(Ljava/lang/String;I)V

    .line 99
    const/4 v2, 0x1

    return v2
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-direct {p0, p1}, Lcom/android/settings/applications/PremiumSmsAccess;->updatePrefs(Ljava/util/ArrayList;)V

    .line 157
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcom/android/settings/notification/EmptyTextSettings;->onResume()V

    .line 68
    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateSmsPremBridge;->resume()V

    .line 69
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .line 162
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/PremiumSmsAccess;->setLoading(ZZ)V

    .line 63
    return-void
.end method
